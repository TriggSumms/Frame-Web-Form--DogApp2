<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dogs.aspx.cs" Inherits="DogWalk_WebForm.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>Dogs in Collection</h2>
    <div class="col-md-4">
        <h2>&nbsp;</h2>
        <div>
        <asp:GridView ID="GridViewDog" runat="server" AutoGenerateColumns="False" DataKeyNames="Id"
            OnRowDataBound="OnRowDataBound" OnRowEditing="OnRowEditing" OnRowCancelingEdit="OnRowCancelingEdit"
            OnRowUpdating="OnRowUpdating" OnRowDeleting="OnRowDeleting" EmptyDataText="No records has been added." BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" Width="1108px">
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
                <asp:TemplateField HeaderText="OwnerId" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblOwnerId" runat="server" Text='<%# Eval("OwnerId") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="TextOwnerId" runat="server" Text='<%# Eval("OwnerId") %>'></asp:TextBox>
                    </EditItemTemplate>

<ItemStyle Width="150px"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Breed" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblBreed" runat="server" Text='<%# Eval("Breed") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtBreed" runat="server" Text='<%# Eval("Breed") %>'></asp:TextBox>
                    </EditItemTemplate>

<ItemStyle Width="150px"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Notes" ItemStyle-Width="150">
                        <ItemTemplate>
                      <asp:Label ID="lblNotes" runat="server" Text='<%# Eval("Notes") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                       <asp:TextBox ID="txtNotes" runat="server" Text='<%# Eval("Notes") %>'></asp:TextBox>
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





       <asp:CommandField ButtonType="Link" ShowEditButton="true" ShowDeleteButton="true" ItemStyle-Width="150" >
<ItemStyle Width="150px"></ItemStyle>
                </asp:CommandField>
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
        <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
            <tr>
                <td style="width: 250px">Name:<br />
                    <asp:TextBox ID="txtName" runat="server" Width="140" />
                </td>
                <td style="width: 150px">OwnerId:<br />
                    <asp:TextBox ID="txtOwnerId" runat="server" Width="140" />
                </td>
                <td style="width: 150px">Breed:<br />
                    <asp:TextBox ID="txtBreed" runat="server" Width="140" />
                </td>
                <td style="width: 150px">Notes:<br />
                    <asp:TextBox ID="txtNotes" runat="server" Width="140" />
                </td>
                <td style="width: 150px">ImageUrl:<br />
                    <asp:TextBox ID="txtImageUrl" runat="server" Width="140" />
                </td>
                <td style="width: 100px">
                    <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="Insert" />
                </td>
            </tr>
        </table>
        </div>
    </div>
</asp:Content>
