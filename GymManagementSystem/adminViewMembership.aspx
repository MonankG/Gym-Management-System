<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminViewMembership.aspx.cs" Inherits="GymManagementSystem.adminViewMembership" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">

    <div class="row">
        <center>
            <h3>Memberships</h3>
        </center>
    </div>

    <div class="row">
        <hr />
    </div>
    <div class="row">
        <div class="card">
            <div class="card-body">
                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="member_id" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="member_id" HeaderText="member_id" ReadOnly="True" SortExpression="member_id" />
                        <asp:BoundField DataField="bought_plan" HeaderText="bought_plan" SortExpression="bought_plan" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:gymdbConnectionString2 %>" SelectCommand="SELECT * FROM [bought_membership]"></asp:SqlDataSource>
            </div>
        </div>
    </div>
</div>
</asp:Content>
