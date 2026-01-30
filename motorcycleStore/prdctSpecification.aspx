<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="prdctSpecification.aspx.cs" Inherits="prdctSpecification" MaintainScrollPositionOnPostback="true"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div id="specification" style="margin-top:100px">
    <Table >
        <tr>
            <td style="padding:0px 20px 0px 10px"><img src="images/<%=imgName%>" width="300" height="300" />
                <%--<img src="images/<%#Eval("imgUrl")%>"width="200" height="200" style="border: solid" /></a>--%>
            </td>

<%--all descriptopn <%=Request.QueryString["productID"]%>--%>
           
             <td>
                 <table>
                 <tr><td class="detailsSpecifics">Product Name:</td><td><%=productName%></td></tr>
                 <tr><td class="detailsSpecifics">Category:</td><td><%=catName%></td></tr>
                 <tr><td class="detailsSpecifics">Price:</td><td><%=price%>$</td></tr>
                 <tr><td class="detailsSpecifics">Maker Name:</td><td><%=makerName%></td></tr>
                 <%--<tr><td></td><td><%=imgName%></td></tr>--%>
                 <tr><td class="detailsSpecifics">Amount:</td><td> <%=amount%></td></tr>
                 <tr><td class="detailsSpecifics">Glance:</td><td><%=glance%></td></tr>
                 <tr><td class="detailsSpecifics">Description:</td><td><%=description%></td></tr>

                     <%-- The Five Stars Evaluation --%>
                 <tr><td class="detailsSpecifics">Your Evaluation:</td><td> 

                     <asp:ImageButton ID="ib1" runat="server" CommandArgument="" ImageUrl="~/images/emptystar.png" Height="30px" Width="30px" OnClick="sb1_Click"  />
                     <asp:ImageButton ID="ib2" runat="server" CommandArgument="" ImageUrl="~/images/emptystar.png" Height="30px" Width="30px" OnClick="ib2_Click" />
                     <asp:ImageButton ID="ib3" runat="server" CommandArgument="" ImageUrl="~/images/emptystar.png" Height="30px" Width="30px" OnClick="ib3_Click" />
                     <asp:ImageButton ID="ib4" runat="server" CommandArgument="" ImageUrl="~/images/emptystar.png" Height="30px" Width="30px" OnClick="ib4_Click" />
                     <asp:ImageButton ID="ib5" runat="server" CommandArgument="" ImageUrl="~/images/emptystar.png" Height="30px" Width="30px" OnClick="ib5_Click" />
                      
                  
                     
                      </td></tr>
                 <tr><td class="detailsSpecifics">Buy:</td><td>
                     <asp:ImageButton ID="ImageButton1" runat="server" Height="40px" ImageUrl="~/images/cart.png" Width="40px" /></td></tr>


                 </table>
             </td>
        </tr>

             </Table>


                     <center><asp:TextBox ID="TextBox1" runat="server" Columns="75"  Rows="1" TextMode="MultiLine" MaxLength="10"></asp:TextBox>
                     <br />                   
                     <asp:Button ID="Button1" runat="server" Text="Add Comment" OnClick="Button1_Click" />
                     </center>
                     <br /><hr />
                     <div style="font-weight:bold;font-size:x-large"><center>Comments For This Product</center></div>
                     <hr />
        
                     </div>




    <section  style="vertical-align:top">
            <div>
                <hgroup>
                  </hgroup>

                <asp:ListView ID="productList2" runat="server">

                    <EmptyDataTemplate>
                        <table >
                            <tr>
                                <td> No Comments For This Products</td>
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
                            <table style="width:100%;border-style:none;border-color:none ">

                                <tr style="background-color:#E9E9E9"><%--<td style="font-weight:bold;font-size:large;width:110px">User Name:</td>--%><td style="font-weight:bold;font-size:large;"><%#Eval("uName")%></td> </tr>
                                <tr>
                                   
                                    
                                </tr> 
                                <%--<td>User Comment:</td>--%>
                                <tr><%--<td>User Comment:</td>--%><td><%#Eval("comments")%></td></tr>
                                 <tr>
                                   <td colspan="2" style="background-color:#F6F6F6"></td>
                                    
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
        </section>
    
    
           

</asp:Content>

