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
				SaveLog.Save(ex);
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
						//Password = "%" + data.Password + "%",
						Active = data.Active,
						Image = "%" + data.Image + "%",
						RulId = data.RulId,
					    Email =data.Email
                    }, commandType: CommandType.StoredProcedure).ToList();
			}
			catch (Exception ex)
			{
				SaveLog.Save(ex);
				return new List<UserEntity>();
			}
	    }

	    public UserEntity Get(int id)
	    {
	        try
	        {
	            return Connection.Db.Query<UserEntity>("spUserGet", new { ID = id },
	                       commandType: CommandType.StoredProcedure).SingleOrDefault() ?? new UserEntity();
	        }
	        catch (Exception ex)
	        {
	            SaveLog.Save(ex);
	            return new UserEntity();
	        }
	    }

	    public UserEntity Get(string user, string pass)
	    {
	        try
	        {
	            return Connection.Db.Query<UserEntity>("spUserGetUsePass", new { user = user, pass = HashCode(pass) },
                           commandType: CommandType.StoredProcedure).SingleOrDefault() ?? new UserEntity();
	        }
	        catch (Exception ex)
	        {
	            SaveLog.Save(ex);
	            return new UserEntity();
	        }
	    }

        public bool Checked(string user,string pass)
	    {
	        try
	        {
	            var t = HashCode(pass);
                return Connection.Db.Query<bool>("spUserCheck", new { user = user,pass = HashCode( pass) },
	                       commandType: CommandType.StoredProcedure).SingleOrDefault();
	        }
	        catch (Exception ex)
	        {
	            SaveLog.Save(ex);
	            return false;
	        }
	    }

	    public int Checked(string email)
	    {
	        try
	        {
	            return Connection.Db.Query<int>("spUserCheckEmail", new { email = email },
	                commandType: CommandType.StoredProcedure).SingleOrDefault();
	        }
	        catch
	        {
	            return -1;
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
						Password = HashCode(data.Password),
						Active = data.Active,
						Image = data.Image,
						RulId = data.RulId,
					    Email = data.Email
                    }, commandType: CommandType.StoredProcedure).SingleOrDefault();
			}
			catch (Exception ex)
			{
				SaveLog.Save(ex);
				return -1;
			}
		}

	    public bool ForgatPassword(string email)
	    {
	        try
	        {
	            if (Connection.Db.Query<bool>("spUserForgatPassword", new {email = email},
	                commandType: CommandType.StoredProcedure).SingleOrDefault())
	            {
	                //Sent Email
	                new Email().Send(email, "ForgatPassword", "ForgatPassword");
	                return true;
	            }
	            else
	            {
                    //
	                return false;
	            }
            }
	        catch (Exception ex)
	        {
	            SaveLog.Save(ex);
	            return false;
	        }
        }

        private string HashCode(string pass)
	    {
	        return (pass + "(*&^%$#" + pass + "*&^%$#").GetHashCode().ToString();
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
				SaveLog.Save(ex);
				return -1;
			}
		}
	}
}