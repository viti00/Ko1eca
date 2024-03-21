using System;
using System.Collections.Generic;
using System.Text;

namespace Ko1eca.ReservationViewModel
{
    public class ReservationModel
    {
        public string DateName { get; set; }

        public int RangeId { get; set; }
        public string TimeRangeName { get; set; }
        public string Status { get; set; }
        
        public string FullName { get; set; }

        public string PhoneNumber { get; set; }
    }
}
