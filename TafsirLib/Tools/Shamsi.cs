//using System;

using System;
using System.Globalization;

namespace TafsirLib.Tools
{
    public class Shamsi
    {
        /// <summary>
        /// 13920816
        /// </summary>
        public static int DateShamsi
        {
            get
            {
                var pc = new PersianCalendar();
                return Convert.ToInt32(string.Format("{0:0000}{1:00}{2:00}",
                    pc.GetYear(DateTime.Now), pc.GetMonth(DateTime.Now),
                    pc.GetDayOfMonth(DateTime.Now)));
            }
        }

        /// <summary>
        /// 1392/08/18
        /// </summary>
        public static string DateShamsiBaformat
        {
            get
            {
                var pc = new PersianCalendar();
                return string.Format("{0:0000}/{1:00}/{2:00}",
                    pc.GetYear(DateTime.Now), pc.GetMonth(DateTime.Now), pc.GetDayOfMonth(DateTime.Now));
            }
        }

        /// <summary>
        /// Year/Month/Day
        /// </summary>
        public static string Date
        {
            get
            {
                return string.Format(@"{0:0000}/{1:00}/{2:00}",
                    DateTime.Now.Year, DateTime.Now.Month, DateTime.Now.Day);
            }
        }

        /// <summary>
        /// Hour:Minute:Second
        /// </summary>
        public static string Time
        {
            get
            {
                return string.Format(@"{0:00}:{1:00}:{2:00}",
                    DateTime.Now.Hour, DateTime.Now.Minute, DateTime.Now.Second);
            }
        }

        //public static string Time_10s
        //{ get { DateTime dt = new DateTime(); dt = dt.AddMinutes(-5);
        //        return string.Format("{0:00}:{1:00}:00", dt.Hour, dt.Minute); } }
        //public static string Date_Shamsi_baformat_10s
        //{ get { PersianCalendar pc = new PersianCalendar(); DateTime dt = pc.AddMinutes(DateTime.Now, -5);
        //        return string.Format("{0:0000}/{1:00}/{2:00}", pc.GetYear(dt), pc.GetMonth(dt), pc.GetDayOfMonth(dt)); } }

        public static string[] Time10S
        {
            get
            {
                var pc = new PersianCalendar();
                var dt = pc.AddMinutes(DateTime.Now, -5);

                var time = string.Format("{0:00}:{1:00}:00", pc.GetHour(dt), pc.GetMinute(dt));
                var date = string.Format("{0:0000}/{1:00}/{2:00}",
                    pc.GetYear(dt), pc.GetMonth(dt), pc.GetDayOfMonth(dt));

                string[] temp = {time, date};
                return temp;
            }
        }

        /// <summary>
        /// GetYear GetMonth GetDayOfMonth Hour Minute Second Millisecond rand
        /// </summary>
        public static string DateTimeRand
        {
            get
            {
                var rand = new Random();
                var pc = new PersianCalendar();
                return string.Format("{0:0000}{1:00}{2:00}{3:00}{4:00}{5:00}{6:00}{7:000000}",
                    pc.GetYear(DateTime.Now), pc.GetMonth(DateTime.Now), pc.GetDayOfMonth(DateTime.Now),
                    DateTime.Now.Hour, DateTime.Now.Minute, DateTime.Now.Second,
                    DateTime.Now.Millisecond%100,
                    rand.Next(10, 999999));
            }
        }

        /// <summary>
        /// نام ماه ها فارسی
        /// </summary>
        public static string NameMahjari
        {
            get
            {
                var ret = "فروردین";
                var pc = new PersianCalendar();
                switch (pc.GetMonth(DateTime.Now))
                {
                    case 1:
                        ret = "فروردین";
                        break;
                    case 2:
                        ret = "اردیبهشت";
                        break;
                    case 3:
                        ret = "خرداد";
                        break;
                    case 4:
                        ret = "تیر";
                        break;
                    case 5:
                        ret = "مرداد";
                        break;
                    case 6:
                        ret = "شهریور";
                        break;
                    case 7:
                        ret = "مهر";
                        break;
                    case 8:
                        ret = "آبان";
                        break;
                    case 9:
                        ret = "آذر";
                        break;
                    case 10:
                        ret = "دی";
                        break;
                    case 11:
                        ret = "بهمن";
                        break;
                    case 12:
                        ret = "اسفند";
                        break;
                }
                return string.Format(" {0} ماه", ret);
            }
        }

        public enum ListMah
        {
            فروردین = 1,
            اردیبهشت = 2,
            خرداد = 3,
            تیر = 4,
            مرداد = 5,
            شهریور = 6,
            مهر = 7,
            آبان = 8,
            آذر = 9,
            دی = 10,
            بهمن = 11,
            اسفند = 12
        }
    }
}