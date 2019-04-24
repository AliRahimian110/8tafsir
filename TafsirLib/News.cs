using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using Dapper;
using TafsirLib.Entity;
using TafsirLib.Tools;

namespace TafsirLib
{
	public class News 
	{
		public List<NewsEntity> Load()
		{
			try
			{
				return Connection.Db.Query<NewsEntity>("spNewsLoad", null,
					commandType: CommandType.StoredProcedure).ToList();
			}
			catch (Exception ex)
			{
				Tools.SaveLog.Save(ex);
				return new List<NewsEntity>();
			}
		}

		public List<NewsEntity> Search(NewsEntity data)
		{
			try
			{
				return Connection.Db.Query<NewsEntity>("spNewsSearch",
					new
					{
						ID = data.Id,
						TypeId = data.TypeId,
						TitleNews = "%" + data.TitleNews + "%",
						Description = "%" + data.Description + "%",
						TextNews = "%" + data.TextNews + "%",
						Writer = "%" + data.Writer + "%",
						Active = data.Active,
						Viewed = data.Viewed,
						InsertUser = data.InsertUser,
						InsertDate = "%" + data.InsertDate + "%",
					    Keyword = "%" + data.Keyword + "%",
					    Image = "%" + data.Image + "%",
                    }, commandType: CommandType.StoredProcedure).ToList();
			}
			catch (Exception ex)
			{
				Tools.SaveLog.Save(ex);
				return new List<NewsEntity>();
			}
		}

		public NewsEntity Get(int id)
		{
			try
			{
				return Connection.Db.Query<NewsEntity>("spNewsGet", new {ID = id},
					commandType: CommandType.StoredProcedure).SingleOrDefault() ?? new NewsEntity();
			}
			catch (Exception ex)
			{
				Tools.SaveLog.Save(ex);
				return new NewsEntity();
			}
		}

	    public NewsEntity GetTop()
	    {
	        try
	        {
	            return Connection.Db.Query<NewsEntity>("spNewsGetTop", null,
                    commandType: CommandType.StoredProcedure).SingleOrDefault() ?? new NewsEntity();
	        }
	        catch (Exception ex)
	        {
	            Tools.SaveLog.Save(ex);
	            return new NewsEntity();
	        }
	    }

        public int Save(NewsEntity data)
		{
			try
			{
				return Connection.Db.Query<int>("spNewsSet",
					new
					{
						ID = data.Id,
						TypeId = data.TypeId,
						TitleNews = data.TitleNews,
						Description = data.Description,
						TextNews = data.TextNews,
						Writer = data.Writer,
						Active = data.Active,
						Viewed = data.Viewed,
						InsertUser = data.InsertUser,
						InsertDate = data.InsertDate,
						Keyword = data.Keyword,
					    Image = data.Image,
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
				return Connection.Db.Query<int>("spNewsDel", new {ID = id},
					 commandType: CommandType.StoredProcedure).SingleOrDefault();
			}
			catch (Exception ex)
			{
				Tools.SaveLog.Save(ex);
				return -1;
			}
		}
		/*public ClassName QueryMultiple(int id)
		{
			var cls = new ClassName();
			try
			{
				using (var mult =
					Connection.Db.QueryMultiple("spInfoLoad", new {id},
						commandType: CommandType.StoredProcedure))
				{
					cls.Id = mult.Read<int>().FirstOrDefault();
					cls.PersonInfo = mult.Read<PersonEntity>().FirstOrDefault() ?? new PersonEntity();
					cls.CastList = mult.Read<CastEntity>().ToList();
				}
			}
			catch (Exception ex)
			{
				Tools.SaveLog.Save(ex);
				return new List<BookInfoEntity>();
			}

			return cls;
		}/**/
	}
}