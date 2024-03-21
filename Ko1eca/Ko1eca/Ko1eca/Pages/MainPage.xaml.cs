using Ko1eca.DB;
using System;
using System.IO;
using Xamarin.Forms;
using static Ko1eca.Global.GlobalVariables;

namespace Ko1eca
{
    public partial class MainPage : ContentPage
    {
        private static DatabaseContext _databaseContext;
        public MainPage()
        {
            InitializeComponent();

            _databaseContext = new DatabaseContext(Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData), "Ko1eca.db3"));

            picker.MinimumDate = DateTime.Now.AddDays(-365);
            picker.MaximumDate = DateTime.Now.AddDays(365);

            picker.Unfocused += Picker_Unfocused;

            searchBar.Focused += SearchBar_Focused;
            searchBar.Unfocused += SearchBar_Unfocused;

            searchResults.ItemTapped += SearchResults_ItemTapped;
        }

        

        private async void SearchResults_ItemTapped(object sender, ItemTappedEventArgs e)
        {

            var selectedValue = ((ListView)sender).SelectedItem.ToString();

            searchBar.Text = selectedValue;

            searchResults.ItemsSource = null;

            cName = selectedValue;

            await Navigation.PushModalAsync(new ClientReservations());

        }
        

        private void SearchBar_Unfocused(object sender, FocusEventArgs e)
        {
            stackLay.Margin = new Thickness(0, 400, 0, 0);
            searchResults.BackgroundColor = Color.Default;
            searchResults.Opacity = 0.0;
        }

        private void SearchBar_Focused(object sender, FocusEventArgs e)
        {
            if(searchBar.Text != null)
            {
                searchResults.ItemsSource = _databaseContext.GetClientsBySearch(searchBar.Text);
            }
            else
            {
                searchResults.ItemsSource = _databaseContext.GetAllClients();
            }
            searchResults.Opacity = 1;
            searchResults.BackgroundColor = Color.Black;
            stackLay.Margin = new Thickness(0, 0, 0, 0);
        }

        private void OnTextChanged(object sender, EventArgs e)
        {
            Xamarin.Forms.SearchBar searchBar = (Xamarin.Forms.SearchBar)sender;
            searchResults.ItemsSource = _databaseContext.GetClientsBySearch(searchBar.Text);
        }
        private async void Picker_Unfocused(object sender, FocusEventArgs e)
        {
            var selectedDate = picker.Date.ToString("yyyy-MM-dd");

            dateName = selectedDate;

            await Navigation.PushModalAsync(new Reservations());
        }
    }
}
