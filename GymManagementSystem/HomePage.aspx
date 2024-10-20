<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="GymManagementSystem.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <section>
        <center>
            &nbsp;<img src="images/banner.jpeg" / class="img-fluid">
        </center>   
    </section>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                        <h2>Features</h2>
                    </center>
                </div>
            </div>
        </div>

        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6">
                        <asp:Button ID="Button2" class="btn btn-success btn-block btn-lg" runat="server" Text="View Profile" OnClick="Button2_Click1" />  
                </div>
                 <div class="col-md-6">
                        <asp:Button ID="Button3" class="btn btn-success btn-block btn-lg" runat="server" Text="View Equipments" OnClick="Button3_Click1" />
                 </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-6">
                    <asp:Button ID="Button1" class="btn btn-success btn-block btn-lg" runat="server" Text="View trainers" OnClick="Button1_Click" />  
                </div>
                <div class="col-md-6">
                    <asp:Button ID="Button4" class="btn btn-success btn-block btn-lg" runat="server" Text="View Cities" OnClick="Button4_Click"/>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-6">
                    <asp:Button ID="Button6" class="btn btn-success btn-block btn-lg" runat="server" Text="Book Personal Training" OnClick="Button6_Click" />
                </div>

                <div class="col-md-6">
                    <asp:Button ID="Button5" class="btn btn-success btn-block btn-lg" runat="server" Text="Book Group Excercise Program" OnClick="Button5_Click" />
                </div>

            </div>
            <br />
            <div class="row">
                <div class="col-md-6">
                    <center>
                        <asp:Button ID="Button7" CssClass="btn btn-success btn-block btn-lg" runat="server" Text="View Membership Plans" OnClick="Button7_Click" />
                    </center>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
