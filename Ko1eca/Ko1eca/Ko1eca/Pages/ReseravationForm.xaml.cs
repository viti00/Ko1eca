using Ko1eca.DB;
using Ko1eca.ReservationViewModel;
using System;
using System.IO;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Ko1eca
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class ReseravationForm : ContentPage
	{
        private static DatabaseContext _databaseContext;
        public ReseravationForm(ReservationModel model)
		{
			InitializeComponent ();

            _databaseContext = new DatabaseContext(Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData), "Ko1eca.db3"));

            TimeRangeLabel.Text = $"{model.TimeRangeName}";
            DateNameEntry.Text = model.DateName;
            RangeIdEntry.Text = model.RangeId.ToString();
            EditButton.FontSize = Device.GetNamedSize(NamedSize.Medium, typeof(Button));
            EditButton.Padding = new Thickness(10);
            EditButton.Margin = new Thickness(10);
            EditButton.CornerRadius = 20;
            EditButton.BorderWidth = 2;
            EditButton.BorderColor = Color.Black;            

            if (model.Status == "Taken")
            {
                EditButton.Text = "Редактирай";
                EntryClientName.Text = model.FullName;

                Button dynamicButton = new Button
                {
                    Text = "Освободи часа",
                    BackgroundColor = Color.Red,
                    TextColor = Color.Black,
                    BorderColor = Color.Black,
                    BorderWidth = 2,
                    CornerRadius = 20, 
                    FontSize = Device.GetNamedSize(NamedSize.Medium, typeof(Button)),
                    Padding = new Thickness(10),
                    Margin = new Thickness(10) 
                };

                dynamicButton.Clicked += OnDynamicButtonClicked;

                stackLayout.Children.Add(dynamicButton);
            }
		}

        private async void OnDynamicButtonClicked(object sender, EventArgs e)
        {
            var result = await DisplayAlert("Освобождаване", "Наистина ли искате да освободите този час?", "Да", "Не");

            if (result)
            {
                _databaseContext.CleanReservation(DateNameEntry.Text, int.Parse(RangeIdEntry.Text));

                await Navigation.PopModalAsync();
            }
            
        }

        private async void OnSaveAppointmentClicked(object sender, EventArgs e)
        {

            if(EntryClientName.Text == null || EntryClientName.Text.Length == 0)
            {
                await DisplayAlert("Празно поле", "Въведете име на клиент в полето!", "OK");
            }
            else
            {
                _databaseContext.UpdateReservation(DateNameEntry.Text, int.Parse(RangeIdEntry.Text), EntryClientName.Text, EntryClientPhone.Text);


                await Navigation.PopModalAsync();
            }
            
        }

    }


}