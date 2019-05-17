using System.ComponentModel;

namespace TafsirLib.Entity
{
	public class SlideEntity 
	{
		#region Properties

		[DisplayName("شناسه")]
		public int Id { get; set; } = 0;

		[DisplayName("تصویر")]
		public string Image { get; set; } = string.Empty;

		[DisplayName("فعال")]
		public bool Active { get; set; } = false;

		#endregion Properties

	}
}