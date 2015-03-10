<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="School._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="body">
    <h3 class="text-center text-info">
        Admin Panel</h3>
    <hr />
    <div class="row">
        <div class="col-md-6 col-md-offset-3" style="margin-top: 10px">
            <div class="form-group">
                <label for="exampleInputEmail1">
                    Username</label>
                <input type="text" class="form-control input-sm" id="userAdmin" />
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6 col-md-offset-3" style="margin-top: 10px">
            <div class="form-group">
                <label for="exampleInputEmail1">
                    Password</label>
                <input type="password" class="form-control input-sm" id="Password" />
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-3 col-md-offset-3" style="margin-top: 10px">
            <asp:Button ID="loginAdmin" runat="server" Text="Login" class="btn btn-default input-sm" />
        </div>
    </div>
</asp:Content>
