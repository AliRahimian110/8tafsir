using System.Data;

namespace TafsirLib.Tools
{
	public static class Connection
	{
		public static readonly IDbConnection Db =
			new System.Data.SqlClient.SqlConnection(@"Server=.\SQLEXPRESS;Database=Tafsir;Trusted_Connection=True;");
		//new System.Data.SqlClient.SqlConnection(@"Server=.\SQLEXPRESS;Database=DBNAME;User Id=Username;Password=Password;");
		//new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["conStr"].ConnectionString);

		private static void EnsureOpenConnectios()
		{
			if (Db.State != ConnectionState.Open)
			{
				Db.Open();
			}
		}
	}
}