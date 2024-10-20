<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="gymlist.aspx.cs" Inherits="GymManagementSystem.gymlist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <!--card 1-->
        <div class="col-md-5">

            <div class="card">
                <div class="card-body">

                    <div class="row">
                        <div class="col">
                            <center>
                                <h3>  Gym Cities </h3>
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

                            <asp:Button ID="Button2" class="btn btn-block btn-success btn-lg" runat="server" Text="Show" OnClick="Button2_Click" />
                        </div>

                    </div>

                </div>

            </div>

        </div>
        <!--card 2-->

        <div class="col-md-7">

            <div class="card">
                <div class="card-body">
                    <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="gym_id" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="gym_id" HeaderText="gym_id" ReadOnly="True" SortExpression="gym_id" />
                            <asp:BoundField DataField="gym_name" HeaderText="gym_name" SortExpression="gym_name" />                        
                            <asp:BoundField DataField="gym_city" HeaderText="gym_city" SortExpression="gym_city" />
                            <asp:BoundField DataField="gym_address" HeaderText="gym_address" SortExpression="gym_address" />
                            <asp:BoundField DataField="gym_contactno" HeaderText="gym_contactno" SortExpression="gym_contactno" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:gymdbConnectionString2 %>" SelectCommand="SELECT * FROM [gymlist]"></asp:SqlDataSource>
                </div>
            </div>

        </div>


    </div>

</asp:Content>
