<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="BookGroupExcercise.aspx.cs" Inherits="GymManagementSystem.WebForm3" %>
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
                                <h3>Book Group Excercise</h3>
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
                            <label>Group Exercise Dates</label>
                            <div class="form-group">
                                <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="Group Exercise Date"></asp:TextBox>
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
                    </div>


<div class="row">
    <div class="col-md-6">
        <label>Member ID</label>
        <div class="form-group">
            <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" placeholder="Member ID" TextMode="SingleLine"></asp:TextBox>
        </div>
    </div>
    <div class="col-md-6">
        <label>Group Exercise Days</label>
        <div class="form-group">
            <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server" placeholder="Group Exercise Days" TextMode="SingleLine"></asp:TextBox> 
        </div>
    </div>
</div>

<div class="row">

    <div class="col">

        <label>Address</label>
        <div class="form-group">
            <asp:TextBox ID="TextBox8" CssClass="form-control" runat="server" placeholder="Address" TextMode="MultiLine"></asp:TextBox>
        </div>
    </div>
</div>

                    <div class="row">
                        <div class="col">
                            <div class="form-group">
                                <asp:Button ID="Button1" runat="server" Text="Book" OnClick="Button1_Click1" />
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
