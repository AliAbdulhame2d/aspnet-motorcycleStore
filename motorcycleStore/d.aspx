<%@ Page Language="C#" AutoEventWireup="true" CodeFile="d.aspx.cs" Inherits="d" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        
                <asp:ListView ID="productList" runat="server"
                     GroupItemCount="4">

                    <EmptyDataTemplate>
                        <table >
                            <tr>
                                <td>No data was returned.</td>
                            </tr>
                        </table>

                    </EmptyDataTemplate>
                    <EmptyItemTemplate>
                        <td/>
                    </EmptyItemTemplate>
                    <GroupTemplate>
                        <tr id="itemPlaceholderContainer" runat="server">
                            <td id="itemPlaceholder" runat="server"></td>
                        </tr>

                    </GroupTemplate>
                    <ItemTemplate>
                        <td runat="server">
                            <table>
                                <tr>
                                    <td>
                                        <a href="#<%-- %>"ProductDetails.aspx?productID=<%--#:Item.ProductID--%>">
                                            <img src="images/الجامعة-الافتراضية-السورية.jpg"
                                                width="100" height="75" style="border: solid" /></a>
                                    </td>
                                </tr>
                               
                            </table>
                            </p>
                        </td>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table style="width:100%;">
                            <tbody>
                                <tr>
                                    <td>
                                        <table id="groupPlaceholderContainer" runat="server" style="width:100%">
                                            <tr id="groupPlaceholder"></tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                </tr>
                                <tr></tr>
                            </tbody>
                        </table>
                    </LayoutTemplate>
                </asp:ListView>



    </div>
    </form>
</body>
</html>
