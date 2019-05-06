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
						Id = data.Id,
						NewsId = data.NewsId,
						NewsType = data.NewsType,
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
				return Connection.Db.Query<CommentsEntity>("spCommentsGet", new {Id = id},
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
						Id = data.Id,
						NewsId = data.NewsId,
						NewsType = data.NewsType,
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
				return Connection.Db.Query<int>("spCommentsDel", new {Id = id},
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