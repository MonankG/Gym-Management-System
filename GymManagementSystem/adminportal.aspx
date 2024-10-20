<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminportal.aspx.cs" Inherits="GymManagementSystem.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <div class="container-fluid">
    <div class="row">
        <div class="col-md-8 mx-auto">
            <div class="card">
                <div class="card-body">

                        <div class="col">
                            <div class="form-group">
                                <h3>Admin Portal</h3>
                            </div>
                        </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Button ID="Button1" class="btn btn-warning btn-lg" runat="server" Text="Member Management" OnClick="Button1_Click"  />
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Button ID="Button2" runat="server" class="btn btn-warning btn-lg" Text="Equipment Management" OnClick="Button2_Click" />
                            </div>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Button ID="Button3" runat="server" class="btn btn-warning btn-lg" Text="View Membership" OnClick="Button3_Click" />
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Button ID="Button4" runat="server" class="btn btn-warning btn-lg" Text="Group Exercise" OnClick="Button4_Click" />
                            </div>
                        </div>
                    </div>
                    <br />

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Button ID="Button5" runat="server" class="btn btn-warning btn-lg" Text="Gym List" OnClick="Button5_Click" />
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Button ID="Button6" runat="server" class="btn btn-warning btn-lg" Text="Membership Plans" OnClick="Button6_Click" />
                            </div>
                        </div>
                    </div>
                    <br />

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Button ID="Button7" runat="server" class="btn btn-warning btn-lg" Text="Personal Training" OnClick="Button7_Click" />
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:Button ID="Button8" runat="server" class="btn btn-warning btn-lg" Text="Trainer Info" OnClick="Button8_Click" />
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
