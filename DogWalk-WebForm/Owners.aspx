<%@ Page Title="Owners" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="DogWalk_WebForm.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
        <div>
        <asp:GridView ID="GridViewOwner" runat="server" AutoGenerateColumns="False" DataKeyNames="Id"
            OnRowDataBound="OnRowDataBound"  EmptyDataText="No records has been added." BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" Width="1108px">
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
                <asp:TemplateField HeaderText="Email" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblEmail" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtEmail" runat="server" Text='<%# Eval("Email") %>'></asp:TextBox>
                    </EditItemTemplate>

<ItemStyle Width="150px"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Address" ItemStyle-Width="150">
                        <ItemTemplate>
                      <asp:Label ID="lblAddress" runat="server" Text='<%# Eval("Address") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                       <asp:TextBox ID="txtAddress" runat="server" Text='<%# Eval("Address") %>'></asp:TextBox>
                    </EditItemTemplate>

<ItemStyle Width="150px"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Phone" ItemStyle-Width="150">
                        <ItemTemplate>
                       <asp:Label ID="lblPhone" runat="server" Text='<%# Eval("Phone") %>'></asp:Label>
                       </ItemTemplate>
                    <EditItemTemplate>
                      <asp:TextBox ID="txtPhone" runat="server" Text='<%# Eval("Phone") %>'></asp:TextBox>
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
<%--        <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
            <tr>
                <td style="width: 250px">Name:<br />
                    <asp:TextBox ID="txtName" runat="server" Width="140" />
                </td>
                <td style="width: 150px">Email:<br />
                    <asp:TextBox ID="txtEmail" runat="server" Width="140" />
                </td>
                <td style="width: 150px">Address:<br />
                    <asp:TextBox ID="txtAddress" runat="server" Width="140" />
                </td>
                <td style="width: 150px">Phone #:<br />
                    <asp:TextBox ID="txtPhone" runat="server" Width="140" />
                </td>
                <td style="width: 100px">
                    <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="Insert" />
                </td>
            </tr>
        </table>--%>
        </div>
</asp:Content>
