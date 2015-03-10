<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentInfo.aspx.cs" Inherits="School.StudentInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <asp:GridView ID="GridViewStudentInfo" AutoGenerateColumns="False" 
        runat="server" BackColor="White" 
        BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        GridLines="Vertical">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="studentID" HeaderText="Serial" />
            <asp:BoundField DataField="studentName" HeaderText="Student Name" />
            <asp:BoundField DataField="gender" HeaderText="Gender" />
            <asp:BoundField DataField="guardianName" HeaderText="Guardian Name" />
            <asp:BoundField DataField="phoneNo" HeaderText="Phone No" />
            <asp:BoundField DataField="studentClass" HeaderText="Class" />
            <asp:BoundField DataField="section" HeaderText="Section" />
            <asp:BoundField DataField="roll" HeaderText="Roll" />
            <asp:BoundField DataField="addmissionYar" HeaderText="Addmission Year" />
            <asp:TemplateField AccessibleHeaderText="Info" HeaderText="Select">
            <ItemTemplate>
                <asp:HyperLink ID="linkSelect" runat="server" NavigateUrl='<%# String.Format("~/UpdateStudentInfo.aspx?ID={0}", Eval("studentID")) %>'>Select</asp:HyperLink>
            </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
    <div class="row text-center">
        <asp:HyperLink ID="linkAddNew" runat="server" 
            NavigateUrl="~/AddStudentInfo.aspx">Add New</asp:HyperLink>
    </div>
</asp:Content>
