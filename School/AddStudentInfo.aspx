<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="AddStudentInfo.aspx.cs" Inherits="School.UpdateStudentInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="h4 text-center">
        Add Student Info</div>
    <hr />
    <div class="row">
        <div class="col-md-6">
            <div class="row form-group form-horizontal">
                <label id="Label6" for="inputEmail3" class="col-sm-5 control-label" runat="server">
                    Student Name</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="txtbxStudentName" class="form-control input-sm" runat="server" required="required"></asp:TextBox>
                </div>
            </div>
            <div class="row form-group form-horizontal">
                <label id="Label7" for="inputEmail3" class="col-sm-5 control-label" runat="server">
                    Father's Name</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="txtbxFatherName" class="form-control input-sm" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row form-group form-horizontal">
                <label id="Label10" for="inputEmail3" class="col-sm-5 control-label" runat="server">
                    Guardian's Name</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="txtbxGuardianName" class="form-control input-sm" runat="server"
                        required="required"></asp:TextBox>
                </div>
            </div>
            <div class="row form-group form-horizontal">
                <label id="Label9" for="inputEmail3" class="col-sm-5 control-label" runat="server">
                    Address</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="txtbxaddress" class="form-control" TextMode="MultiLine" runat="server"
                        required="required"></asp:TextBox>
                </div>
            </div>
            <div class="row form-group form-horizontal">
                <label id="Label4" for="inputEmail3" class="col-sm-5 control-label" runat="server">
                    Addmission Year</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="txtbxAdmissionYar" class="form-control input-sm" runat="server"
                        required="required"></asp:TextBox>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="row form-group form-horizontal">
                <label id="Label11" for="inputEmail3" class="col-sm-5 control-label" runat="server">
                    Gender</label>
                <div class="col-sm-6 text-center">
                    <asp:DropDownList ID="DropDownListGender" runat="server" Height="30px" Width="158px">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="row form-group form-horizontal">
                <label id="Label8" for="inputEmail3" class="col-sm-5 control-label" runat="server">
                    Mother's Name</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="txtbxMotherName" class="form-control input-sm" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row form-group form-horizontal">
                <label id="Label5" for="inputEmail3" class="col-sm-5 control-label" runat="server">
                    Phone No</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="txtbxPhoneNo" class="form-control input-sm" runat="server" required="required"></asp:TextBox>
                </div>
            </div>
            <div class="row form-group form-horizontal">
                <label id="Label1" for="inputEmail3" class="col-sm-5 control-label" runat="server">
                    Class</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="txtbxStudentClass" class="form-control input-sm" runat="server"
                        required="required"></asp:TextBox>
                </div>
            </div>
            <div class="row form-group form-horizontal">
                <label id="Label2" for="inputEmail3" class="col-sm-5 control-label" runat="server">
                    Section</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="txtbxSection" class="form-control input-sm" runat="server" required="required"></asp:TextBox>
                </div>
            </div>
            <div class="row form-group form-horizontal">
                <label id="Label3" for="inputEmail3" class="col-sm-5 control-label" runat="server">
                    Roll</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="txtbxRoll" class="form-control input-sm" runat="server" required="required"></asp:TextBox>
                </div>
            </div>
        </div>
    </div>
    <div class="row text-center">
        <div class="col-md-6 col-md-offset-1">
            <asp:Button ID="btnAdd" class="btn btn-success input-sm" runat="server" Text="Add"
                OnClick="btnAdd_Click" />
           
        </div>
        <div class="col-md-2">
            <asp:LinkButton ID="btnView" class="btn btn-info input-sm" runat="server" OnClick="btnView_Click">View</asp:LinkButton>
        </div>
    </div>
    <div class="row text-center">
        <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
    </div>
</asp:Content>
