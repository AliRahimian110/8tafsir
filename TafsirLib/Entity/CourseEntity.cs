using System.ComponentModel;

namespace TafsirLib.Entity
{
	public class CourseEntity 
	{
		#region Properties

		[DisplayName("شناسه")]
		public int Id { get; set; } = 0;

		[DisplayName("نوع درس")]
		public int TypeCourse { get; set; } = 0;

		[DisplayName("عنوان")]
		public string Title { get; set; } = string.Empty;

		[DisplayName("تاریخ شروع")]
		public string DateStart { get; set; } = string.Empty;

		[DisplayName("زمان")]
		public string Time { get; set; } = string.Empty;

		[DisplayName("مدت")]
		public string Length { get; set; } = string.Empty;

		[DisplayName("آدرس")]
		public string Address { get; set; } = string.Empty;

		[DisplayName("شناسه مدرس")]
		public int TeacherId { get; set; } = 0;

		[DisplayName("توضیحات")]
		public string Description { get; set; } = string.Empty;

		[DisplayName("فعال")]
		public bool Active { get; set; } = false;

		#endregion Properties

	}
}