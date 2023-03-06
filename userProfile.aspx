﻿<%-- <%@ Page Title="" Language="C#" MasterPageFile="~/MASTERPAGE.Master" AutoEventWireup="true" CodeBehind="userProfile.aspx.cs" Inherits="HOME.WebForm3" %> --%>
<%-- <%@ Page Title="" Language="C#" AutoEventWireup="true" Inherits="HOME.userProfile" %> --%>
<%@ Page Title="" Language="C#" MasterPageFile="~/MASTERPAGE.Master" AutoEventWireup="true" CodeBehind="userProfile.aspx.cs" Inherits="HOME.userProfile" %> 
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!DOCTYPE html>

<html>
<head>
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet"/>
    <link href="CSS/userProfile%20css.css" rel="stylesheet"/>
</head>
<body>
<section>
    <%
        string pfpUrl = "/images/user.png";

        if (Session["pfpUrl"] != null && Session["pfpUrl"] != DBNull.Value && !string.IsNullOrWhiteSpace(Session["pfpUrl"].ToString()))
        {
            pfpUrl = (string)Session["pfpUrl"];
        }

        Console.WriteLine(pfpUrl);
    %>
        <div class="top">
            <div class="ml-5 how-img">
                <img src="<%= HttpUtility.HtmlDecode(pfpUrl) %>" class="rounded-circle img-fluid" alt="" style="border: 1px solid #ddd;
                                 border-radius: 4px; padding: 5px; width: 175px; height: 175px";/>
            </div>
            <div class="usersName">
                <h2 class='nameText'><%= Session["firstname"].ToString() %> <%= Session["lastname"].ToString() %> </h2>
            </div>
        </div>
</section>

<form method="post">
    <div class="mid">
        <div class="details">
        
            <div class="card ml-3">
                <div class="form-outline p-1">
                    <label class="form-label" for="">E-mail</label>
                    <input type="text" name="email" ID="txtemailAddress" class="a form-control form-control-lg" placeholder="Enter old or new e-mail" required/>
                    <label class="form-label">Profile Picture
                    </label>
                    <asp:TextBox ID="txtPfpUrl" runat="server"  class="form-control form-control-lg"
                                                         placeholder="Image URL"> </asp:TextBox>
                   
                        <label class="form-label" for="">Gender</label>
                        <input name="gender" type="text" ID="txtgender" class="b form-control form-control-lg" placeholder="Enter gender" required/>
                
                    <label class="form-label" for=""> Password</label>
                    <input name="password" type="password" ID="txtpass" class="c form-control form-control-lg" placeholder="Ener new password" required/>
                </div>
            </div>

    </div>
    </div>

    <div class="buttons">
       
            <a class="back btn btn-secondary btn-block rounded-1 m-3" href="/HOMEPAGE">Back</a>
      

     

        <asp:Button runat="server" CssClass="save btn btn-primary btn-block rounded-1 m-3" ID="updatebtn" OnClick="updatebtn_Click" Text="Update" />
    </div>
    
</form>
</body>
</html>
</asp:Content>