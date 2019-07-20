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
	    public List<CourseEntity> Load(string typeCourse, string studentId = "0")
	    {
	        try
	        {
	            return Connection.Db.Query<CourseEntity>("spCourseLoad", new
	                {
	                    TypeCourse = typeCourse,
	                    StudentId = studentId
	                },
	                commandType: CommandType.StoredProcedure).ToList();
	        }
	        catch (Exception ex)
	        {
	            SaveLog.Save(ex);
	            return new List<CourseEntity>();
	        }
	    }

	    public List<CourseEntity> Load(int id)
		{
			try
			{
				return Connection.Db.Query<CourseEntity>("spCourseGet", new {ID = id},
					commandType: CommandType.StoredProcedure).ToList();
			}
			catch (Exception ex)
			{
				SaveLog.Save(ex);
				return new List<CourseEntity>();
			}
		}
        
	    public List<CourseEntity> LoadType(int typeid)
	    {
	        try
	        {
	            return Connection.Db.Query<CourseEntity>("spCourseLoadType", new { TypeId = typeid },
	                commandType: CommandType.StoredProcedure).ToList();
	        }
	        catch (Exception ex)
	        {
	            SaveLog.Save(ex);
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
				SaveLog.Save(ex);
				return new CourseEntity();
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
						NumberCourse = "%" + data.NumberCourse + "%",
						VAHED = data.Vahed,
						TypeCourse = data.TypeCourse,
						Title = "%" + data.Title + "%",
						DateStart = "%" + data.DateStart + "%",
						TimeCourse = "%" + data.TimeCourse + "%",
						TimeQuiz = "%" + data.TimeQuiz + "%",
						Length = "%" + data.Length + "%",
						Address = "%" + data.Address + "%",
						TeacherId = data.TeacherId,
						Description = "%" + data.Description + "%",
					    Link = "%" + data.Link + "%",
                        Active = data.Active,
					}, commandType: CommandType.StoredProcedure).ToList();
			}
			catch (Exception ex)
			{
				SaveLog.Save(ex);
				return new List<CourseEntity>();
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
						NumberCourse = data.NumberCourse,
						VAHED = data.Vahed,
						TypeCourse = data.TypeCourse,
						Title = data.Title,
						DateStart = data.DateStart,
						TimeCourse = data.TimeCourse,
						TimeQuiz = data.TimeQuiz,
						Length = data.Length,
						Address = data.Address,
						TeacherId = data.TeacherId,
						Description = data.Description,
					    Link = data.Link,
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
				return Connection.Db.Query<int>("spCourseDel", new {ID = id},
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