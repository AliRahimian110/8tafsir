using System.ComponentModel;

namespace TafsirLib.Entity
{
	public class UserEntity 
	{
		#region Properties

		[DisplayName("شناسه")]
		public int Id { get; set; } = 0;

		[DisplayName("نام")]
		public string FirstName { get; set; } = string.Empty;

		[DisplayName("نام خانوادگی")]
		public string LastName { get; set; } = string.Empty;

		[DisplayName("نام کاربری")]
		public string UserName { get; set; } = string.Empty;

		[DisplayName("رمز عبور")]
		public string Password { get; set; } = string.Empty;

		[DisplayName("فعال")]
		public bool Active { get; set; } = false;

		[DisplayName("تصویر")]
		public string Image { get; set; } = string.Empty;

		[DisplayName("نقش")]
		public int RulId { get; set; } = 0;

		#endregion Properties

	}
}