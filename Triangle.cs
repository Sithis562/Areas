using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Areas
{
    public static class Triangle
    {
        public static double Area(double firstSide, double secondSide, double thirdSide)
        {
            double p, S;

            p = (firstSide + secondSide + thirdSide) / 2;

            return S = Math.Sqrt(p * (p - firstSide) * (p - secondSide) * (p - thirdSide));
        }
    }
}
