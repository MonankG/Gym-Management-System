<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewTrainerList.aspx.cs" Inherits="GymManagementSystem.ViewTrainerList" %>
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
                                    <h3> Trainer List</h3>
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

            <div class="col-md-7">

                <div class="card">
                    <div class="card-body">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="trainer_id" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="trainer_id" HeaderText="trainer_id" ReadOnly="True" SortExpression="trainer_id" />
                                <asp:BoundField DataField="trainer_name" HeaderText="trainer_name" SortExpression="trainer_name" />                        
                                <asp:BoundField DataField="trainer_experience" HeaderText="trainer_experience" SortExpression="trainer_experience" />
                                <asp:BoundField DataField="trainer_contactno" HeaderText="trainer_contactno" SortExpression="trainer_contactno" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:gymdbConnectionString2 %>" SelectCommand="SELECT * FROM [trainer_info]"></asp:SqlDataSource>
            </div>
        </div>
    </div>
</asp:Content>
