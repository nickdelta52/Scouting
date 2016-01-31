<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainForm.aspx.cs" Inherits="Scouting.MainForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Button ID="btnMatch" runat="server" Text="Match Scouting" OnClick="btnMatch_Click" />
        <asp:Button ID="btnPit" runat="server" Text="Pit Scouting" OnClick="btnPit_Click" />
        <asp:Button ID="btnView" runat="server" Text="View Results" OnClick="btnView_Click" />
        <asp:Button ID="btnShowAll" runat="server" Text="Show All" OnClick="btnShowAll_Click" />
                
        <div id ="parent" style ="background-color : #C0C0C0" runat ="server">
            <div id ="match" style ="background-color : #B0C0C0" runat ="server">
                Match Scouting <br />
                        <asp:DropDownList ID="ddMatchTeam" runat="server" Width="240px"></asp:DropDownList> <br />
                        <asp:ListBox ID="lbActions" runat="server" Width="240px"></asp:ListBox>
                        <asp:ListBox ID="ListBox1" runat="server" Width ="240px"></asp:ListBox>
            </div>
            <div id ="pit" style ="background-color : #C0B0C0" runat ="server">
               Pit Scouting
                <br />
                <asp:Label ID="Label1" runat="server" Text="Team:" BackColor="White" BorderColor="#666666" BorderWidth="2px"></asp:Label>
                                                
                &nbsp;&nbsp;&nbsp; 
                
                <asp:DropDownList ID="lstTeamsPit" runat="server"></asp:DropDownList> 
                <br />
                <asp:Label ID="lblDefences" runat="server" Text="Defences:"></asp:Label>
                
                &nbsp;&nbsp;&nbsp;

                <br />
                <asp:CheckBoxList ID="chkDefences" runat="server" BackColor="White" BorderColor="#666666" BorderWidth="2px">
                    <asp:ListItem>Portcullis</asp:ListItem>
                    <asp:ListItem>Cheval de Frise</asp:ListItem>
                    <asp:ListItem>Ramparts</asp:ListItem>
                    <asp:ListItem>Moat</asp:ListItem>
                    <asp:ListItem>Drawbridge</asp:ListItem>
                    <asp:ListItem>Sally Port</asp:ListItem>
                    <asp:ListItem>Rock Wall</asp:ListItem>
                    <asp:ListItem>Rough Terrain</asp:ListItem>
                    <asp:ListItem>Low Bar</asp:ListItem>
                </asp:CheckBoxList>
                    <br />
                <asp:Label ID="lblGoal" runat="server" Text="Goals:"></asp:Label>
                <asp:CheckBoxList ID="chkGoals" runat="server" BackColor="White" BorderColor="#666666" BorderWidth="2px">
                    <asp:ListItem>High</asp:ListItem>
                    <asp:ListItem>Low</asp:ListItem>
                </asp:CheckBoxList>
                <br />
                <asp:CheckBoxList ID="chkClimb" runat="server" BackColor="White" BorderColor="#666666" BorderWidth="2px">
                    <asp:ListItem>Can Climb</asp:ListItem>
                </asp:CheckBoxList>
                <br />
                <asp:CheckBoxList ID="chkHP" runat="server" BackColor="White" BorderColor="#666666" BorderWidth="2px">
                    <asp:ListItem>Require Human Player Station</asp:ListItem>
                </asp:CheckBoxList>
                <br />
                <asp:Label ID="lblStartPos" runat="server" Text="Prefered Start Position:"></asp:Label>
                <asp:CheckBoxList ID="chkStartPos" runat="server" BackColor="White" BorderColor="#666666" BorderWidth="2px">
                <asp:ListItem>Middle</asp:ListItem>
                <asp:ListItem>Spy Position</asp:ListItem>
                </asp:CheckBoxList>
                <br />
                <asp:Label ID="lblClimb" runat="server" Text="Drive Train:"></asp:Label>
                <br />
                <asp:TextBox ID="txtDrive" runat="server" BorderColor="#666666" BorderWidth="2px" Height="100px" Width="300px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="lblInt" runat="server" Text="Intake:"></asp:Label>
                <br />
                <asp:TextBox ID="txtIntake" runat="server" BorderColor="#666666" BorderWidth="2px" Height="100px" Width="300px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="lblSpy" runat="server" Text="Spy Bot Capability:"></asp:Label>
                <br />
                <asp:TextBox ID="txtSpy" runat="server" BorderColor="#666666" BorderWidth="2px" Height="100px" Width="300px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="lblDefCap" runat="server" Text="Defence Capability:"></asp:Label>
                <br />
                <asp:TextBox ID="txtDefCap" runat="server" BorderColor="#666666" BorderWidth="2px" Height="100px" Width="300px"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="btnSubPit" runat="server" Text="Submit" OnClick="btnSubPit_Click" />
                <br />
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
    </form>
</body>
</html>

