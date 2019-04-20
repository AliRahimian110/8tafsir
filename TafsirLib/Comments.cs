using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using Dapper;
using TafsirLib.Entity;
using TafsirLib.Tools;

namespace TafsirLib
{
	public class Comments 
	{
		public List<CommentsEntity> Load()
		{
			try
			{
				return Connection.Db.Query<CommentsEntity>("spCommentsLoad", null,
					commandType: CommandType.StoredProcedure).ToList();
			}
			catch (Exception ex)
			{
				Tools.SaveLog.Save(ex);
				return new List<CommentsEntity>();
			}
		}

		public List<CommentsEntity> Search(CommentsEntity data)
		{
			try
			{
				return Connection.Db.Query<CommentsEntity>("spCommentsSearch",
					new
					{
						ID = data.Id,
						NewsId = data.NewsId,
						Name = "%" + data.Name + "%",
						Email = "%" + data.Email + "%",
						Comment = "%" + data.Comment + "%",
						DateTime = "%" + data.DateTime + "%",
						ShowMess = data.ShowMess,
						Reply = "%" + data.Reply + "%",
						UserReply = data.UserReply,
						DateTimeReply = "%" + data.DateTimeReply + "%",
					}, commandType: CommandType.StoredProcedure).ToList();
			}
			catch (Exception ex)
			{
				Tools.SaveLog.Save(ex);
				return new List<CommentsEntity>();
			}
		}

		public CommentsEntity Get(int id)
		{
			try
			{
				return Connection.Db.Query<CommentsEntity>("spCommentsGet", new {ID = id},
					commandType: CommandType.StoredProcedure).SingleOrDefault() ?? new CommentsEntity();
			}
			catch (Exception ex)
			{
				Tools.SaveLog.Save(ex);
				return new CommentsEntity();
			}
		}

		public int Save(CommentsEntity data)
		{
			try
			{
				return Connection.Db.Query<int>("spCommentsSet",
					new
					{
						ID = data.Id,
						NewsId = data.NewsId,
						Name = data.Name,
						Email = data.Email,
						Comment = data.Comment,
						DateTime = data.DateTime,
						ShowMess = data.ShowMess,
						Reply = data.Reply,
						UserReply = data.UserReply,
						DateTimeReply = data.DateTimeReply,
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
				return Connection.Db.Query<int>("spCommentsDel", new {ID = id},
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