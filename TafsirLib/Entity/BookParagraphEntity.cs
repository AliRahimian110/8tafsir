using System.ComponentModel;

namespace TafsirLib.Entity
{
	public class BookParagraphEntity 
	{
		#region Properties

		[DisplayName("شناسه")]
		public int Id { get; set; } = 0;

		[DisplayName("شناسه کتاب")]
		public int BookId { get; set; } = 0;

		[DisplayName("عنوان")]
		public int TitleNumber { get; set; } = 0;

		[DisplayName("عدد تیتر")]
		public string HeadrNumber { get; set; } = string.Empty;

		[DisplayName("عنوان")]
		public string Title { get; set; } = string.Empty;

		[DisplayName("متن")]
		public string Text { get; set; } = string.Empty;

		#endregion Properties

	}
}