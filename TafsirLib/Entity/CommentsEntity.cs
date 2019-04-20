using System.ComponentModel;

namespace TafsirLib.Entity
{
	public class CommentsEntity 
	{
		#region Properties

		[DisplayName("شناسه")]
		public int Id { get; set; } = 0;

		[DisplayName("شناسه خبر")]
		public int NewsId { get; set; } = 0;

		[DisplayName("نام")]
		public string Name { get; set; } = string.Empty;

		[DisplayName("ایمیل")]
		public string Email { get; set; } = string.Empty;

		[DisplayName("نظر")]
		public string Comment { get; set; } = string.Empty;

		[DisplayName("زمان")]
		public string DateTime { get; set; } = string.Empty;

		[DisplayName("نمایش")]
		public bool ShowMess { get; set; } = false;

		[DisplayName("پاسخ")]
		public string Reply { get; set; } = string.Empty;

		[DisplayName("پاسخ دهنده")]
		public int UserReply { get; set; } = 0;

		[DisplayName("زمان پاسخ")]
		public string DateTimeReply { get; set; } = string.Empty;

		#endregion Properties

	}
}