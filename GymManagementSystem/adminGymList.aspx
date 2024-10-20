<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminGymList.aspx.cs" Inherits="GymManagementSystem.adminGymList" %>
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
                                    <h3>Gym List</h3>
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
                                Gym Name
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Gym Name"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                City <div class="form-group">
                                    <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="City"></asp:TextBox>
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
                            <div class="col-md-12">
                                Address
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" placeholder="Address" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                Gym ID <div class="form-group">
                                    <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" placeholder="Gym ID" TextMode="SingleLine"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    
                                    <asp:Button ID="Button1" CssClass="btn btn-success btn-lg" runat="server" Text="Add Gym" OnClick="Button1_Click" />
                                    
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
            </div>
        </div>
    </div>
</asp:Content>
