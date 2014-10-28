using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Quest2
{
    class Quest2
    {
        static void Main(string[] args)
        {
            double raio;

            Console.WriteLine("Digite o raio da circunferência:");
            raio = Double.Parse(Console.ReadLine());
            Console.WriteLine("A área do círculo é: {0}", Math.PI * Math.Pow(2, raio));
            Console.WriteLine("O comprimento do círculo é: {0}", Math.PI * 2 * raio);
            Console.ReadKey();
        }
    }
}
