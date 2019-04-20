using System.ComponentModel;

namespace TafsirLib.Entity
{
	public class MobalegEntity 
	{
		#region Properties

		[DisplayName("شناسه")]
		public int Id { get; set; } = 0;

		[DisplayName("نام")]
		public string FirstName { get; set; } = string.Empty;

		[DisplayName("نام خانوادگی")]
		public string LastName { get; set; } = string.Empty;

		[DisplayName("نام ارگان")]
		public string ComName { get; set; } = string.Empty;

		[DisplayName("کد ملی")]
		public string CodeMeli { get; set; } = string.Empty;

		[DisplayName("تلفن")]
		public string Tel { get; set; } = string.Empty;

		[DisplayName("ایمیل")]
		public string Email { get; set; } = string.Empty;

		[DisplayName("شهر")]
		public string City { get; set; } = string.Empty;

		[DisplayName("تاریخ شروع")]
		public string DateStart { get; set; } = string.Empty;

		[DisplayName("تاریخ پایان")]
		public string DateEnd { get; set; } = string.Empty;

		[DisplayName("توضیحات")]
		public string Description { get; set; } = string.Empty;

		[DisplayName("ارسال شد")]
		public bool Send { get; set; } = false;

		[DisplayName("بررسی شد")]
		public bool Checked { get; set; } = false;

		[DisplayName("تاریخ")]
		public string InaertDate { get; set; } = string.Empty;

		#endregion Properties

	}
}