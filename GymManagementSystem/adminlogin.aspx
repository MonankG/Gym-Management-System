﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="GymManagementSystem.adminlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <div class="row">
        <div class="col-md-6 mx-auto">
            <div class="card">
                <div class="card-body">

                    <div class="row">
                        <div class="col">
                            <center>
                                <img src="images/admin.jpeg" width="150"/>
                            </center>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col">
                            <center>
                                <h3>Admin Login</h3>
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
                            <label>Admin ID</label>
                            <div class="form-group">
                                <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Admin ID" TextMode="SingleLine"></asp:TextBox>
                            </div>

                            <label>Password</label>
                            <div class="form-group">
                                <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <asp:Button ID="Button1" class="btn btn-success btn-block btn-lg" runat="server" Text="Login" OnClick="Button1_Click" />
                            </div>

                        </div>
                    </div>


                </div>
            </div>

            <a href="HomePage.aspx"><- Back to Home</a><br /><br />
        </div>
    </div>
</div>
</asp:Content>
