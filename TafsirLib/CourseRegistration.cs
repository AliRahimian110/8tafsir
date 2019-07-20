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
				SaveLog.Save(ex);
				return new List<CourseRegistrationEntity>();
			}
		}


	    public List<StudentEntity> Load(int id)
	    {
	        try
	        {
	            return Connection.Db.Query<StudentEntity>("spCourseRegistrationList", new {Id = id },
	                commandType: CommandType.StoredProcedure).ToList();
	        }
	        catch (Exception ex)
	        {
	            SaveLog.Save(ex);
	            return new List<StudentEntity>();
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
				SaveLog.Save(ex);
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
				SaveLog.Save(ex);
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
				SaveLog.Save(ex);
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
				SaveLog.Save(ex);
				return -1;
			}
		}
	}
}