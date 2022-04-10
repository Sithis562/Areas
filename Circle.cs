using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Areas
{
    public static class Circle
    {
        public static double Area(double R)
        {
            return Math.PI * Math.Pow(R, 2);
        }
    }
}
