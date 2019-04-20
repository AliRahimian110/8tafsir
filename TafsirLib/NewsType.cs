using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using Dapper;
using TafsirLib.Entity;
using TafsirLib.Tools;

namespace TafsirLib
{
	public class NewsType 
	{
		public List<NewsTypeEntity> Load()
		{
			try
			{
				return Connection.Db.Query<NewsTypeEntity>("spNewsTypeLoad", null,
					commandType: CommandType.StoredProcedure).ToList();
			}
			catch (Exception ex)
			{
				Tools.SaveLog.Save(ex);
				return new List<NewsTypeEntity>();
			}
		}

		public List<NewsTypeEntity> Search(NewsTypeEntity data)
		{
			try
			{
				return Connection.Db.Query<NewsTypeEntity>("spNewsTypeSearch",
					new
					{
						ID = data.Id,
						TypeName = "%" + data.TypeName + "%",
					}, commandType: CommandType.StoredProcedure).ToList();
			}
			catch (Exception ex)
			{
				Tools.SaveLog.Save(ex);
				return new List<NewsTypeEntity>();
			}
		}

		public NewsTypeEntity Get(int id)
		{
			try
			{
				return Connection.Db.Query<NewsTypeEntity>("spNewsTypeGet", new {ID = id},
					commandType: CommandType.StoredProcedure).SingleOrDefault() ?? new NewsTypeEntity();
			}
			catch (Exception ex)
			{
				Tools.SaveLog.Save(ex);
				return new NewsTypeEntity();
			}
		}

		public int Save(NewsTypeEntity data)
		{
			try
			{
				return Connection.Db.Query<int>("spNewsTypeSet",
					new
					{
						ID = data.Id,
						TypeName = data.TypeName,
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
				return Connection.Db.Query<int>("spNewsTypeDel", new {ID = id},
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