using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using Dapper;
using TafsirLib.Entity;
using TafsirLib.Tools;

namespace TafsirLib
{
	public class Teacher 
	{
		public List<TeacherEntity> Load()
		{
			try
			{
				return Connection.Db.Query<TeacherEntity>("spTeacherLoad", null,
					commandType: CommandType.StoredProcedure).ToList();
			}
			catch (Exception ex)
			{
				Tools.SaveLog.Save(ex);
				return new List<TeacherEntity>();
			}
		}

		public List<TeacherEntity> Search(TeacherEntity data)
		{
			try
			{
				return Connection.Db.Query<TeacherEntity>("spTeacherSearch",
					new
					{
						Id = data.Id,
						FirstName = "%" + data.FirstName + "%",
						LastName = "%" + data.LastName + "%",
						UserName = "%" + data.UserName + "%",
						Password = "%" + data.Password + "%",
						Image = "%" + data.Image + "%",
						Active = "%" + data.Active + "%",
						Grade = "%" + data.Grade + "%",
						Rezome = "%" + data.Rezome + "%",
						BirthDate = "%" + data.BirthDate + "%",
						Address = "%" + data.Address + "%",
						Email = "%" + data.Email + "%",
						Tel = "%" + data.Tel + "%",
					}, commandType: CommandType.StoredProcedure).ToList();
			}
			catch (Exception ex)
			{
				Tools.SaveLog.Save(ex);
				return new List<TeacherEntity>();
			}
		}

		public TeacherEntity Get(int id)
		{
			try
			{
				return Connection.Db.Query<TeacherEntity>("spTeacherGet", new {Id = id},
					commandType: CommandType.StoredProcedure).SingleOrDefault() ?? new TeacherEntity();
			}
			catch (Exception ex)
			{
				Tools.SaveLog.Save(ex);
				return new TeacherEntity();
			}
		}

		public int Save(TeacherEntity data)
		{
			try
			{
				return Connection.Db.Query<int>("spTeacherSet",
					new
					{
						Id = data.Id,
						FirstName = data.FirstName,
						LastName = data.LastName,
						UserName = data.UserName,
						Password = data.Password,
						Image = data.Image,
						Active = data.Active,
						Grade = data.Grade,
						Rezome = data.Rezome,
						BirthDate = data.BirthDate,
						Address = data.Address,
						Email = data.Email,
						Tel = data.Tel,
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
				return Connection.Db.Query<int>("spTeacherDel", new {Id = id},
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