using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using Dapper;
using TafsirLib.Entity;
using TafsirLib.Tools;

namespace TafsirLib
{
	public class Links 
	{
		public List<LinksEntity> Load()
		{
			try
			{
				return Connection.Db.Query<LinksEntity>("spLinksLoad", null,
					commandType: CommandType.StoredProcedure).ToList();
			}
			catch (Exception ex)
			{
				Tools.SaveLog.Save(ex);
				return new List<LinksEntity>();
			}
		}

		public List<LinksEntity> Search(LinksEntity data)
		{
			try
			{
				return Connection.Db.Query<LinksEntity>("spLinksSearch",
					new
					{
						ID = data.Id,
						TitleLink = "%" + data.TitleLink + "%",
						Address = "%" + data.Address + "%",
						Image = "%" + data.Image + "%",
						Description = "%" + data.Description + "%",
						Active = data.Active,
					}, commandType: CommandType.StoredProcedure).ToList();
			}
			catch (Exception ex)
			{
				Tools.SaveLog.Save(ex);
				return new List<LinksEntity>();
			}
		}

		public LinksEntity Get(int id)
		{
			try
			{
				return Connection.Db.Query<LinksEntity>("spLinksGet", new {ID = id},
					commandType: CommandType.StoredProcedure).SingleOrDefault() ?? new LinksEntity();
			}
			catch (Exception ex)
			{
				Tools.SaveLog.Save(ex);
				return new LinksEntity();
			}
		}

		public int Save(LinksEntity data)
		{
			try
			{
				return Connection.Db.Query<int>("spLinksSet",
					new
					{
						ID = data.Id,
						TitleLink = data.TitleLink,
						Address = data.Address,
						Image = data.Image,
						Description = data.Description,
						Active = data.Active,
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
				return Connection.Db.Query<int>("spLinksDel", new {ID = id},
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