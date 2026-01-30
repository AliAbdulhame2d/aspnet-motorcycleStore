<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" MaintainScrollPositionOnPostback="true"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    

    <table style="width:863px;margin:0px 0px 0px 30px" >


           <tr style="width:890px;height:50px">

           <td colspan="3" style=";text-align:center;padding-left: 145px; padding-bottom: 30px;">
               <asp:Label ID="Label15" runat="server" Text="Registration" Font-Size="X-Large" ForeColor="Red"></asp:Label></td>
           </tr>

           <tr style="width:890px;height:50px">
           
           <td style="width:145px"><asp:Label ID="Label1" runat="server" Text="User Name:"></asp:Label></td>
           <td style="width:200px"><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>

           <td style="width:145px"><asp:Label ID="Label6" runat="server" Text="Education:"></asp:Label></td>
           <td>
               <asp:DropDownList ID="DropDownList5" runat="server">
                   <asp:ListItem>Bachelors</asp:ListItem>
                   <asp:ListItem>Graduate Degree</asp:ListItem>
                   <asp:ListItem>Partial College</asp:ListItem>
                   <asp:ListItem>High School</asp:ListItem>
                   <asp:ListItem>Partial High School</asp:ListItem>
               </asp:DropDownList></td>
           </tr>

           <tr style="width:890px;height:50px">
           <td style="width:145px"><asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label></td>
           <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>

        <td style="width:145px"><asp:Label ID="Label4" runat="server" Text="Income:"></asp:Label></td>
           <td><asp:TextBox ID="TextBox4" runat="server" TextMode="Number"></asp:TextBox></td>
           </tr>


           <tr style="width:890px;height:50px">
               <td style="width:145px"><asp:Label ID="Label3" runat="server" Text="Gender:"></asp:Label></td>
           <td>
               <asp:DropDownList ID="DropDownList2" runat="server">
                   <asp:ListItem Value="1">Male</asp:ListItem>
                   <asp:ListItem Value="0">Female</asp:ListItem>
               </asp:DropDownList></td>

           
           <td style="width:145px"><asp:Label ID="Label12" runat="server" Text="Have Credit:"></asp:Label></td>
           <td>
               <asp:DropDownList ID="DropDownList7" runat="server">
                   <asp:ListItem Value="1">Yes</asp:ListItem>
                   <asp:ListItem Value="0">No</asp:ListItem>
               </asp:DropDownList></td>
           

           </tr>

           <tr style="width:890px;height:50px">

               
           <td style="width:145px"><asp:Label ID="Label13" runat="server" Text="Marital Status:"></asp:Label></td>
           <td>
               <asp:DropDownList ID="DropDownList1" runat="server">
                   <asp:ListItem Value="1">Yes</asp:ListItem>
                   <asp:ListItem Value="0">No</asp:ListItem>
               </asp:DropDownList></td>


          
           <td style="width:145px"><asp:Label ID="Label7" runat="server" Text="Occupation:"></asp:Label></td>
           <td>
               <asp:DropDownList ID="DropDownList6" runat="server">
                   <asp:ListItem>Professional</asp:ListItem>
                   <asp:ListItem>Skilled Manual</asp:ListItem>
                   <asp:ListItem>Clerical</asp:ListItem>
                   <asp:ListItem>Management</asp:ListItem>
                   <asp:ListItem>Manual</asp:ListItem>
               </asp:DropDownList></td>
           </tr>

          


           <tr style="width:890px;height:50px">
                  

               <td style="width:145px"><asp:Label ID="Label11" runat="server" Text="Regione:"></asp:Label></td>
           <td>
               <asp:DropDownList ID="DropDownList4" runat="server">
                   <asp:ListItem>North America</asp:ListItem>
                   <asp:ListItem>Europe</asp:ListItem>
                   <asp:ListItem>Pacific</asp:ListItem>
               </asp:DropDownList></td>
          
           
           <td style="width:145px"><asp:Label ID="Label9" runat="server" Text="Cars:"></asp:Label></td>
           <td><asp:TextBox ID="TextBox9" runat="server" TextMode="Number"></asp:TextBox></td>
                      
           </tr>

       
           


       
           <tr style="width:890px;height:50px">
           
           <td style="width:145px"><asp:Label ID="Label10" runat="server" Text="Age:"></asp:Label></td>
           <td><asp:TextBox ID="TextBox10" runat="server" TextMode="Number"></asp:TextBox></td>


           <td style="width:145px"><asp:Label ID="Label8" runat="server" Text="Home Owner:"></asp:Label></td>
           <td>
               <asp:DropDownList ID="DropDownList3" runat="server">
                   <asp:ListItem Value="1">Yes</asp:ListItem>
                   <asp:ListItem Value="0">No</asp:ListItem>
               </asp:DropDownList></td>

           </tr>


          
           <tr style="width:890px;height:50px">

           <td colspan="3" style=";text-align:center;padding-left: 145px; padding-top: 16px;">
           <asp:Button ID="Button2" runat="server" Text="Register" OnClick="Button2_Click" />
           </td>

           </tr>

       </table>
    

</asp:Content>

