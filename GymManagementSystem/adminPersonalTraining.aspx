<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminPersonalTraining.aspx.cs" Inherits="GymManagementSystem.adminPersonalTraining" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">

        <div class="card">
            <div class="card-body">
                <div class="row">
                    <div class="col">
                        <center>
                            <h3>Personal Training List</h3>
                        </center>
                    </div>
                </div>

                <div class="row">
                    <div class="col">
                        <hr />
                    </div>
                </div>

                <div class="row">
                    <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="member_id" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="member_id" HeaderText="member_id" ReadOnly="True" SortExpression="member_id" />
                                <asp:BoundField DataField="member_name" HeaderText="member_name" SortExpression="member_name" />
                                <asp:BoundField DataField="member_contactno" HeaderText="member_contactno" SortExpression="member_contactno" />
                                <asp:BoundField DataField="member_trainingduration" HeaderText="member_trainingduration" SortExpression="member_trainingduration" />
                                <asp:BoundField DataField="member_trainer" HeaderText="member_trainer" SortExpression="member_trainer" />
                                <asp:BoundField DataField="member_trainStartDate" HeaderText="member_trainStartDate" SortExpression="member_trainStartDate" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:gymdbConnectionString2 %>" SelectCommand="SELECT * FROM [personaltraining]"></asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>

    </div>

</asp:Content>
