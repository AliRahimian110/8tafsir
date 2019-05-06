using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using Dapper;
using TafsirLib.Entity;
using TafsirLib.Tools;

namespace TafsirLib
{
	public class Course 
	{
		public List<CourseEntity> Load()
		{
			try
			{
				return Connection.Db.Query<CourseEntity>("spCourseLoad", null,
					commandType: CommandType.StoredProcedure).ToList();
			}
			catch (Exception ex)
			{
				Tools.SaveLog.Save(ex);
				return new List<CourseEntity>();
			}
		}

		public List<CourseEntity> Search(CourseEntity data)
		{
			try
			{
				return Connection.Db.Query<CourseEntity>("spCourseSearch",
					new
					{
						ID = data.Id,
						TypeCourse = data.TypeCourse,
						Title = "%" + data.Title + "%",
						DateStart = "%" + data.DateStart + "%",
						Time = "%" + data.Time + "%",
						Length = "%" + data.Length + "%",
						Address = "%" + data.Address + "%",
						TeacherId = data.TeacherId,
						Description = "%" + data.Description + "%",
						Active = data.Active,
					}, commandType: CommandType.StoredProcedure).ToList();
			}
			catch (Exception ex)
			{
				Tools.SaveLog.Save(ex);
				return new List<CourseEntity>();
			}
		}

		public CourseEntity Get(int id)
		{
			try
			{
				return Connection.Db.Query<CourseEntity>("spCourseGet", new {ID = id},
					commandType: CommandType.StoredProcedure).SingleOrDefault() ?? new CourseEntity();
			}
			catch (Exception ex)
			{
				Tools.SaveLog.Save(ex);
				return new CourseEntity();
			}
		}

		public int Save(CourseEntity data)
		{
			try
			{
				return Connection.Db.Query<int>("spCourseSet",
					new
					{
						ID = data.Id,
						TypeCourse = data.TypeCourse,
						Title = data.Title,
						DateStart = data.DateStart,
						Time = data.Time,
						Length = data.Length,
						Address = data.Address,
						TeacherId = data.TeacherId,
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
				return Connection.Db.Query<int>("spCourseDel", new {ID = id},
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