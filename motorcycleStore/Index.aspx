<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" MaintainScrollPositionOnPostback="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"> 
    
        <center>
          <form xmlns="http://www.w3.org/1999/xhtml" name="searchForm" id="searchForm" onsubmit="onSearchSubmit(event)" >
          <div id="searchLogoContainer" style="margin-top:10px"></div>
              
          <button id="searchIcon" type="button"></button>
          
          <asp:TextBox ID="TextBox3" runat="server" MaxLength="256" ToolTip="ProductName Or CategoryName" ></asp:TextBox>
          <asp:Button ID="searchSubmit" runat="server" Text="Search" OnClick="searchSubmit_Click"></asp:Button>
         
         </form>
         </center>

  


  <%-- <asp:Repeater ID="repeater" runat="server">
       
        <HeaderTemplate>
            <ul style="list-style:none">
       </HeaderTemplate>
      
        <ItemTemplate>
            
                <li>
                    <div class="productItm" >
                        <a href="#" ><img src="images/الجامعة-الافتراضية-السورية.jpg"/> </a>
                        
                        <div class="productInfo" >
                            <h4> <%#Eval("uName")%></h4>
                            <p>description about product <%#Eval("password")%></p>
                            <strong class="price">55.2$</strong>
                        </div>

                    </div>
                </li>


            
        </ItemTemplate>
        <FooterTemplate>
            </ul>
        </FooterTemplate>


    </asp:Repeater>--%>
     <section  style="vertical-align:top">
            <div>
                <hgroup>
                    <h2 style="text-align:center"> <asp:Label ID="Label15" runat="server" Text="All Products" Font-Size="X-Large" ForeColor="Red"></asp:Label></h2>
                </hgroup>

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
                            <table style="width:200px; height:auto"">
                                <tr>
                                    <td>
                                        <a href="prdctSpecification.aspx?productID=<%#Eval("Id")%><%-- %>"ProductDetails.aspx?productID=<%--#:Item.ProductID--%>">
                                            <img src="images/<%#Eval("imgName")%>"
                                                width="200" height="200" style="border: solid" /></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height:50px;vertical-align:top">Product Name:   <%#Eval("productName")%></td>
                                        
                       
                                </tr>


                                 <tr>  <td style="height:10px;vertical-align:top"> <b>Price:<%#Eval("price")%>$</b></td></tr>

                                  <tr>
                                    <td style="height:50px;vertical-align:top">Caregory: <%#Eval("catName")%></td>
                                        
                       
                                </tr>

                                <tr>
                                    <td style="width:200px;height:50px;vertical-align:top">Glance: <%#Eval("glance").ToString()%></td>
                                </tr>

                                <tr><td>
                                  
                                   
                                 
                     <asp:Image ID="i1" runat="server" ImageUrl=<%# starsAverageI1(int.Parse(Eval("VAL").ToString()))%> Height="26px" Width="26px"  />
                     <asp:Image ID="i2" runat="server" ImageUrl=<%# starsAverageI2(int.Parse(Eval("VAL").ToString()))%> Height="26px" Width="26px"  />
                     <asp:Image ID="i3" runat="server" ImageUrl=<%# starsAverageI3(int.Parse(Eval("VAL").ToString()))%> Height="26px" Width="26px"  />
                     <asp:Image ID="i4" runat="server" ImageUrl=<%# starsAverageI4(int.Parse(Eval("VAL").ToString()))%> Height="26px" Width="26px"  />
                     <asp:Image ID="i5" runat="server" ImageUrl=<%# starsAverageI5(int.Parse(Eval("VAL").ToString()))%> Height="26px" Width="26px"  />
                       
                                     
                       
                                  
                                    </td></tr>
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
        </section>
    </asp:Content> 







<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server"> 
    <%-- <asp:Login ID="Login1" runat="server" DisplayRememberMe="False" Height="109px" TextLayout="TextOnTop" Width="176px"></asp:Login> --%>  
   
    <div style="margin-top:20px;margin-bottom:5px;text-align:center;font-size:15px;border:solid 2px white;border-radius:4px;margin-right:6px;margin-left:6px;">
                              
    <asp:Label ID="Label1" runat="server" Text="Please LogIn" ForeColor="Red" Width="194px" Font-Size="15px"></asp:Label>

   <asp:Label ID="Label2" runat="server" Text=" UserName:"></asp:Label><asp:TextBox ID="TextBox1" runat="server" style="width:106px;margin-left: 2px;margin:5px 0px 5px 0px"></asp:TextBox>
   <asp:Label ID="Label3" runat="server" Text=" Password:"></asp:Label><asp:TextBox ID="TextBox2" runat="server" style="width:106px;margin-left: 9px;margin-bottom:5px" TextMode="Password"></asp:TextBox>
        
        
   
     <asp:Button ID="Button2" runat="server" Text="LogIn" style="margin:5px 0px 5px 0px" OnClick="Button2_Click"/>
        <asp:Button ID="Button1" runat="server" Text="Logout" OnClick="Button1_Click" Visible="False" />
        </div>

</asp:Content>

