<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="BuyMembership.aspx.cs" Inherits="GymManagementSystem.BuyMembership" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">

        <div class="row">
            <center>
                <h3>Buy Membership</h3>
            </center>
        </div>

        <div class="row">
            <hr />
        </div>
        <div class="row">
            <div class="card">
                <div class="card-body">
                    <div class="col-md-6">
                        <label>Member ID</label>
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="Member ID" TextMode="Number" ></asp:TextBox>
                    </div>

                    <div class="col-md-6">
                        <label>Membership Type</label>
                        <asp:TextBox ID="TextBox2" runat="server" placeholder="Memberdhip Type" TextMode="SingleLine" ></asp:TextBox>
                    </div>

                </div>
            </div>
        </div>

        <div class="row">
            <center>
                
                <asp:Button ID="Button1" runat="server" Text="Buy" CssClass="btn btn-success btn-lg" OnClick="Button1_Click" />
                
            </center>
        </div>
    </div>

</asp:Content>
