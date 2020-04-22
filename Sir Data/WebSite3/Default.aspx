﻿<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body bgcolor="#3399ff">
    <form id="form2" runat="server">
    &nbsp;<asp:Panel ID="Panel1" runat="server" BackColor="#FFFFCC" 
        BorderColor="#FFFFCC" BorderStyle="Solid" Height="85px" Width="1408px">
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
            ID="Label2" runat="server" 
            Font-Bold="True" 
            ForeColor="#660033" Text="Marathwada Hydrological Information System" 
            style="font-size: xx-large; text-align: center"></asp:Label>
        <asp:Panel ID="Panel2" runat="server">
        </asp:Panel>
    </asp:Panel>
    <div>
        <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#00FFCC" 
            Font-Bold="True" Font-Names="Arial" Font-Size="12pt" ForeColor="Black" 
            Height="35px" onselectedindexchanged="DropDownList1_SelectedIndexChanged1" 
            Width="183px">
            <asp:ListItem>Select District</asp:ListItem>
            <asp:ListItem>Aurangabad</asp:ListItem>
            <asp:ListItem>Beed</asp:ListItem>
            <asp:ListItem>Hingoli</asp:ListItem>
            <asp:ListItem>Jalana</asp:ListItem>
            <asp:ListItem>Latur</asp:ListItem>
            <asp:ListItem>Nanded</asp:ListItem>
            <asp:ListItem>Ossmanabad</asp:ListItem>
            <asp:ListItem>Parbhani</asp:ListItem>
        </asp:DropDownList>
        &nbsp;<asp:Button ID="Button2" runat="server" BackColor="#66CCFF" BorderStyle="Solid" 
            Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" 
            onclick="Button2_Click" Text="Get River List" Width="254px" />
    &nbsp;<asp:DropDownList ID="DropDownList3" runat="server" BackColor="#00FFCC" 
            Font-Bold="True" Font-Names="Arial" Font-Size="12pt" ForeColor="Black" 
            Height="35px" onselectedindexchanged="DropDownList3_SelectedIndexChanged" 
            ontextchanged="Button1_Click" Width="125px">
            <asp:ListItem>Select River</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="Button1" runat="server" BackColor="#66CCFF" BorderStyle="Solid" 
            Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" 
            onclick="Button1_Click" Text="Get  River Map" Width="179px" 
                                                    />
        <asp:Button ID="Button3" runat="server" BackColor="#66CCFF" Font-Bold="True" 
            Font-Names="Times New Roman" Font-Size="12pt" Text="River Level" 
            Width="164px" />
        <asp:Button ID="Button4" runat="server" BackColor="#66CCFF" Font-Bold="True" 
            Font-Names="Times New Roman" Font-Size="12pt" Text="Generate Graph" 
            Width="164px" />
    </div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Image ID="Image1" runat="server" BorderColor="#FFFFCC" BorderStyle="Dotted" 
        Height="542px" style="margin-right: 1px" Width="704px" 
        ImageUrl="~/NNDManjra.jpg" ImageAlign="Middle" />
    <div>
    
    </div>
    </form>
</body>
</html>