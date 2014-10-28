using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Quest8
{
    class Quest8
    {
        static void Main(string[] args)
        {
            string x;

            Console.WriteLine("Digite dois valores inteiros separados por um operador +, -, * ou /");
            x = Console.ReadLine();
            String[] calculo = x.Split('/', '+', '-', '*');
            if (x.Contains("+"))
            {
                Console.WriteLine("O resultado da operação é: {0}", int.Parse(calculo[0]) + int.Parse(calculo[1]));
            }
            else if (x.Contains("-"))
            {
                Console.WriteLine("O resultado da operação é: {0}", int.Parse(calculo[0]) - int.Parse(calculo[1]));
            }
            else if (x.Contains("/"))
            {
                Console.WriteLine("O resultado da operação é: {0}", int.Parse(calculo[0]) / int.Parse(calculo[1]));
            }
            else if (x.Contains("*"))
            {
                Console.WriteLine("O resultado da operação é: {0}", int.Parse(calculo[0]) * int.Parse(calculo[1]));
            }
            Console.ReadKey();
        }
    }
}
