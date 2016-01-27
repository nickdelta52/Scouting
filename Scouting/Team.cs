using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Scouting
{
    public class Team
    {
        public int number;
        public bool[] defenses;
        public string[] actions;
        public Team(int _number, int _defensesbin)
        {
            this.number = _number;
            defenses = new bool[9];
            for (int i = 0; i < 9; i++)
            {
                if (_defensesbin.ToString("000000000")[i] == '1')
                    defenses[i] = true;
                else
                    defenses[i] = false;
            }
            actions = new string[120];
        }
    }
}