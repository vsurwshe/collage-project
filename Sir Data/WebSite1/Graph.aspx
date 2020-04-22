<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Graph.aspx.cs" Inherits="Graph" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 30%;
        }
        .style3
        {
            width: 4px;
        }
        .style4
        {
            width: 20%;
        }
        .style5
        {
            width: 48%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td colspan="4">
                    <asp:Panel ID="Panel1" runat="server" BorderColor="#003366" BorderStyle="Solid" 
                        
                        style="position: relative; top: 0px; left: 0px; height: 39px; text-align: center;">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#660033" 
                        style="font-size: xx-large; text-align: center" 
                        Text="Marathwada Hydrological Information System"></asp:Label>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
        <asp:DropDownList ID="DropDownList4" runat="server" BackColor="White" 
            Font-Bold="False" Font-Names="Arial" Font-Size="12pt" ForeColor="Black" 
            Height="24px"  
            Width="112px" Font-Italic="True">
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
                    <asp:Button ID="Button2" runat="server" BackColor="White" BorderStyle="Solid" 
            Font-Bold="False" Font-Names="Times New Roman" Font-Size="Medium" 
            Text="Get River List" Width="106px" Height="21px" onclick="Button2_Click" />
                    <asp:DropDownList ID="DropDownList3" runat="server" BackColor="White" 
            Font-Bold="False" Font-Names="Arial" Font-Size="12pt" ForeColor="Black" 
            Height="31px"  
            ontextchanged="Button1_Click" Width="110px">
            <asp:ListItem>Select River</asp:ListItem>
        </asp:DropDownList>
                </td>
                <td class="style4">
                    <asp:Label ID="Label2" runat="server" style="font-weight: 700" 
                        Text="Select Year:"></asp:Label>
                    <asp:DropDownList ID="DropDownList1" runat="server" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem>2013</asp:ListItem>
                        <asp:ListItem>2014</asp:ListItem>
                        <asp:ListItem>2015</asp:ListItem>
                        <asp:ListItem>2016</asp:ListItem>
                    </asp:DropDownList>
                    </td>
                <td class="style3">
                    &nbsp;&nbsp;&nbsp;
                    &nbsp;</td>
                <td class="style5">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="Get Graph" Width="88px" 
                        onclick="Button1_Click" />
                &nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    <asp:Chart ID="Chart1" runat="server" Width="977px" 
        DataSourceID="AccessDataSource2" onload="Chart1_Load" 
        style="margin-left: 59px">
        <series>
            <asp:Series Name="Rain Fall" XValueMember="Date_MY" 
        YValueMembers="Precipitation" ChartArea="ChartArea1" Legend="Legend1">
            </asp:Series>
        <asp:Series ChartArea="ChartArea1" ChartType="Line" Name="Evoprations" 
        XValueMember="Date_MY" YValueMembers="Evapotranspiration" Legend="Legend1"></asp:Series>
            <asp:Series 
        ChartArea="ChartArea1" ChartType="Line" Name="Water Level" XValueMember="Date_MY" 
        YValueMembers="Water Yield" Legend="Legend1"></asp:Series></series>
        <chartareas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </chartareas>
        <Legends>
            <asp:Legend Name="Legend1">
            </asp:Legend>
        </Legends>
        <Titles>
            <asp:Title Font="Microsoft Sans Serif, 9.75pt" ForeColor="Highlight" 
                Name="Title1" Text="Period">
                <Position Height="4.48369551" Width="94" X="3" Y="94" />
            </asp:Title>
            <asp:Title Docking="Left" Font="Microsoft Sans Serif, 9.75pt" 
                ForeColor="Highlight" Name="Title2" Text="Values(MM)">
            </asp:Title>
        </Titles>
    </asp:Chart>
    <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
        DataFile="~/PPDB.accdb" SelectCommand="SELECT * FROM [MANJRA_4041505_WB]">
    </asp:AccessDataSource>
    
    
    </form>
</body>
</html>
