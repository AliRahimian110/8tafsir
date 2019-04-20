using System.ComponentModel;

namespace TafsirLib.Entity
{
	public class CourseRegistrationEntity 
	{
		#region Properties

		[DisplayName("شناسه")]
		public int Id { get; set; } = 0;

		[DisplayName("شناسه درس")]
		public int CourseId { get; set; } = 0;

		[DisplayName("شناسه دانشجو")]
		public int StudentId { get; set; } = 0;

		[DisplayName("زمان")]
		public string DateTime { get; set; } = string.Empty;

		#endregion Properties

	}
}