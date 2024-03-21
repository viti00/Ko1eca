using SQLite;
using SQLiteNetExtensions.Attributes;
using System;
using System.Collections.Generic;
using System.Text;

namespace Ko1eca.DB
{
    public class Date
    {
        [PrimaryKey]
        public string DateId { get; set; }

        [OneToMany(CascadeOperations = CascadeOperation.All)]
        public List<TimeRange> TimeRanges { get; set; } =  new List<TimeRange>();

    }
}
