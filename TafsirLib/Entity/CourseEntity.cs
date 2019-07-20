using System.ComponentModel;

namespace TafsirLib.Entity
{
	public class CourseEntity 
	{
        #region Properties

	    [DisplayName("ردیف")]
	    public int Row { get; set; } = 0;

	    [DisplayName("شناسه")]
	    public int Id { get; set; } = 0;

        [DisplayName("شماره درس")]
		public string NumberCourse { get; set; } = string.Empty;

		[DisplayName("واحد")]
		public int Vahed { get; set; } = 0;

		[DisplayName("TypeCourse")]
		public int TypeCourse { get; set; } = 0;

		[DisplayName("عنوان")]
		public string Title { get; set; } = string.Empty;

		[DisplayName("تاریخ شروع")]
		public string DateStart { get; set; } = string.Empty;

		[DisplayName("زمان")]
		public string TimeCourse { get; set; } = string.Empty;

		[DisplayName("زمان")]
		public string TimeQuiz { get; set; } = string.Empty;

		[DisplayName("مدت")]
		public string Length { get; set; } = string.Empty;

		[DisplayName("آدرس")]
		public string Address { get; set; } = string.Empty;

	    [DisplayName("استاد")]
	    public int TeacherId { get; set; } = 0;

	    [DisplayName("استاد")]
	    public string TeacherName { get; set; } = string.Empty;

	    [DisplayName("توضیحات")]
	    public string Description { get; set; } = string.Empty;

	    [DisplayName("Link")]
	    public string Link { get; set; } = string.Empty;

        [DisplayName("فعال")]
		public bool Active { get; set; } = false;

	    [DisplayName("ثبت نام شده")]
	    public bool Reg { get; set; } = false;

        #endregion Properties

    }
}