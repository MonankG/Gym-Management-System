<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminMemberManagement.aspx.cs" Inherits="GymManagementSystem.AdminMemberManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="container-fluid">
            <div class="row">
                <div class="col-md-5">
                    <div class="card">
                        <div class="card-body">

                            <div class="row">
                        <div class="col">
                            <center>
                                <h3>Member Management</h3>
                            </center>
                        </div>
                    </div>

                            <div class="row">
                        <div class="col">
                            <center>
                                <img src="images/userlogin.png" width="100"/>
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
                        <div class="col-md-3">
                            <label>Member ID</label>
                            <div class="form-group">
                                <div class="input-group">
                                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="ID"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <label>Full Name</label>
                            <div class="form-group">
                                <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="Full Name" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                            </div>
                        </div>

                    </div>

                            <div class="row">
                        <div class="col-md-6">
                            <label>Contact Number</label>
                            <div class="form-group">
                                <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" placeholder="Contact Number" TextMode="Number" ReadOnly="True"></asp:TextBox>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <label>Email ID</label>
                            <div class="form-group">
                                <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" placeholder="Email ID" TextMode="Email" ReadOnly="True"></asp:TextBox>
                            </div>
                        </div>
                    </div>

                            <div class="row">
                            <div class="col-md-12">
                                <label>Address</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" placeholder="Address" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                            <div class="row">
                        <div class="col-md-6">
                            <label>Member ID</label>
                            <div class="form-group">
                            <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" placeholder="Member ID" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                        </div>
                    </div>
                        <div class="col-md-6">
                            <label>Password</label>
                            <div class="form-group">
                                <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server" placeholder="Password" TextMode="Password" ReadOnly="True"></asp:TextBox>
                            </div>
                        </div>
                    </div>

                            <div class="row">
                        <div class="col">
                            <div class="form-group">
                                <asp:Button ID="Button2" runat="server" Text="Delete User" OnClick="Button2_Click"/>
                            </div>
                        </div>
                    </div>

                        </div>
                    </div>
                </div>
                <div class="col-md-7">
                    <div class="card">
                        <div class="card-body">

                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h3>Member List</h3>
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
                                <div class="col">
                                    <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Member_ID" DataSourceID="SqlDataSource1">
                                        <Columns>
                                            <asp:BoundField DataField="Member_ID" HeaderText="Member_ID" ReadOnly="True" SortExpression="Member_ID" />
                                            <asp:BoundField DataField="Member_Name" HeaderText="Member_Name" SortExpression="Member_Name" />
                                            <asp:BoundField DataField="Member_DOB" HeaderText="Member_DOB" SortExpression="Member_DOB" />
                                            <asp:BoundField DataField="Member_contact" HeaderText="Member_contact" SortExpression="Member_contact" />
                                            <asp:BoundField DataField="Member_email" HeaderText="Member_email" SortExpression="Member_email" />
                                            <asp:BoundField DataField="Member_pass" HeaderText="Member_pass" SortExpression="Member_pass" />
                                        </Columns>
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:gymdbConnectionString2 %>" SelectCommand="SELECT * FROM [Member_signup]"></asp:SqlDataSource>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            <a href="HomePage.aspx"><- Back to Home</a><br /><br />
        </div>
    </div>
</asp:Content>
