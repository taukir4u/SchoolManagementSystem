<%@ Page Title="Update Result" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="UpdateResult.aspx.cs" Inherits="School.UpdateResult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="h4 text-center">
        Update Result</div>
    <hr />
    <div class="row">
        <div class="form-group form-horizontal col-md-6 col-md-offset-0">
            <label for="inputEmail3" class="col-sm-3 control-label" runat="server">
                Class</label>
            <div class="col-sm-9">
                <input type="text" class="form-control input-sm" runat="server" id="txtbxClass" placeholder="class" />
            </div>
        </div>
    </div>
    <div class="row">
        <div class="form-group form-horizontal col-md-6 col-md-offset-0">
            <label for="inputEmail3" class="col-sm-3 control-label" runat="server">
                Section</label>
            <div class="col-sm-9">
                <input type="text" class="form-control input-sm" runat="server" id="txtbxSection"
                    placeholder="section" />
            </div>
        </div>
    </div>
    <div class="row">
        <div class="form-group form-horizontal col-md-6 col-md-offset-0">
            <label class="col-md-3 control-label" style="text-align: left" runat="server">
                Roll</label>
            <div class="col-sm-9">
                <input type="text" class="form-control input-sm" runat="server" id="txtbxRollNo"
                    placeholder="roll" />
            </div>
        </div>
    </div>
    <div class="table-responsive">
        <table class="table table-bordered" runat="server">
            <tr>
                <td>
                    <asp:Label ID="sub1" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="sub2" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="sub3" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="sub4" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="sub5" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="sub6" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
