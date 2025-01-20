using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Mail;


public partial class profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void SendMail_Click(object sender, EventArgs e)
    {
        divMsg.Visible = true;
        if (this.SendeMail())
        {
            divMsg.InnerHtml = "Your Query has been successfully sent! <br />Our authorized person will contact you soon!";
            divMsg.Attributes.Add("class", "success");
            txtName.Text = "";
            txtEmail.Text = "";
            txtCompanyName.Text = "";
            txtPhoneNumber.Text = "";
            txtURL.Text = "";
            txtMessage.Text = "";
        }
        else
        {
            divMsg.InnerHtml = "Sending e-mail failed!";
            divMsg.Attributes.Add("class", "error");
        }
    }

    #region Send Mail
    private bool SendeMail()
    {
        MailMessage oMailMessage = new MailMessage();
        oMailMessage.From = txtEmail.Text.Trim();
        oMailMessage.To = "support@vasavicomputer.com";
        oMailMessage.Subject = "Enquiry from " + txtName.Text.Trim() + ", " + txtCompanyName.Text.Trim();
        oMailMessage.Body = this.sBody();
        oMailMessage.BodyFormat = MailFormat.Html;
        SmtpMail.SmtpServer = "localhost";
        SmtpMail.Send(oMailMessage);
        //Response.Write(this.sBody());
        return true;
    }
    #endregion

    #region Email Template
    private string sBody()
    {
        return "<table width=\"700px\" style=\"border:3px solid; border-color:#757373;font-family:Verdana;color:#575656;font-size:11px;\"><tr><td style='padding:5px 5px 5px 5px;'>"
                + "<div>Dear Sir/Mam,<br /><br />" + txtMessage.Text.Trim() + ""
                + "</div><br />Thanks & Regards,<br />" + txtName.Text.Trim() + ",<br />" + txtCompanyName.Text.Trim() + ",<br />Ph: " + txtPhoneNumber.Text.Trim() + ",<br />" + txtURL.Text.Trim() + "<br /><br />"
                + "Copyrights © " + DateTime.Now.Year.ToString() + " <b><a href='http://www.vasavicomputer.com'>www.vasavicomputer.com</a></b> All Rights Reserved.</td></tr></table>";
    }
    #endregion
}