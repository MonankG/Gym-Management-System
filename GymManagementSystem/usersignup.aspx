<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="GymManagementSystem.usersignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container-fluid">
    <div class="row">
        <div class="col-md-8 mx-auto">
            <div class="card">
                <div class="card-body">

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
                                <h3>Member Registration</h3>
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
                            <label>Full Name</label>
                            <div class="form-group">
                                <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Full Name"></asp:TextBox>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <label>Date of Birth</label>
                            <div class="form-group">
                                <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="Password" TextMode="Date"></asp:TextBox>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <label>Contact Number</label>
                            <div class="form-group">
                                <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" placeholder="Contact Number" TextMode="Number"></asp:TextBox>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <label>Email ID</label>
                            <div class="form-group">
                                <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                            <div class="col-md-12">
                                <label>Address</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" placeholder="Address" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                    <div class="row">
    <div class="col-md-6">
        <label>Member ID</label>
        <div class="form-group">
            <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" placeholder="Member ID" TextMode="SingleLine"></asp:TextBox>
        </div>
    </div>
    <div class="col-md-6">
        <label>Password</label>
        <div class="form-group">
            <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox> 
        </div>
    </div>
</div>

                    <div class="row">
                        <div class="col">
                            <div class="form-group">
                                <asp:Button ID="Button1" runat="server" Text="submit" OnClick="Button1_Click" />
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>

            <a href="HomePage.aspx"><- Back to Home</a><br /><br />
        </div>
</asp:Content>
