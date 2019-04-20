using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using Dapper;
using TafsirLib.Entity;
using TafsirLib.Tools;

namespace TafsirLib
{
	public class User 
	{
		public List<UserEntity> Load()
		{
			try
			{
				return Connection.Db.Query<UserEntity>("spUserLoad", null,
					commandType: CommandType.StoredProcedure).ToList();
			}
			catch (Exception ex)
			{
				Tools.SaveLog.Save(ex);
				return new List<UserEntity>();
			}
		}

		public List<UserEntity> Search(UserEntity data)
		{
			try
			{
				return Connection.Db.Query<UserEntity>("spUserSearch",
					new
					{
						ID = data.Id,
						FirstName = "%" + data.FirstName + "%",
						LastName = "%" + data.LastName + "%",
						UserName = "%" + data.UserName + "%",
						Password = "%" + data.Password + "%",
						Active = data.Active,
						Image = "%" + data.Image + "%",
						RulId = data.RulId,
					}, commandType: CommandType.StoredProcedure).ToList();
			}
			catch (Exception ex)
			{
				Tools.SaveLog.Save(ex);
				return new List<UserEntity>();
			}
		}

		public UserEntity Get(int id)
		{
			try
			{
				return Connection.Db.Query<UserEntity>("spUserGet", new {ID = id},
					commandType: CommandType.StoredProcedure).SingleOrDefault() ?? new UserEntity();
			}
			catch (Exception ex)
			{
				Tools.SaveLog.Save(ex);
				return new UserEntity();
			}
		}

	    public bool Checked(string user,string pass)
	    {
	        try
	        {
	            return Connection.Db.Query<bool>("spUserGet", new { ID = 1 },
	                       commandType: CommandType.StoredProcedure).SingleOrDefault();
	        }
	        catch (Exception ex)
	        {
	            Tools.SaveLog.Save(ex);
	            return false;
	        }
	    }

        public int Save(UserEntity data)
		{
			try
			{
				return Connection.Db.Query<int>("spUserSet",
					new
					{
						ID = data.Id,
						FirstName = data.FirstName,
						LastName = data.LastName,
						UserName = data.UserName,
						Password = data.Password,
						Active = data.Active,
						Image = data.Image,
						RulId = data.RulId,
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
				return Connection.Db.Query<int>("spUserDel", new {ID = id},
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