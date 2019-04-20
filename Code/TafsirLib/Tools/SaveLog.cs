using System;
using System.IO;
using System.Windows.Forms;

namespace TafsirLib.Tools
{
	public static class SaveLog
	{
		public static bool Save(Exception e, bool show = false, bool save = true)
		{
			try
			{
				if (show)
				{
					MessageBox.Show(e.Message, "خطا");
				}
				if (save)
				{
					var path = Application.StartupPath + "//Datalog.dat";
					File.WriteAllText(path, e.Message);
				}
			}
			catch (Exception)
			{
				return false;
			}
			return true;
		}
	}
}