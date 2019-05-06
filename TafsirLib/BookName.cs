using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using Dapper;
using TafsirLib.Entity;
using TafsirLib.Tools;

namespace TafsirLib
{
	public class BookName 
	{
		public List<BookNameEntity> Load()
		{
			try
			{
				return Connection.Db.Query<BookNameEntity>("spBookNameLoad", null,
					commandType: CommandType.StoredProcedure).ToList();
			}
			catch (Exception ex)
			{
				Tools.SaveLog.Save(ex);
				return new List<BookNameEntity>();
			}
		}


	    public object LoadVisit()
	    {
	        try
	        {
	            return Connection.Db.Query<BookNameEntity>("SPBookNameVisit", null,
	                commandType: CommandType.StoredProcedure).ToList();
	        }
	        catch (Exception ex)
	        {
	            Tools.SaveLog.Save(ex);
	            return new List<BookNameEntity>();
	        }
        }


	    public object LoadNew()
	    {
	        try
	        {
	            return Connection.Db.Query<BookNameEntity>("SPBookNameNew", null,
	                commandType: CommandType.StoredProcedure).ToList();
	        }
	        catch (Exception ex)
	        {
	            Tools.SaveLog.Save(ex);
	            return new List<BookNameEntity>();
	        }
        }

        public List<BookNameEntity> Search(BookNameEntity data)
		{
			try
			{
				return Connection.Db.Query<BookNameEntity>("spBookNameSearch",
					new
					{
						ID = data.Id,
						BookName = "%" + data.BookName + "%",
						Writer = "%" + data.Writer + "%",
						Translator = "%" + data.Translator + "%",
						Publisher = "%" + data.Publisher + "%",
						Active = data.Active,
						Language = "%" + data.Language + "%",
						Pages = data.Pages,
						Viewed = data.Viewed,
						InsertUserId = data.InsertUserId,
						InsertDate = "%" + data.InsertDate + "%",
						Keyword = "%" + data.Keyword + "%",
						Description = "%" + data.Description + "%",
					}, commandType: CommandType.StoredProcedure).ToList();
			}
			catch (Exception ex)
			{
				Tools.SaveLog.Save(ex);
				return new List<BookNameEntity>();
			}
		}

		public BookNameEntity Get(int id)
		{
			try
			{
				return Connection.Db.Query<BookNameEntity>("spBookNameGet", new {ID = id},
					commandType: CommandType.StoredProcedure).SingleOrDefault() ?? new BookNameEntity();
			}
			catch (Exception ex)
			{
				Tools.SaveLog.Save(ex);
				return new BookNameEntity();
			}
		}

		public int Save(BookNameEntity data)
		{
			try
			{
				return Connection.Db.Query<int>("spBookNameSet",
					new
					{
						ID = data.Id,
						BookName = data.BookName,
						Writer = data.Writer,
						Translator = data.Translator,
						Publisher = data.Publisher,
						Active = data.Active,
						Language = data.Language,
						Pages = data.Pages,
						Viewed = data.Viewed,
						InsertUserId = data.InsertUserId,
						InsertDate = data.InsertDate,
						Keyword = data.Keyword,
						Description = data.Description,
					}, commandType: CommandType.StoredProcedure).SingleOrDefault();
			}
			catch (Exception ex)
			{
				Tools.SaveLog.Save(ex);
				return -1;
			}
		}

		public int Delete(int id)
		{
			try
			{
				return Connection.Db.Query<int>("spBookNameDel", new {ID = id},
					 commandType: CommandType.StoredProcedure).SingleOrDefault();
			}
			catch (Exception ex)
			{
				Tools.SaveLog.Save(ex);
				return -1;
			}
		}
	}
}