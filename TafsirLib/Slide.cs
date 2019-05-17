using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using Dapper;
using TafsirLib.Entity;
using TafsirLib.Tools;

namespace TafsirLib
{
	public class Slide 
	{
		public List<SlideEntity> Load()
		{
			try
			{
				return Connection.Db.Query<SlideEntity>("spSlideLoad", null,
					commandType: CommandType.StoredProcedure).ToList();
			}
			catch (Exception ex)
			{
				Tools.SaveLog.Save(ex);
				return new List<SlideEntity>();
			}
		}

		public List<SlideEntity> Load(int id)
		{
			try
			{
				return Connection.Db.Query<SlideEntity>("spSlideGet", new {Id = id},
					commandType: CommandType.StoredProcedure).ToList();
			}
			catch (Exception ex)
			{
				Tools.SaveLog.Save(ex);
				return new List<SlideEntity>();
			}
		}

		public SlideEntity Get(int id)
		{
			try
			{
				return Connection.Db.Query<SlideEntity>("spSlideGet", new {Id = id},
					commandType: CommandType.StoredProcedure).SingleOrDefault() ?? new SlideEntity();
			}
			catch (Exception ex)
			{
				Tools.SaveLog.Save(ex);
				return new SlideEntity();
			}
		}

		public List<SlideEntity> Search(SlideEntity data)
		{
			try
			{
				return Connection.Db.Query<SlideEntity>("spSlideSearch",
					new
					{
						Id = data.Id,
						Image = "%" + data.Image + "%",
						Active = data.Active,
					}, commandType: CommandType.StoredProcedure).ToList();
			}
			catch (Exception ex)
			{
				Tools.SaveLog.Save(ex);
				return new List<SlideEntity>();
			}
		}

		public int Save(SlideEntity data)
		{
			try
			{
				return Connection.Db.Query<int>("spSlideSet",
					new
					{
						Id = data.Id,
						Image = data.Image,
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
				return Connection.Db.Query<int>("spSlideDel", new {Id = id},
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