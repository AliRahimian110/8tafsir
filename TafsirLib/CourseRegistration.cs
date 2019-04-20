using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using Dapper;
using TafsirLib.Entity;
using TafsirLib.Tools;

namespace TafsirLib
{
	public class CourseRegistration 
	{
		public List<CourseRegistrationEntity> Load()
		{
			try
			{
				return Connection.Db.Query<CourseRegistrationEntity>("spCourseRegistrationLoad", null,
					commandType: CommandType.StoredProcedure).ToList();
			}
			catch (Exception ex)
			{
				Tools.SaveLog.Save(ex);
				return new List<CourseRegistrationEntity>();
			}
		}

		public List<CourseRegistrationEntity> Search(CourseRegistrationEntity data)
		{
			try
			{
				return Connection.Db.Query<CourseRegistrationEntity>("spCourseRegistrationSearch",
					new
					{
						ID = data.Id,
						CourseId = data.CourseId,
						StudentId = data.StudentId,
						DateTime = "%" + data.DateTime + "%",
					}, commandType: CommandType.StoredProcedure).ToList();
			}
			catch (Exception ex)
			{
				Tools.SaveLog.Save(ex);
				return new List<CourseRegistrationEntity>();
			}
		}

		public CourseRegistrationEntity Get(int id)
		{
			try
			{
				return Connection.Db.Query<CourseRegistrationEntity>("spCourseRegistrationGet", new {ID = id},
					commandType: CommandType.StoredProcedure).SingleOrDefault() ?? new CourseRegistrationEntity();
			}
			catch (Exception ex)
			{
				Tools.SaveLog.Save(ex);
				return new CourseRegistrationEntity();
			}
		}

		public int Save(CourseRegistrationEntity data)
		{
			try
			{
				return Connection.Db.Query<int>("spCourseRegistrationSet",
					new
					{
						ID = data.Id,
						CourseId = data.CourseId,
						StudentId = data.StudentId,
						DateTime = data.DateTime,
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
				return Connection.Db.Query<int>("spCourseRegistrationDel", new {ID = id},
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