using System.ComponentModel;

namespace TafsirLib.Entity
{
	public class CourseFlieEntity 
	{
		#region Properties

		[DisplayName("شناسه")]
		public int Id { get; set; } = 0;

		[DisplayName("شناسه درس")]
		public int CourseId { get; set; } = 0;

		[DisplayName("نام")]
		public string FileName { get; set; } = string.Empty;

		[DisplayName("نوع فایل")]
		public string FileType { get; set; } = string.Empty;

		[DisplayName("آدرس")]
		public string Address { get; set; } = string.Empty;

		[DisplayName("فعال")]
		public bool Active { get; set; } = false;

		#endregion Properties

	}
}