using System;
using System.Collections.Generic;
using System.Globalization;
using System.Text;

namespace Ko1eca.Global
{
    public static class GlobalMethods
    {
        public static bool TryParseDateTime(string dateString, out DateTime result)
        {
            bool success = DateTime.TryParseExact(
                dateString,
                "yyyy-MM-dd HH:mm",
                CultureInfo.InvariantCulture,
                System.Globalization.DateTimeStyles.None,
                out result);

            return success;
        }
    }
}
