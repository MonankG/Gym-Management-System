<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminMembershipPlans.aspx.cs" Inherits="GymManagementSystem.adminMembershipPlans" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
            <!--card 1 -->
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
                                <center>
                                    <hr />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                Membership ID
                            <div class="form-group">
                        <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Membership ID"></asp:TextBox>
                    </div>
                            </div>

                            <div class="col-md-6">
                                Membership Type
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="Membership Type"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Membership Price</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" placeholder="Membership Price" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                Membership Duration
                    <div class="form-group">
                        <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" placeholder="Membership Duration"></asp:TextBox>
                    </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>

                                    <asp:Button ID="Button1" CssClass="btn btn-success btn-lg" runat="server" Text="Add Plan" OnClick="Button1_Click" />

                                </center>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <!-- card 2 -->
            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
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
        </div>
    </div>

</asp:Content>
