﻿using ContratoDigital.Models;
using MailKit.Net.Smtp;
using MimeKit;
using MimeKit.Text;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;

namespace ContratoDigital
{
    public interface IEmailService
    {
        void Send(EmailMessage emailMessage, MemoryStream stream);
        List<EmailMessage> ReceiveEmail(int maxcount = 10);
    }

    public class EmailService : IEmailService
    {
        private readonly IEmailConfiguration _emailConfiguration;

        public EmailService(IEmailConfiguration emailConfiguration)
        {
            _emailConfiguration = emailConfiguration;
        }

        public List<EmailMessage> ReceiveEmail(int maxCount = 10)
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// Servicio de envíos de correos electrónicos.
        /// </summary>
        /// <param name="emailMessage"></param>
        public void Send(EmailMessage emailMessage, MemoryStream stream)
        {
            var message = new MimeMessage();
            message.To.AddRange(emailMessage.ToAddresses.Select(x => new MailboxAddress(x.Name, x.Address)));
            message.From.AddRange(emailMessage.FromAddresses.Select(x => new MailboxAddress(x.Name, x.Address)));

            message.Subject = emailMessage.Subject;
            var builder = new BodyBuilder();
            builder.TextBody = emailMessage.Content;
            builder.Attachments.Add("ContratoAutofinanciera.pdf", stream.ToArray(), new ContentType("application", "pdf"));
            message.Body = builder.ToMessageBody();
            using (var emailClient = new SmtpClient())
            {                
                emailClient.Connect(_emailConfiguration.SmtpServer, _emailConfiguration.SmtpPort, MailKit.Security.SecureSocketOptions.None);
                emailClient.AuthenticationMechanisms.Remove("XOAUTH2");
                emailClient.Authenticate(_emailConfiguration.SmtpUsername, _emailConfiguration.SmtpPassword);
                emailClient.Send(message);
                emailClient.Disconnect(true);

            }
        }
    }
}