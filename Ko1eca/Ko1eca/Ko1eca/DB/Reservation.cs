using SQLite;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace Ko1eca.DB
{
    public class Reservation
    {
        [PrimaryKey]
        public string Id { get; set; } = Guid.NewGuid().ToString();

        [ForeignKey(nameof(Date))]
        public string DateOfReservationId { get; set; }

        [ForeignKey(nameof(TimeRange))]
        public int TimeRangeId { get; set; }

        public string Status { get; set; }

        public string FullName { get; set; }

        public string PhoneNumber { get; set; }
    }
}
