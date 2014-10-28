using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Quest5
{
    class Quest5
    {
        static void Main(string[] args)
        {
            int[] x = new int[4];
            int i;
            

            Console.WriteLine("Digite 4 numeros inteiros: ");
            for (i = 0; i < 4; i++)
            {
                x[i] = int.Parse(Console.ReadLine());
            }
            Array.Sort(x);
            Console.WriteLine("Maior Valor: {0}", x[3]);
            Console.WriteLine("Menor Valor: {0}", x[0]);
            Console.WriteLine("A soma do segundo maior valor com o segundo menor = {0}", x[2] + x[1]);
            Console.ReadKey();
        }
    }
}
