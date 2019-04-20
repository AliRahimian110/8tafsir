using System.ComponentModel;

namespace TafsirLib.Entity
{
	public class NewsTypeEntity 
	{
		#region Properties

		[DisplayName("شناسه")]
		public int Id { get; set; } = 0;

		[DisplayName("عنوان")]
		public string TypeName { get; set; } = string.Empty;

		#endregion Properties

	}
}