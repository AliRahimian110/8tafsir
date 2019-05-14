using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using Dapper;
using TafsirLib.Entity;
using TafsirLib.Tools;

namespace TafsirLib
{
	public class TeacherNazarsanji 
	{
		public List<TeacherNazarsanjiEntity> Load()
		{
			try
			{
				return Connection.Db.Query<TeacherNazarsanjiEntity>("spTeacherNazarsanjiLoad", null,
					commandType: CommandType.StoredProcedure).ToList();
			}
			catch (Exception ex)
			{
				SaveLog.Save(ex);
				return new List<TeacherNazarsanjiEntity>();
			}
		}

		public List<TeacherNazarsanjiEntity> Load(int id)
		{
			try
			{
				return Connection.Db.Query<TeacherNazarsanjiEntity>("spTeacherNazarsanjiGet", new {Id = id},
					commandType: CommandType.StoredProcedure).ToList();
			}
			catch (Exception ex)
			{
				SaveLog.Save(ex);
				return new List<TeacherNazarsanjiEntity>();
			}
		}

		public TeacherNazarsanjiEntity Get(int id)
		{
			try
			{
				return Connection.Db.Query<TeacherNazarsanjiEntity>("spTeacherNazarsanjiGet", new {Id = id},
					commandType: CommandType.StoredProcedure).SingleOrDefault() ?? new TeacherNazarsanjiEntity();
			}
			catch (Exception ex)
			{
				SaveLog.Save(ex);
				return new TeacherNazarsanjiEntity();
			}
		}

		public List<TeacherNazarsanjiEntity> Search(TeacherNazarsanjiEntity data)
		{
			try
			{
				return Connection.Db.Query<TeacherNazarsanjiEntity>("spTeacherNazarsanjiSearch",
					new
					{
						Id = data.Id,
						Question = "%" + data.Question + "%",
						Active = data.Active,
					}, commandType: CommandType.StoredProcedure).ToList();
			}
			catch (Exception ex)
			{
				SaveLog.Save(ex);
				return new List<TeacherNazarsanjiEntity>();
			}
		}

		public int Save(TeacherNazarsanjiEntity data)
		{
			try
			{
				return Connection.Db.Query<int>("spTeacherNazarsanjiSet",
					new
					{
						Id = data.Id,
						Question = data.Question,
						Active = data.Active,
					}, commandType: CommandType.StoredProcedure).SingleOrDefault();
			}
			catch (Exception ex)
			{
				SaveLog.Save(ex);
				return -1;
			}
		}

		public int Delete(int id)
		{
			try
			{
				return Connection.Db.Query<int>("spTeacherNazarsanjiDel", new {Id = id},
					 commandType: CommandType.StoredProcedure).SingleOrDefault();
			}
			catch (Exception ex)
			{
				SaveLog.Save(ex);
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