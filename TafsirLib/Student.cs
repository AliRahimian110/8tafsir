using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using Dapper;
using TafsirLib.Entity;
using TafsirLib.Tools;

namespace TafsirLib
{
	public class Student 
	{
		public List<StudentEntity> Load()
		{
			try
			{
				return Connection.Db.Query<StudentEntity>("spStudentLoad", null,
					commandType: CommandType.StoredProcedure).ToList();
			}
			catch (Exception ex)
			{
				SaveLog.Save(ex);
				return new List<StudentEntity>();
			}
		}

		public List<StudentEntity> Search(StudentEntity data)
		{
			try
			{
				return Connection.Db.Query<StudentEntity>("spStudentSearch",
					new
					{
						Id = data.Id,
						FirstName = "%" + data.FirstName + "%",
						LastName = "%" + data.LastName + "%",
						UserName = "%" + data.UserName + "%",
						Password = "%" + data.Password + "%",
						Image = "%" + data.Image + "%",
						Active = data.Active,
						BirthDate = "%" + data.BirthDate + "%",
						Address = "%" + data.Address + "%",
						Email = "%" + data.Email + "%",
						Tel = "%" + data.Tel + "%",
					}, commandType: CommandType.StoredProcedure).ToList();
			}
			catch (Exception ex)
			{
				SaveLog.Save(ex);
				return new List<StudentEntity>();
			}
		}

		public StudentEntity Get(int id)
		{
			try
			{
				return Connection.Db.Query<StudentEntity>("spStudentGet", new {Id = id},
					commandType: CommandType.StoredProcedure).SingleOrDefault() ?? new StudentEntity();
			}
			catch (Exception ex)
			{
				SaveLog.Save(ex);
				return new StudentEntity();
			}
		}

		public int Save(StudentEntity data)
		{
			try
			{
				return Connection.Db.Query<int>("spStudentSet",
					new
					{
						Id = data.Id,
						FirstName = data.FirstName,
						LastName = data.LastName,
						UserName = data.UserName,
						Password = data.Password,
						Image = data.Image,
						Active = data.Active,
						BirthDate = data.BirthDate,
						Address = data.Address,
						Email = data.Email,
						Tel = data.Tel,
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
				return Connection.Db.Query<int>("spStudentDel", new {Id = id},
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