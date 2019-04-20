using System.ComponentModel;

namespace TafsirLib.Entity
{
	public class BookNameEntity 
	{
		#region Properties

		[DisplayName("شناسه")]
		public int Id { get; set; } = 0;

		[DisplayName("نام")]
		public string BookName { get; set; } = string.Empty;

		[DisplayName("نویسنده")]
		public string Writer { get; set; } = string.Empty;

		[DisplayName("مترجم")]
		public string Translator { get; set; } = string.Empty;

		[DisplayName("ناشر")]
		public string Publisher { get; set; } = string.Empty;

		[DisplayName("فعال")]
		public bool Active { get; set; } = false;

		[DisplayName("زبان")]
		public string Language { get; set; } = string.Empty;

		[DisplayName("صفحه")]
		public int Pages { get; set; } = 0;

		[DisplayName("بازدید")]
		public int Viewed { get; set; } = 0;

		[DisplayName("شناسه کاربر")]
		public int InsertUserId { get; set; } = 0;

		[DisplayName("تاریخ ورود")]
		public string InsertDate { get; set; } = string.Empty;

		[DisplayName("کلید واژه")]
		public string Keyword { get; set; } = string.Empty;

		[DisplayName("توضیحات")]
		public string Description { get; set; } = string.Empty;

		#endregion Properties

	}
}