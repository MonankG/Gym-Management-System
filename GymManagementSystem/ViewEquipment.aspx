<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewEquipment.aspx.cs" Inherits="GymManagementSystem.ViewEquipment1" %>
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
                                   <h3>Equipments List</h3>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                    <div class="col">
                        <center>
                            <img src="images/gymequipbanner.jpeg" width="300"/>
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

                    <div class="col-md-10">
                        <label>Equipment Name</label>
                        <div class="form-group">
                            <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="Equipment Name" TextMode="SingleLine"></asp:TextBox>
                            <asp:Button ID="Button5" class="btn btn-primary" runat="server" Text="Go" OnClick="Button5_Click1"/>
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
                                    <h3>Equipments List</h3>
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
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="eq_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="eq_id" HeaderText="eq_id" ReadOnly="True" SortExpression="eq_id" />
                                        <asp:BoundField DataField="eq_name" HeaderText="eq_name" SortExpression="eq_name" />
                                        <asp:BoundField DataField="eq_desc" HeaderText="eq_desc" SortExpression="eq_desc" />
                                        <asp:BoundField DataField="stock" HeaderText="stock" SortExpression="stock" />
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:gymdbConnectionString2 %>" SelectCommand="SELECT * FROM [adEquipTable] WHERE ([eq_name] = @eq_name)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="TextBox2" Name="eq_name" PropertyName="Text" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        <a href="HomePage.aspx"><- Back to Home</a><br /><br />
    </div>
</div>
</asp:Content>
