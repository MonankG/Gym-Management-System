<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminEquimentInventory.aspx.cs" Inherits="GymManagementSystem.ViewEquipment" %>
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
                            <h3>Add Equipment</h3>
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
                    <div class="col-md-5">
                        <label>Equipment ID</label>
                        <div class="form-group">
                            <div class="input-group">
                                <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Eq ID"></asp:TextBox>
                                <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Go" OnClick="Button1_Click" />
                            </div>
                        </div>
                    </div>

                    <div class="col-md-7">
                        <label>Equipment Name</label>
                        <div class="form-group">
                            <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="Equipment Name" TextMode="SingleLine"></asp:TextBox>
                        </div>
                    </div>

                    
                </div>

                        <div class="row">
                    <div class="col-md-6">
                            <label>Current Stock</label>
                            <div class="form-group">
                                <center>
                                    <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" placeholder="Current Stock" TextMode="Number" ReadOnly="False"></asp:TextBox>
                                </center>
                            </div>
                    </div>

                </div>

                        <div class="row">
                        <div class="col-md-12">
                            <label>Equipment Description</label>
                            <div class="form-group">
                                <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" placeholder="Description" TextMode="MultiLine" ReadOnly="False"></asp:TextBox>
                            </div>
                        </div>
                    </div>


                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <asp:Button ID="Button2" runat="server" Text="Add" OnClick="Button2_Click" />
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="form-group">
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="form-group">
                                <asp:Button ID="Button4" runat="server" Text="Delete" OnClick="Button4_Click" />
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
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:gymdbConnectionString2 %>" ProviderName="<%$ ConnectionStrings:gymdbConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [adEquipTable]"></asp:SqlDataSource>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        <a href="HomePage.aspx"><- Back to Home</a><br /><br />
    </div>
</div>
</asp:Content>
