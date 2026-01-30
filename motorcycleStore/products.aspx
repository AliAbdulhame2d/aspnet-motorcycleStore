<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="products.aspx.cs" Inherits="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Repeater ID="repeater" runat="server">

        <HeaderTemplate>
            <ul>
       </HeaderTemplate>

        <ItemTemplate>
            
                <li>
                    <div class="productItm" >
                        <a href="#" ><img src="images/الجامعة-الافتراضية-السورية.jpg" style="width:100px;height:100px"/> </a>
                        
                        <div class="productInfo" >
                            <h4> Name</h4>
                            <p>description about product</p>
                            <strong class="price">55.2$</strong>
                        </div>

                    </div>
                </li>


            
        </ItemTemplate>
        <FooterTemplate>
            </ul>
        </FooterTemplate>


    </asp:Repeater>
</asp:Content>

