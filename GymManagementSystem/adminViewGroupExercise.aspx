<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminViewGroupExercise.aspx.cs" Inherits="GymManagementSystem.adminViewGroupExercise" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="container-fluid">

    <div class="row">
        <center>
            <h3>Group Exercise</h3>
        </center>
    </div>

    <div class="row">
        <hr />
    </div>
    <div class="row">
        <div class="card">
            <div class="card-body">
                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cust_id" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="cust_id" HeaderText="cust_id" ReadOnly="True" SortExpression="cust_id" />
                        <asp:BoundField DataField="cust_name" HeaderText="cust_name" SortExpression="cust_name" />
                        <asp:BoundField DataField="cust_groupDate" HeaderText="cust_groupDate" SortExpression="cust_groupDate" />
                        <asp:BoundField DataField="cust_contactno" HeaderText="cust_contactno" SortExpression="cust_contactno" />
                        <asp:BoundField DataField="cust_exercisedays" HeaderText="cust_exercisedays" SortExpression="cust_exercisedays" />
                        <asp:BoundField DataField="cust_address" HeaderText="cust_address" SortExpression="cust_address" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:gymdbConnectionString2 %>" SelectCommand="SELECT * FROM [groupexercise]"></asp:SqlDataSource>
            </div>
        </div>
    </div>
</div>
</asp:Content>
