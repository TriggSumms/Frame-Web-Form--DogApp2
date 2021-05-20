<%@ Page Title="Walker" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Walkers.aspx.cs" Inherits="DogWalk_WebForm.Walkers" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
        <div>
            <asp:GridView ID="GridViewWalker" runat="server" AutoGenerateColumns="False" DataKeyNames="Id"
                OnRowDataBound="OnRowDataBound" EmptyDataText="No records has been added." BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" Width="1108px">
                <Columns>
                    <asp:TemplateField HeaderText="Name" ItemStyle-Width="150">
                        <ItemTemplate>
                            <asp:Label ID="lblName" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtName" runat="server" Text='<%# Eval("Name") %>'></asp:TextBox>
                        </EditItemTemplate>

                        <ItemStyle Width="150px"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ImageUrl" ItemStyle-Width="150">
                        <ItemTemplate>
                       <asp:Label ID="lblImageUrl" runat="server" Text='<%# Eval("ImageUrl") %>'></asp:Label>
                       </ItemTemplate>
                    <EditItemTemplate>
                      <asp:TextBox ID="txtImageUrl" runat="server" Text='<%# Eval("ImageUrl") %>'></asp:TextBox>
                    </EditItemTemplate>

<ItemStyle Width="150px"></ItemStyle>
                    </asp:TemplateField>





                    <%--       <asp:CommandField ButtonType="Link" ShowEditButton="true" ShowDeleteButton="true" ItemStyle-Width="150" >
<ItemStyle Width="150px"></ItemStyle>
                </asp:CommandField>--%>
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView>

        </div>
    </asp:Content>


