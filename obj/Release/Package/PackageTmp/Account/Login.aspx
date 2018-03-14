<%@ Page Title="Log In" Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeBehind="Login.aspx.vb" Inherits="OnlineExam.Login" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

    <p>
          Please enter your username and password.
        <asp:HyperLink ID="RegisterHyperLink" runat="server" EnableViewState="false">Register</asp:HyperLink> if you don't have an account.
    </p>    
    <div class ="accountInfo">
    <fieldset class="login">
                    <legend>Account Information</legend>
                        <asp:Label ID="lblUserName" runat="server" AssociatedControlID="txtUserName" CssClass ="lblleftmargin">Username:</asp:Label>
                        <asp:TextBox ID="txtUserName" runat="server" CssClass="textEntry"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="txtUserName" 
                             CssClass="failureNotification" ErrorMessage="User Name is required." ToolTip="User Name is required." 
                             ValidationGroup="LoginUserValidationGroup">*</asp:RequiredFieldValidator>
                        <asp:Label ID="lblPassword" runat="server" AssociatedControlID="txtPassword" CssClass ="lblleftmargin">Password:</asp:Label>
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="txtPassword" 
                             CssClass="failureNotification" ErrorMessage="Password is required." ToolTip="Password is required." 
                             ValidationGroup="LoginUserValidationGroup">*</asp:RequiredFieldValidator><br />
                        <asp:CheckBox ID="RememberMe" runat="server"/>
                        <asp:Label ID="RememberMeLabel" runat="server" AssociatedControlID="RememberMe" CssClass="inline">Keep me logged in</asp:Label><br /><br />
                        <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Log In" ValidationGroup="LoginUserValidationGroup" CssClass ="BtnSave" />
        </fieldset>
    </div>
     
</asp:Content>