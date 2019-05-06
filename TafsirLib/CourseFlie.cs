using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using Dapper;
using TafsirLib.Entity;
using TafsirLib.Tools;

namespace TafsirLib
{
	public class CourseFlie 
	{
		public List<CourseFlieEntity> Load()
		{
			try
			{
				return Connection.Db.Query<CourseFlieEntity>("spCourseFlieLoad", null,
					commandType: CommandType.StoredProcedure).ToList();
			}
			catch (Exception ex)
			{
				Tools.SaveLog.Save(ex);
				return new List<CourseFlieEntity>();
			}
		}

		public List<CourseFlieEntity> Search(CourseFlieEntity data)
		{
			try
			{
				return Connection.Db.Query<CourseFlieEntity>("spCourseFlieSearch",
					new
					{
						Id = data.Id,
						CourseId = data.CourseId,
						FileName = "%" + data.FileName + "%",
						FileType = "%" + data.FileType + "%",
						Address = "%" + data.Address + "%",
						Active = data.Active,
					}, commandType: CommandType.StoredProcedure).ToList();
			}
			catch (Exception ex)
			{
				Tools.SaveLog.Save(ex);
				return new List<CourseFlieEntity>();
			}
		}

		public CourseFlieEntity Get(int id)
		{
			try
			{
				return Connection.Db.Query<CourseFlieEntity>("spCourseFlieGet", new {Id = id},
					commandType: CommandType.StoredProcedure).SingleOrDefault() ?? new CourseFlieEntity();
			}
			catch (Exception ex)
			{
				Tools.SaveLog.Save(ex);
				return new CourseFlieEntity();
			}
		}

		public int Save(CourseFlieEntity data)
		{
			try
			{
				return Connection.Db.Query<int>("spCourseFlieSet",
					new
					{
						Id = data.Id,
						CourseId = data.CourseId,
						FileName = data.FileName,
						FileType = data.FileType,
						Address = data.Address,
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
				return Connection.Db.Query<int>("spCourseFlieDel", new {Id = id},
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