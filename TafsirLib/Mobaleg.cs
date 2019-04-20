using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using Dapper;
using TafsirLib.Entity;
using TafsirLib.Tools;

namespace TafsirLib
{
	public class Mobaleg 
	{
		public List<MobalegEntity> Load()
		{
			try
			{
				return Connection.Db.Query<MobalegEntity>("spMobalegLoad", null,
					commandType: CommandType.StoredProcedure).ToList();
			}
			catch (Exception ex)
			{
				Tools.SaveLog.Save(ex);
				return new List<MobalegEntity>();
			}
		}

		public List<MobalegEntity> Search(MobalegEntity data)
		{
			try
			{
				return Connection.Db.Query<MobalegEntity>("spMobalegSearch",
					new
					{
						ID = data.Id,
						FirstName = "%" + data.FirstName + "%",
						LastName = "%" + data.LastName + "%",
						ComName = "%" + data.ComName + "%",
						CodeMeli = "%" + data.CodeMeli + "%",
						Tel = "%" + data.Tel + "%",
						Email = "%" + data.Email + "%",
						City = "%" + data.City + "%",
						DateStart = "%" + data.DateStart + "%",
						DateEnd = "%" + data.DateEnd + "%",
						Description = "%" + data.Description + "%",
						Send = data.Send,
						Checked = data.Checked,
						InaertDate = "%" + data.InaertDate + "%",
					}, commandType: CommandType.StoredProcedure).ToList();
			}
			catch (Exception ex)
			{
				Tools.SaveLog.Save(ex);
				return new List<MobalegEntity>();
			}
		}

		public MobalegEntity Get(int id)
		{
			try
			{
				return Connection.Db.Query<MobalegEntity>("spMobalegGet", new {ID = id},
					commandType: CommandType.StoredProcedure).SingleOrDefault() ?? new MobalegEntity();
			}
			catch (Exception ex)
			{
				Tools.SaveLog.Save(ex);
				return new MobalegEntity();
			}
		}

		public int Save(MobalegEntity data)
		{
			try
			{
				return Connection.Db.Query<int>("spMobalegSet",
					new
					{
						ID = data.Id,
						FirstName = data.FirstName,
						LastName = data.LastName,
						ComName = data.ComName,
						CodeMeli = data.CodeMeli,
						Tel = data.Tel,
						Email = data.Email,
						City = data.City,
						DateStart = data.DateStart,
						DateEnd = data.DateEnd,
						Description = data.Description,
						Send = data.Send,
						Checked = data.Checked,
						InaertDate = data.InaertDate,
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
				return Connection.Db.Query<int>("spMobalegDel", new {ID = id},
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