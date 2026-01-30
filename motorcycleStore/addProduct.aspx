<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addProduct.aspx.cs" Inherits="addProduct" MaintainScrollPositionOnPostback="true"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table style="width:863px;margin:0px 0px 0px 30px" >


           <tr style="width:890px;height:50px">

           <td colspan="2" style=";text-align:center;padding-left: 0px; padding-bottom: 30px;">
               <asp:Label ID="Label15" runat="server" Text="Add Product" Font-Size="X-Large" ForeColor="Red"></asp:Label></td>
           </tr>

           <tr style="width:890px;height:50px">
           <td style="width:50px"><asp:Label ID="Label1" runat="server" Text="Product Name:"></asp:Label></td>
           <td style="width:200px"><asp:TextBox ID="TextBox1" runat="server" Columns="35"></asp:TextBox></td>

           </tr>



           <tr style="width:890px;height:50px">
           <td style="width:50px"><asp:Label ID="Label2" runat="server" Text="Maker Name:"></asp:Label></td>
           <td><asp:TextBox ID="TextBox2" runat="server" Columns="35"></asp:TextBox></td>
           </tr>



           <tr style="width:890px;height:50px">
               <td style="width:50px"><asp:Label ID="Label3" runat="server" Text="Category:"></asp:Label></td>
           <td>
               <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="catName" DataValueField="Id">
               </asp:DropDownList>
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:motorcycleDBConnectionString %>" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
               </td>
           </tr>

          
       
           <tr style="width:890px;height:50px">
           <td style="width:50px"><asp:Label ID="Label10" runat="server" Text="Price:"></asp:Label></td>
           <td><asp:TextBox ID="TextBox10" runat="server" TextMode="Number"></asp:TextBox></td>
           </tr>


           <tr style="width:890px;height:50px">
                <td style="width:50px"><asp:Label ID="Label5" runat="server" Text="Amount:"></asp:Label></td>
                <td><asp:TextBox ID="TextBox5" runat="server" TextMode="Number"></asp:TextBox></td>
           </tr>


         <tr style="width:890px;height:50px">
         <td style="width:50px"><asp:Label ID="Label4" runat="server" Text="Glance:"></asp:Label></td>
         <td><asp:TextBox ID="TextBox3" runat="server" Columns="35" Rows="4" TextMode="MultiLine"></asp:TextBox></td>
         </tr>

         <tr style="width:890px;height:50px">
         <td style="width:50px"><asp:Label ID="Label6" runat="server" Text="Description:"></asp:Label></td>
         <td><asp:TextBox ID="TextBox4" runat="server" Columns="35" Rows="4" TextMode="MultiLine"></asp:TextBox></td>
         </tr>

         <tr style="width:890px;height:50px">
           <td style="width:50px"><asp:Label ID="Label7" runat="server" Text="Image:"></asp:Label></td>
           <td><asp:FileUpload ID="file" runat="server"/></td>
           </tr>

           <tr style="width:890px;height:50px">
           <td colspan="2" style=";text-align:center;padding-left: 0px; padding-top: 16px;">
           <asp:Button ID="Button2" runat="server" Text="Add" OnClick="Button2_Click" style="height: 26px" />
           </td>
           </tr>

       </table>
</asp:Content>

