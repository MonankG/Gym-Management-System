<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MembershipPlans.aspx.cs" Inherits="GymManagementSystem.MembershipPlans" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <!-- row 1-->
        <div class="row">

            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Membership Plans</h3>
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
                                <asp:Button ID="Button2" class="btn btn-block btn-success btn-lg" runat="server" Text="Buy" OnClick="Button2_Click" />
                            </div>
                        </div>

                  </div>

            </div>
            </div>
        </div>
        <!-- row 2-->
        <div class="row">

            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="membership_id" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="membership_id" HeaderText="membership_id" ReadOnly="True" SortExpression="membership_id" />
                                <asp:BoundField DataField="membership_type" HeaderText="membership_type" SortExpression="membership_type" />                        
                                <asp:BoundField DataField="membership_price" HeaderText="membership_price" SortExpression="membership_price" />
                                <asp:BoundField DataField="membership_duration" HeaderText="membership_duration" SortExpression="membership_duration" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:gymdbConnectionString2 %>" SelectCommand="SELECT * FROM [membership_plans]"></asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>

    </div>

</asp:Content>
