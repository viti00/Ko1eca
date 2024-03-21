using System;
using System.Collections.Generic;
using static Ko1eca.Global.GlobalVariables;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Ko1eca.DB;
using System.IO;

namespace Ko1eca.Pages
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class NewRange : ContentPage
    {
        private static DatabaseContext _databaseContext;
        public NewRange()
        {
            InitializeComponent();

            _databaseContext = new DatabaseContext(Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData), "Ko1eca.db3"));


            List<int> freeTimeRanges = _databaseContext.GetAvailableTimeRanges();

            Picker timeRangesPicker = new Picker
            {
                Title = "Изберете час",
                HorizontalOptions = LayoutOptions.Center,
                WidthRequest = 200,
                HorizontalTextAlignment= TextAlignment.Center,
                BackgroundColor = Color.White,
                Margin= 30

            };

            foreach (int timeRangeId in freeTimeRanges)
            {
                var startHour = timeRangeId < 10 ? $"0{timeRangeId}:00" : $"{timeRangeId}:00";
                timeRangesPicker.Items.Add(startHour);
            }

            Button addButton = new Button
            {
                BackgroundColor= Color.Green,
                TextColor= Color.Black,
                CornerRadius = 20,
                Text = "Добави",
                WidthRequest= 150,
                HorizontalOptions = LayoutOptions.Center,
            };

            addButton.Clicked += async (sender, args) =>
            {
                var selectedItem = timeRangesPicker.SelectedItem.ToString();
                var hour = Convert.ToInt32(selectedItem.Split(':')[0][1].ToString());

                

                var range = _databaseContext.GetRange(hour);

                var rangeName = "";

                if (range == null)
                {

                    var fHour = hour < 10 ? $"0{hour}:00" : $"{hour}:00";
                    var sHour = hour + 1 < 10 ? $"0{hour + 1}:00" : $"{hour + 1}:00";

                    var timeRange = new TimeRange
                    {
                        DateId = dateName,
                        TimeRangeId = hour,
                        RangeName = $"{fHour}-{sHour}",
                    };
                    timeRange.DatesList.Add(dateName);
                    rangeName = $"{fHour}-{sHour}";

                    _databaseContext.AddTimeRange(timeRange);
                }
                else
                {
                    rangeName = range.RangeName;
                }

                var reservation = new Reservation
                {
                    DateOfReservationId = dateName,
                    TimeRangeId = hour,
                    Status = "Free"
                };

                _databaseContext.AddReservationSlot(reservation);

                await Navigation.PopModalAsync();
            };

            stackLayout.Children.Add(timeRangesPicker);
            stackLayout.Children.Add(addButton);
        }
    }
}