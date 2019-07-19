using System;
using System.Net;
using System.Net.Mail;

namespace TafsirLib.Tools
{
    public class Email
    {
        private string EmailFrom { get; } = "mytafsir123@gmail.com";

        private string EmailPass { get; } = "mytafsir123456";

        public string EmailHost { get; } = "smtp.gmail.com";

        public int EmailPort { get; } = 587; //25; // default port for gmail

        public bool Send(string emailto, string emailsubject, string emailbody)
        {
            try
            {
                var mailmessage = new MailMessage();
                mailmessage.To.Add(emailto);
                mailmessage.From = new MailAddress(EmailFrom);
                mailmessage.Subject = emailsubject;
                mailmessage.Body = emailbody;
                mailmessage.Priority = MailPriority.High;

                //smtp Client details
                var smtpclient = new SmtpClient();
                smtpclient.UseDefaultCredentials = false;
                // here you have to give your username and password
                smtpclient.Credentials = new NetworkCredential(EmailFrom, EmailPass);
                smtpclient.Port = EmailPort; 
                smtpclient.EnableSsl = true;
                smtpclient.Host = EmailHost;
                smtpclient.Timeout = 60000;
                smtpclient.Send(mailmessage);
                return true;
            }
            catch (Exception ex)
            {
                SaveLog.Save(ex);
                return false;
            }
        }
    }
}
