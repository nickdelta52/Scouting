using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Scouting
{
    public partial class MainForm : System.Web.UI.Page
    {
        public Team[] teams = new Team[6000];
        static public string[] defenses = new string[9] {"Portcullis", "Cheval de Frise", "Ramparts", "Moat", "Drawbridge", "Sally Port", "Rock Wall", "Rought Terrain", "Low Bar"};
        
        protected void Page_Load(object sender, EventArgs e)
        {
            newTeam(811, 111111111);
            newTeam(1519, 000000000);
            newTeam(456, 110101100);
            newTeam(998, 011100101);
            newTeam(1024, 101011011);
        }
        public void newTeam(int number, int binary)
        {
            for (int i = 0; i < teams.Length; i++)
            {
                if (teams[i] == null)
                {
                    teams[i] = new Team(number, binary);
                    break;
                }
            }
        }

        protected void btnMatch_Click(object sender, EventArgs e)
        {
            parent.Controls.Clear();
            parent.Controls.Add(match);
        }

        protected void btnPit_Click(object sender, EventArgs e)
        {
            parent.Controls.Clear();
            parent.Controls.Add(pit);
        }

        protected void btnView_Click(object sender, EventArgs e)
        {
            parent.Controls.Clear();
            parent.Controls.Add(view);
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        { //this should work, but the event isn't happening at all
            string selected = DropDownList1.SelectedValue;
            int key = Array.IndexOf(defenses, selected);
            foreach (Team team in teams)
            {
                if (team.defenses[key])
                {
                    lbTeams.Items.Add(team.number.ToString());
                    lbStat.Items.Add(team.defenses[key].ToString());
                }
            }
            foreach (Team team in teams)
            {
                if (!team.defenses[key])
                {
                    lbTeams.Items.Add(team.number.ToString());
                    lbStat.Items.Add(team.defenses[key].ToString());
                }
            }
        }
    }
}