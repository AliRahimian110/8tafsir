using System.Collections.Generic;
using System.Data;
//using FastMember;

namespace TafsirLib.Tools
{
	public static class Extensions
	{
		public static DataTable ToDataTable<T>(this List<T> data)
		{
			var table = new DataTable();
            //using (var reader = ObjectReader.Create(data))
            //{
            //    table.Load(reader);
            //}
            return table;
		}
	}
}