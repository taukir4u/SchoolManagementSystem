<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="UpdateStudentInfo.aspx.cs" Inherits="School.UpdateStudentInfo1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="h4 text-center">
        Student Info</div>
    <hr />
    <div class="row">
        <div class="col-md-6">
            <div class="row form-group form-horizontal">
                <label id="Label6" for="inputEmail3" class="col-sm-5 control-label" runat="server">
                    Student Name</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="txtbxStudentName" class="form-control input-sm" runat="server"></asp:TextBox>
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
                    <asp:TextBox ID="txtbxGuardianName" class="form-control input-sm" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row form-group form-horizontal">
                <label id="Label9" for="inputEmail3" class="col-sm-5 control-label" runat="server">
                    Address</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="txtbxaddress" class="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row form-group form-horizontal">
                <label id="Label4" for="inputEmail3" class="col-sm-5 control-label" runat="server">
                    Addmission Year</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="txtbxAdmissionYar" class="form-control input-sm" runat="server"></asp:TextBox>
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
                    <asp:TextBox ID="txtbxPhoneNo" class="form-control input-sm" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row form-group form-horizontal">
                <label id="Label1" for="inputEmail3" class="col-sm-5 control-label" runat="server">
                    Class</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="txtbxStudentClass" class="form-control input-sm" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row form-group form-horizontal">
                <label id="Label2" for="inputEmail3" class="col-sm-5 control-label" runat="server">
                    Section</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="txtbxSection" class="form-control input-sm" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row form-group form-horizontal">
                <label id="Label3" for="inputEmail3" class="col-sm-5 control-label" runat="server">
                    Roll</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="txtbxRoll" class="form-control input-sm" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row form-group form-horizontal" style="visibility: hidden">
                <label id="Label12" for="inputEmail3" class="col-sm-5 control-label" runat="server">
                    Student ID</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="txtbxID" class="form-control input-sm" runat="server"></asp:TextBox>
                </div>
            </div>
        </div>
    </div>
    <div class="row text-center">
        <div class="col-md-8 col-md-offset-1">
            <asp:Button ID="btnUpdate" class="btn btn-success input-sm" runat="server" Text="Update"
                OnClick="btnUpdate_Click" />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            <asp:Button ID="btnDelete" class="btn btn-danger input-sm" runat="server" 
                Text="Delete" onclick="btnDelete_Click" />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            <asp:Button ID="btnClear" class="btn btn-primary input-sm" runat="server" 
                Text="Clear" onclick="btnClear_Click" />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            <asp:Button ID="Button1" class="btn btn-warning input-sm" runat="server" 
                Text="Cancel" onclick="btnCancel_Click" />
        </div>
        <div class="col-md-2">
            <asp:LinkButton ID="btnView" class="btn btn-info input-sm" runat="server" OnClick="btnView_Click">View</asp:LinkButton>
        </div>
    </div>
    <div class="row text-center">
        <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
    </div>
</asp:Content>
