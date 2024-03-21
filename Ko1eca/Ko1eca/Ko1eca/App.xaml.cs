using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using static Ko1eca.Global.GlobalVariables;

namespace Ko1eca
{
    public partial class App : Application
    {
        public App()
        {
            InitializeComponent();

            Resources = new ResourceDictionary();
            Resources.Add("StatusToColorConverter", new StatusToColorConverter());

            if(ActionOpenPage == "com.companyname.ko1eca.OPEN_PAGE")
            {
                MainPage = new Reservations();
            }
            else
            {
                MainPage = new MainPage();
            }

            
        }

        protected override void OnStart()
        {
        }

        protected override void OnSleep()
        {
        }

        protected override void OnResume()
        {
        }
    }
}
