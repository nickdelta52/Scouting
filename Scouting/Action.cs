using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Scouting
{
    public class Action
    {
        public Action(int _time, string _key, int _obj)
        {
            this.time = _time;
            this.key = _key;
            this.obj = _obj;
        }
        public int time;
        public string key;
        public int obj;
    }
}