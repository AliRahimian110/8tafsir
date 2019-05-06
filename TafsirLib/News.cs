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

	    public List<NewsEntity> Load(string type)
	    {
	        try
	        {
	            var typeId = Convert.ToInt32(type ?? "0");

	            return Connection.Db.Query<NewsEntity>("SPNewsLoadType", new {typeId = typeId},
	                commandType: CommandType.StoredProcedure).ToList();
	        }
	        catch (Exception ex)
	        {
	            Tools.SaveLog.Save(ex);
	            return new List<NewsEntity>();
	        }
	    }

	    public List<NewsEntity> LoadTop(int typeId)
	    {
	        try
	        {
	            return Connection.Db.Query<NewsEntity>("SPNewsLoadTypeTop", new {typeId = typeId},
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

	    public List<NewsEntity> Get(string id)
	    {
	        try
	        {
	            if (string.IsNullOrEmpty(id) || string.IsNullOrWhiteSpace(id))
	            {
	                id = "0";
	            }

                var i = int.Parse(id.Replace("'",""));
                var list =new List<NewsEntity>();
                var item= Get(i);
                list.Add(item);

	            return list;
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
	}
}