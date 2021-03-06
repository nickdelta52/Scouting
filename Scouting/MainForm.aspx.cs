﻿using System;
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
        static public string[] defenses = new string[9] {"Portcullis", "Cheval de Frise", "Ramparts", "Moat", "Drawbridge", "Sally Port", "Rock Wall", "Rough Terrain", "Low Bar"};
        
        public void Page_Load(object sender, EventArgs e)
        {
                newTeam(811,  111111111);
                newTeam(1519, 000000000);
                newTeam(456,  110101100);
                newTeam(998,  011100101);
                newTeam(1024, 101011011);
                ddMatchTeam.Items.Clear();
                lstTeamsPit.Items.Clear();
                foreach (Team team in teams)
                {
                    if (team != null)
                    {
                        ddMatchTeam.Items.Add(team.number.ToString());
                        lstTeamsPit.Items.Add(team.number.ToString());
                    }
                }
            }
        public void newTeam(int number, int binary)
        {
            bool match = false;
            for (int i = 0; i < teams.Length; i++)
            {
                if (teams[i] != null)
                {
                    if (teams[i].number == number)
                    {
                        teams[i] = new Team(number, binary);
                        match = true;
                        break;
                    }
                }
            }
            if (!match)
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
        }

        protected void btnMatch_Click(object sender, EventArgs e)
        {
            parent.Controls.Remove(pit);
            parent.Controls.Remove(view);
            parent.Controls.Add(match);
        }

        protected void btnPit_Click(object sender, EventArgs e)
        {
            parent.Controls.Remove(match);
            parent.Controls.Remove(view);
            parent.Controls.Add(pit);
        }

        protected void btnView_Click(object sender, EventArgs e)
        {
            parent.Controls.Remove(match);
            parent.Controls.Remove(pit);
            parent.Controls.Add(view);
        }

        protected void btnShowAll_Click(object sender, EventArgs e)
        {
            parent.Controls.Add(match);
            parent.Controls.Add(pit);
            parent.Controls.Add(view);
        }

        protected void btnSort_Click(object sender, EventArgs e)
        {
            lbTeams.Items.Clear();
            lbStat.Items.Clear();
            string selected = ddDefense.SelectedValue;
            int key = Array.IndexOf(defenses, selected);
            foreach (Team team in teams)
            {
                if (team != null)
                {
                    if (team.defenses[key])
                    {
                        lbTeams.Items.Add(team.number.ToString());
                        lbStat.Items.Add(team.defenses[key].ToString());
                    }
                }
            }
            foreach (Team team in teams)
            {
                if (team != null)
                {
                    if (!team.defenses[key])
                    {
                        lbTeams.Items.Add(team.number.ToString());
                        lbStat.Items.Add(team.defenses[key].ToString());
                    }
                }
            }
        }

        protected void btnSubPit_Click(object sender, EventArgs e)
        {
            
        }

        
        protected void btnAddAction_Click(object sender, EventArgs e)
        {

        }

        protected void ddMatchTeam_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void btnMatchTeamSelect_Click(object sender, EventArgs e)
        {

        }
    }
}