using Ko1eca.DB;
using System;
using System.IO;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using System.Collections.ObjectModel;
using Ko1eca.ReservationViewModel;
using static Ko1eca.Global.GlobalVariables;
using static Ko1eca.Global.GlobalMethods;
using Ko1eca.Pages;
using Plugin.Messaging;
using Xamarin.Essentials;

namespace Ko1eca
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class Reservations : ContentPage
    {
        private static DatabaseContext _databaseContext;

        public Reservations()
        {
            InitializeComponent();

            
            _databaseContext = new DatabaseContext(Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData), "Ko1eca.db3"));

            dateNameLabel.Text = dateName;
        }

        protected override void OnAppearing()
        {
            BindingContext = null;
            var dates = _databaseContext.GetDate(dateName);

            var ReservationItems = new ObservableCollection<ReservationModel>();

            foreach (var date in dates)
            {
                var resItem = new ReservationModel
                {
                    TimeRangeName = _databaseContext.GetRangeName(date.TimeRangeId),
                    Status = date.Status,
                    FullName = date.FullName,
                    DateName = dateName,
                    RangeId = date.TimeRangeId,
                    PhoneNumber = date.PhoneNumber,
                };

                ReservationItems.Add(resItem);
            }
            BindingContext = ReservationItems;
        }

        private async void OnFrameTapped(object sender, EventArgs e)
        {
            var frame = (Frame)sender;
            var reservationModel = frame.BindingContext as ReservationModel;

            var dateString = reservationModel.DateName + " " +  reservationModel.TimeRangeName.Split('-')[0];

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

        private async void OnAddClicked(object sender, EventArgs e)
        {
            await Navigation.PushModalAsync(new NewRange());
        }

        private void OnPhoneClick(object sender, EventArgs e)
        {


            var button = sender as ImageButton;
            string phoneNumber = button?.ClassId;

            var phoneDialer = CrossMessaging.Current.PhoneDialer;
            if (phoneDialer.CanMakePhoneCall && phoneNumber != null)
                phoneDialer.MakePhoneCall(phoneNumber);
        }
    }

}