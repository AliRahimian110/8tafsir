using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using Dapper;
using TafsirLib.Entity;
using TafsirLib.Tools;

namespace TafsirLib
{
	public class BookParagraph 
	{
		public List<BookParagraphEntity> Load()
		{
			try
			{
				return Connection.Db.Query<BookParagraphEntity>("spBookParagraphLoad", null,
					commandType: CommandType.StoredProcedure).ToList();
			}
			catch (Exception ex)
			{
				Tools.SaveLog.Save(ex);
				return new List<BookParagraphEntity>();
			}
		}

		public List<BookParagraphEntity> Search(BookParagraphEntity data)
		{
			try
			{
				return Connection.Db.Query<BookParagraphEntity>("spBookParagraphSearch",
					new
					{
						ID = data.Id,
						BookId = data.BookId,
						TitleNumber = data.TitleNumber,
						HeadrNumber = "%" + data.HeadrNumber + "%",
						Title = "%" + data.Title + "%",
						Text = "%" + data.Text + "%",
					}, commandType: CommandType.StoredProcedure).ToList();
			}
			catch (Exception ex)
			{
				Tools.SaveLog.Save(ex);
				return new List<BookParagraphEntity>();
			}
		}

		public BookParagraphEntity Get(int id)
		{
			try
			{
				return Connection.Db.Query<BookParagraphEntity>("spBookParagraphGet", new {ID = id},
					commandType: CommandType.StoredProcedure).SingleOrDefault() ?? new BookParagraphEntity();
			}
			catch (Exception ex)
			{
				Tools.SaveLog.Save(ex);
				return new BookParagraphEntity();
			}
		}

		public int Save(BookParagraphEntity data)
		{
			try
			{
				return Connection.Db.Query<int>("spBookParagraphSet",
					new
					{
						ID = data.Id,
						BookId = data.BookId,
						TitleNumber = data.TitleNumber,
						HeadrNumber = data.HeadrNumber,
						Title = data.Title,
						Text = data.Text,
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
				return Connection.Db.Query<int>("spBookParagraphDel", new {ID = id},
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