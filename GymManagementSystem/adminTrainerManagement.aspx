<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminTrainerManagement.aspx.cs" Inherits="GymManagementSystem.WebForm4" %>
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
                                    <h3>Trainer Management</h3>
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
                            <div class="col-md-5">
                                <label>Trainer ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Trainer ID"></asp:TextBox>
                                        
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-7">
                                <label>Trainer Name</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="Trainer Name" TextMode="SingleLine"></asp:TextBox>
                                </div>
                            </div>


                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Trainer Experience</label>
                                <div class="form-group">
                                    <center>
                                        <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" placeholder="Trainer Experience" TextMode="Number" ReadOnly="False"></asp:TextBox>
                                    </center>
                                </div>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <label>Trainer ContactNo</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" placeholder="Contact No" TextMode="SingleLine" ReadOnly="False"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <asp:Button ID="Button2" runat="server" Text="Add" class="btn btn-success btn-lg" OnClick="Button2_Click" />
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="form-group">
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="form-group">
                                    <asp:Button ID="Button4" runat="server" Text="Delete" class="btn btn-danger btn-lg" OnClick="Button4_Click" />
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
                                    <h3>Trainers List</h3>
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
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="trainer_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="trainer_id" HeaderText="trainer_id" ReadOnly="True" SortExpression="trainer_id" />
                                        <asp:BoundField DataField="trainer_name" HeaderText="trainer_name" SortExpression="trainer_name" />
                                        <asp:BoundField DataField="trainer_experience" HeaderText="trainer_experience" SortExpression="trainer_experience" />
                                        <asp:BoundField DataField="trainer_contactno" HeaderText="trainer_contactno" SortExpression="trainer_contactno" />
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:gymdbConnectionString2 %>" SelectCommand="SELECT * FROM [trainer_info]"></asp:SqlDataSource>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <a href="HomePage.aspx"><- Back to Home</a><br />
            <br />
        </div>
    </div>

</asp:Content>
