using System;
using System.Net;
using System.Net.Mail;

namespace TafsirLib.Tools
{
    public class Email
    {
        private string EmailFrom { get; } = "mytafsir@gmail.com";

        private string EmailPass { get; } = "mytafsir123";

        public string EmailHost { get; } = "smtp.gmail.com";

        public int EmailPort { get; } = 587;//25;

        public bool Send( string emailto, string emailsubject, string emailbody)
        {
            try
            {
                //MailMessage mailObj = new MailMessage(txtFrom, txtTo, txtSubject, txtBody);
                //SmtpClient SMTPServer = new SmtpClient("127.0.0.1");
                //SMTPServer.Send(mailObj);


                ////************************************
                // 
                //var smtpClient = new SmtpClient(EmailHost, EmailPort)
                //{
                //    Credentials = new System.Net.NetworkCredential(EmailFrom, EmailPass),
                //    UseDefaultCredentials = true,
                //    DeliveryMethod = SmtpDeliveryMethod.Network,
                //    EnableSsl = true
                //};

                //var mailMessage = new MailMessage(EmailFrom, txtTo)
                //{
                //    Subject = txtSubject,
                //    Body = txtBody
                //};
                //smtpClient.Send(mailMessage);
                //****************************

                var fromAddress = new MailAddress(EmailFrom, "From Name");
                var toAddress = new MailAddress(emailto, "To Name");

                var smtp = new SmtpClient
                {
                    Host = EmailHost,
                    Port = EmailPort,// 587,
                    EnableSsl = true,
                    DeliveryMethod = SmtpDeliveryMethod.Network,
                    UseDefaultCredentials = false,
                    Credentials = new NetworkCredential(fromAddress.Address, EmailPass)
                };
                using (var message = new MailMessage(fromAddress, toAddress)
                {
                    Subject = emailsubject,
                    Body = emailbody
                })
                {
                    smtp.Send(message);
                }
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
