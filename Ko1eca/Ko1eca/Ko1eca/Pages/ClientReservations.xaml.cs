using Ko1eca.DB;
using Ko1eca.ReservationViewModel;
using System;
using System.Collections.ObjectModel;
using System.IO;
using static Ko1eca.Global.GlobalVariables;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using static Ko1eca.Global.GlobalMethods;

namespace Ko1eca
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class ClientReservations : ContentPage
	{
        private static DatabaseContext _databaseContext;
        public ClientReservations()
		{
			InitializeComponent ();

            _databaseContext = new DatabaseContext(Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData), "Ko1eca.db3"));
		}

        protected override void OnAppearing()
        {
            ObservableCollection<ReservationModel> reservations = new ObservableCollection<ReservationModel>();

            var resItems = _databaseContext.GetReservationsByClient(cName);



            foreach (var res in resItems)
            {
                var reservation = new ReservationModel
                {
                    FullName = res.FullName,
                    DateName = res.DateOfReservationId,
                    TimeRangeName = _databaseContext.GetRangeName(res.TimeRangeId),
                    RangeId = res.TimeRangeId,
                    Status = res.Status,
                };

                reservations.Add(reservation);
            }

            if(reservations.Count > 0)
            {
                BindingContext = reservations;
            }
            else
            {
                BindingContext = null;

            }
        }

        private async void OnFrameTapped(object sender, EventArgs e)
        {
            var frame = (Frame)sender;
            var reservationModel = frame.BindingContext as ReservationModel;

            var dateString = reservationModel.DateName + " " + reservationModel.TimeRangeName.Split('-')[0];

            if (TryParseDateTime(dateString, out DateTime dateTime))
            {
                if (dateTime < DateTime.Now)
                {
                    await DisplayAlert("Минала дата", "Не може да редактирате изминали дати!", "OK");
                }
                else
                {
                    await Navigation.PushModalAsync(new ReseravationForm(reservationModel));

                }
            }
        }

        
    }
}