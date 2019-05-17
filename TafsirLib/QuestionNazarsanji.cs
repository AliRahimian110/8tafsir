using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using Dapper;
using TafsirLib.Tools;
using TafsirLib.Entity;

namespace TafsirLib
{
	public class QuestionNazarsanji 
	{
		public List<QuestionNazarsanjiEntity> Load()
		{
			try
			{
				return Connection.Db.Query<QuestionNazarsanjiEntity>("spQuestionNazarsanjiLoad", null,
					commandType: CommandType.StoredProcedure).ToList();
			}
			catch (Exception ex)
			{
                SaveLog.Save(ex);
				return new List<QuestionNazarsanjiEntity>();
			}
		}

		public List<QuestionNazarsanjiEntity> Load(int id)
		{
			try
			{
				return Connection.Db.Query<QuestionNazarsanjiEntity>("spQuestionNazarsanjiGet", new {Id = id},
					commandType: CommandType.StoredProcedure).ToList();
			}
			catch (Exception ex)
			{
				SaveLog.Save(ex);
				return new List<QuestionNazarsanjiEntity>();
			}
		}

		public QuestionNazarsanjiEntity Get(int id)
		{
			try
			{
				return Connection.Db.Query<QuestionNazarsanjiEntity>("spQuestionNazarsanjiGet", new {Id = id},
					commandType: CommandType.StoredProcedure).SingleOrDefault() ?? new QuestionNazarsanjiEntity();
			}
			catch (Exception ex)
			{
				SaveLog.Save(ex);
				return new QuestionNazarsanjiEntity();
			}
		}

		public List<QuestionNazarsanjiEntity> Search(QuestionNazarsanjiEntity data)
		{
			try
			{
				return Connection.Db.Query<QuestionNazarsanjiEntity>("spQuestionNazarsanjiSearch",
					new
					{
						Id = data.Id,
						Question = "%" + data.Question + "%",
						Active = data.Active,
					}, commandType: CommandType.StoredProcedure).ToList();
			}
			catch (Exception ex)
			{
				SaveLog.Save(ex);
				return new List<QuestionNazarsanjiEntity>();
			}
		}

		public int Save(QuestionNazarsanjiEntity data)
		{
			try
			{
				return Connection.Db.Query<int>("spQuestionNazarsanjiSet",
					new
					{
						Id = data.Id,
						Question = data.Question,
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
				return Connection.Db.Query<int>("spQuestionNazarsanjiDel", new {Id = id},
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