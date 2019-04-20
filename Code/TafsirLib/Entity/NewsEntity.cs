using System.ComponentModel;

namespace TafsirLib.Entity
{
	public class NewsEntity 
	{
		#region Properties

		[DisplayName("شناسه")]
		public int Id { get; set; } = 0;

		[DisplayName("نوع خبر")]
		public int TypeId { get; set; } = 0;

		[DisplayName("عنوان")]
		public string TitleNews { get; set; } = string.Empty;

		[DisplayName("توضیحات")]
		public string Description { get; set; } = string.Empty;

		[DisplayName("متن")]
		public string TextNews { get; set; } = string.Empty;

		[DisplayName("نویسنده")]
		public string Writer { get; set; } = string.Empty;

		[DisplayName("فعال")]
		public bool Active { get; set; } = false;

		[DisplayName("بازدید")]
		public int Viewed { get; set; } = 0;

		[DisplayName("ثبت کننده")]
		public int InsertUser { get; set; } = 0;

		[DisplayName("تاریخ ورود")]
		public string InsertDate { get; set; } = string.Empty;

		[DisplayName("کلید واژه")]
		public string Keyword { get; set; } = string.Empty;

		#endregion Properties

	}
}