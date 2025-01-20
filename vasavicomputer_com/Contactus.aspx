<%@ Page Title="VasaviComputer Academy:-Contact Us" Language="C#" MasterPageFile="~/VasaviMaster.master"
    AutoEventWireup="true" CodeFile="Contactus.aspx.cs" Inherits="profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
<link href="style/message.css"rel="stylesheet" type="text/css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="bodyContent">
        <div>
            <img src="images/contactus.jpg" /></div>
        <div class="boxContent">
            <div class="boxHeaderText1">
                You can post your queries through E-mail If you require technical support or need
                assistance in using Computer Sales & services, Tally, you can email our customer
                support team directly on support@vasavicomputer.com One of our support representatives
                will typically respond to your e-mail request within 24 hours.
                <div class="dvProducts">
                    <div class="left Productimage1">
                        <ul class="ulStar">
                                                    <li>You can write to us at :<b>Vasavi Computer Academy, # 10, First Floor, Mundy Street,Vellore – 632 004 </b></li>
     <br />
                            <li>You can call us on&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :<img src="images/telephone.gif" />
                                0416-2226814, 4200814</li>
                            <br />
                            <li>You can e-mail us on&nbsp;&nbsp; : <a href="mailto:support@vasavicomputer.com">support@vasavicomputer.com</a></li>
                       
                        </ul>
                    </div>
                    
                </div>
                <br class="clearfloat" />
                <br />
                
                        <div id="divMsg" runat="server" visible="false" enableviewstate="false" class="error" ></div><br />
<form runat="server">
                <table id="tblForm">
                    <tr style="height: 25px;">
                        <td align="left" bgcolor="#C4DFF5" colspan="2">
                            <b>Enquiry Form</b>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" bgcolor="#D8EDED">
                            <font color="#FF6633">*</font>Fields are required! &nbsp;&nbsp;&nbsp;<font color="#FF6633">!</font>
                            Fields are invalid!
                        </td>
                    </tr>
                    <tr>
                        <td align="right" bgcolor="#C4DFF5">
                            <font color="#FF6633">* </font>Your Full Name
                        </td>
                        <td width="58%" bgcolor="#C4DFF5">
                            <asp:TextBox ID="txtName" CssClass="textbox" runat="server"> </asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName"
                                ErrorMessage="*" Font-Size="XX-Small"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" bgcolor="#F0F7FC">
                            <font color="#FF6633">* </font>Email id
                        </td>
                        <td bgcolor="#F0F7FC">
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="textbox"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail"
                                ErrorMessage="*" Font-Size="XX-Small" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail"
                                Display="Dynamic" ErrorMessage="!" Font-Size="XX-Small" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" bgcolor="#C4DFF5">
                            <font color="#FF6633">* </font>Company Name
                        </td>
                        <td bgcolor="#C4DFF5">
                            <asp:TextBox ID="txtCompanyName" runat="server" CssClass="textbox"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCompanyName"
                                ErrorMessage="*" Font-Size="XX-Small"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" bgcolor="#F0F7FC">
                            Phone No
                        </td>
                        <td bgcolor="#F0F7FC">
                            <asp:TextBox ID="txtPhoneNumber" runat="server" CssClass="textbox"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" bgcolor="#C4DFF5">
                            Your Website URL
                        </td>
                        <td bgcolor="#C4DFF5">
                            <asp:TextBox ID="txtURL" runat="server" CssClass="textbox"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" bgcolor="#F0F7FC">
                            <font color="#FF6633">* </font>Message
                        </td>
                        <td bgcolor="#F0F7FC">
                            <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtMessage"
                                ErrorMessage="*" Font-Size="XX-Small"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center" bgcolor="#C4DFF5">
                            <asp:LinkButton ID="lbtnSend" runat="server" CssClass="button" OnClick="SendMail_Click">Send</asp:LinkButton>
                        </td>
                    </tr>
                </table>
                </form>
            </div>
        </div>
    </div>
</asp:Content>
