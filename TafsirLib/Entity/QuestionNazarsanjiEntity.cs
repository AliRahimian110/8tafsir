using System.ComponentModel;

namespace TafsirLib.Entity
{
	public class QuestionNazarsanjiEntity 
	{
		#region Properties

		[DisplayName("شناسه")]
		public int Id { get; set; } = 0;

		[DisplayName("Question")]
		public string Question { get; set; } = string.Empty;

		[DisplayName("فعال")]
		public bool Active { get; set; } = false;

		#endregion Properties

	}
}