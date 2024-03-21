using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Android.App;
using Android.Appwidget;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using AndroidX.Navigation;
using Xamarin.Forms;
using static Ko1eca.Global.GlobalVariables;
using Math = Java.Lang.Math;

namespace Ko1eca.Droid
{

    [BroadcastReceiver(Label = "Pair Of Dice")]
    [IntentFilter(new string[] { "android.appwidget.action.APPWIDGET_UPDATE" })]
    [MetaData("android.appwidget.provider", Resource = "@xml/widget_provider")]
    public class AppWidget : AppWidgetProvider
    {
        public override void OnUpdate(Context context, AppWidgetManager appWidgetManager, int[] appWidgetIds)
        {
            var me = new ComponentName(context, Java.Lang.Class.FromType(typeof(AppWidget)).Name);
            appWidgetManager.UpdateAppWidget(me, BuildRemoteViews(context, appWidgetIds));
        }

        private RemoteViews BuildRemoteViews(Context context, int[] appWidgetIds)
        {
            var widgetView = new RemoteViews(context.PackageName, Resource.Layout.widget);

            SetTextViewText(widgetView);
            RegisterClicks(context, appWidgetIds, widgetView);

            return widgetView;
        }

        private void RegisterClicks(Context context, int[] appWidgetIds, RemoteViews widgetView)
        {
            var openAppIntent = new Intent(context, typeof(AppWidget));
            openAppIntent.SetAction(Intent.ActionMain);
            openAppIntent.AddCategory(Intent.CategoryLauncher);
            ActionOpenPage = "com.companyname.ko1eca.OPEN_PAGE";
            widgetView.SetOnClickPendingIntent(Resource.Id.background, GetPendingSelfIntent(context, ActionOpenPage));       
        }

        private PendingIntent GetPendingSelfIntent(Context context, string action)
        {
            var intent = new Intent(context, typeof(AppWidget));
            intent.SetAction(action);
            return PendingIntent.GetBroadcast(context, 0, intent, PendingIntentFlags.Mutable);
        }

        public override void OnReceive(Context context, Intent intent)
        {
            base.OnReceive(context, intent);

            if (ActionOpenPage.Equals(intent.Action))
            {
                dateName = DateTime.Now.ToString("yyyy-MM-dd");
                var appIntent = new Intent(context, typeof(MainActivity));
                appIntent.AddFlags(ActivityFlags.NewTask);
                context.StartActivity(appIntent);

            }
        }

        private void SetTextViewText(RemoteViews widgetView)
        {
            var date = DateTime.Now.ToString("yyyy-MM-dd");
            widgetView.SetTextViewText(Resource.Id.left_die, date);
        }

      
    }


}