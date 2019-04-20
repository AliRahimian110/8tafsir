using System.ComponentModel;

namespace TafsirLib.Entity
{
	public class LinksEntity 
	{
		#region Properties

		[DisplayName("شناسه")]
		public int Id { get; set; } = 0;

		[DisplayName("عنوان")]
		public string TitleLink { get; set; } = string.Empty;

		[DisplayName("آدرس")]
		public string Address { get; set; } = string.Empty;

		[DisplayName("تصویر")]
		public string Image { get; set; } = string.Empty;

		[DisplayName("توضیحات")]
		public string Description { get; set; } = string.Empty;

		[DisplayName("فعال")]
		public bool Active { get; set; } = false;

		#endregion Properties

	}
}