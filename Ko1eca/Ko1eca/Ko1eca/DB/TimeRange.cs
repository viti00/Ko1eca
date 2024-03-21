using SQLite;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace Ko1eca.DB
{
    public class TimeRange
    {
        [PrimaryKey, AutoIncrement]
        public int Id { get; set; }

        public string RangeName { get; set; }

        public int TimeRangeId { get; set; }

        [ForeignKey(nameof(Date))]
        public string DateId { get; set; }

        public List<string> DatesList = new List<string>();
    }
}
