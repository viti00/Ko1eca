using System;
using System.Collections.Generic;
using System.Linq;
using SQLite;
using static Ko1eca.Global.GlobalVariables;
using static Ko1eca.Global.GlobalMethods;


namespace Ko1eca.DB
{
    public class DatabaseContext
    {
        public readonly SQLiteConnection database;

        public DatabaseContext(string dbPath)
        {

            database = new SQLiteConnection(dbPath);
            database.CreateTable<TimeRange>();
            database.CreateTable<Date>();
            database.CreateTable<Reservation>();

            database.Execute("PRAGMA encoding = \"UTF-8\";");

            List<TimeRange> ranges = new List<TimeRange>();
            for (int i = 9; i < 20; i++)
            {
                var fHour = i < 10 ? $"0{i}" : $"{i}";
                var sHour = i + 1 < 10? $"0{i+1}" : $"{i+1}";
                var timeRange = new TimeRange
                {
                    TimeRangeId = i,
                    RangeName =  $"{fHour}:00-{sHour}:00"
                };

                ranges.Add(timeRange);
            }

            if (!database.Table<TimeRange>().Any())
            {
                database.InsertAll(ranges);
            } 
        }

        
        private List<TimeRange> GetRanges()
        {
            return database.Table<TimeRange>().OrderBy(x=> x.TimeRangeId).ToList();
        }

        private Reservation GetReservation(string dateName, int rangeId)
        {
            return database.Table<Reservation>().FirstOrDefault(x => x.DateOfReservationId == dateName && x.TimeRangeId == rangeId);
        }

        public void AddTimeRange(TimeRange timeRange)
        {
            database.Insert(timeRange);
        }

        public TimeRange GetRange(int rangeId)
        {
            return database.Table<TimeRange>().FirstOrDefault(x => x.TimeRangeId == rangeId);
        }

        public void AddReservationSlot(Reservation reservation)
        {
            database.Insert(reservation);
        }

        public List<string> GetAllClients()
        {
            return database.Table<Reservation>().Where(x=> x.FullName != null).Select(x=> x.FullName).Distinct().ToList();
        }
        public List<string> GetClientsBySearch(string searchTerm)
        {
            return database.Table<Reservation>().Where(x => x.FullName.ToLower().Contains(searchTerm.ToLower())).Select(x => x.FullName).Distinct().ToList();
        }
        public string GetRangeName(int rangeId)
        {
            return database.Table<TimeRange>().FirstOrDefault(x=> x.TimeRangeId == rangeId).RangeName;
        }

        public List<int> GetAvailableTimeRanges()
        {
            var ranges = new List<int>();

            for (int i = 0; i <= 23 ; i++)
            {
                if(!database.Table<Reservation>().Any(x=> x.TimeRangeId == i))
                {
                    ranges.Add(i);
                }
            }

            return ranges;
        }

        public List<Reservation> GetReservationsByClient(string clientName)
        {
            var allReservations = database.Table<Reservation>().Where(x => x.FullName.ToLower() == clientName.ToLower()).ToList();
            
            List<Reservation> toReturn = new List<Reservation>();

            foreach (var res in allReservations)
            {
                var timeRangeName = database.Table<TimeRange>().FirstOrDefault(x => x.TimeRangeId == res.TimeRangeId).RangeName;
                var dateString = res.DateOfReservationId + " " + timeRangeName.Split('-')[0];

                if (TryParseDateTime(dateString, out DateTime dateTime))
                {
                    if (dateTime > DateTime.Now)
                    {
                        toReturn.Add(res);
                    }
                }
            }

            return toReturn;
        }

        public void UpdateReservation(string dateName, int rangeId, string clientName, string clientPhone)
        {
            var date = GetReservation(dateName, rangeId);

            if(date != null)
            {
                date.FullName = clientName;
                date.Status = "Taken";
                date.PhoneNumber = clientPhone;
            }
            cName = clientName;
            database.Update(date);
        }

        public void CleanReservation(string dateName, int rangeId)
        {
            var date = GetReservation(dateName, rangeId);
            
            if(date != null)
            {
                date.FullName = null;
                date.Status = "Free";
                date.PhoneNumber = null;
            }

            database.Update(date);
        }

        public List<Reservation> GetDate(string dateName)
        {
            var dates = database.Table<Reservation>().Where(x => x.DateOfReservationId == dateName).OrderBy(x=> x.TimeRangeId).ToList();

            if (dates.Count == 0)
            {
                var d = new Date
                {
                    DateId = dateName
                };

                var ranges = GetRanges();

                foreach (var range in ranges)
                {
                    if((range.TimeRangeId >= 9 && range.TimeRangeId <= 20) || range.DatesList.Contains(dateName))
                    {
                        var reservationSlot = new Reservation
                        {
                            DateOfReservationId = dateName,
                            TimeRangeId = range.TimeRangeId,
                            Status = "Free",
                        };
                        dates.Add(reservationSlot);
                    }
                }

                database.InsertAll(dates);
            }

            return dates;
            
        }
    }
}
