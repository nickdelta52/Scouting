<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainForm.aspx.cs" Inherits="Scouting.MainForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="btnMatch" runat="server" Text="Match Scouting" OnClick="btnMatch_Click" />
        <asp:Button ID="btnPit" runat="server" Text="Pit Scouting" OnClick="btnPit_Click" />
        <asp:Button ID="btnView" runat="server" Text="View Results" OnClick="btnView_Click" />
        <asp:Button ID="btnShowAll" runat="server" Text="Show All" OnClick="btnShowAll_Click" Width="130px" />
                
        <div id ="parent" style ="background-color : #C0C0C0" runat ="server">
            <div id ="match" style ="background-color : #B0C0C0" runat ="server">
                Match Scouting <br />
                <asp:DropDownList ID="ddMatchTeam" runat="server" Width="240px"></asp:DropDownList> <br />
                <asp:ListBox ID="lbActions" runat="server" Width="240px"></asp:ListBox>
            </div>
            <div id ="pit" style ="background-color : #C0B0C0" runat ="server">
               Pit Scouting
                <br />
                <asp:Label ID="Label1" runat="server" Text="Team:" BackColor="White" BorderColor="#666666" BorderWidth="2px"></asp:Label>
                                                
                &nbsp;&nbsp;&nbsp; 
                
                <asp:DropDownList ID="lstTeamsPit" runat="server"></asp:DropDownList>
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </div>
            <div id ="view" style ="background-color : #C0C0B0" runat ="server">
                View Results
                <br />
                <asp:Label ID="lblTeam" runat="server" Text="Team:" BackColor="White" BorderColor="#666666" BorderWidth="2px" Width="76px"></asp:Label> 
                
                &nbsp;&nbsp;&nbsp; 
                
                <asp:DropDownList ID="ddDefense" runat="server" Width="160px">
                    <asp:ListItem>Portcullis</asp:ListItem>
                    <asp:ListItem>Cheval de Frise</asp:ListItem>
                    <asp:ListItem>Ramparts</asp:ListItem>
                    <asp:ListItem>Moat</asp:ListItem>
                    <asp:ListItem>Drawbridge</asp:ListItem>
                    <asp:ListItem>Sally Port</asp:ListItem>
                    <asp:ListItem>Rock Wall</asp:ListItem>
                    <asp:ListItem>Rough Terrain</asp:ListItem>
                    <asp:ListItem>Low Bar</asp:ListItem>
                </asp:DropDownList>
                &nbsp;
                <asp:Button ID="btnSort" runat="server" Text="Sort!" OnClick="btnSort_Click" />
                <br />
                <asp:ListBox ID="lbTeams" runat="server" BackColor="White" Width="80px" Rows="10"></asp:ListBox>
                &nbsp;&nbsp;&nbsp;
                <asp:ListBox ID="lbStat" runat="server" Width="160px" Rows="10"></asp:ListBox>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
