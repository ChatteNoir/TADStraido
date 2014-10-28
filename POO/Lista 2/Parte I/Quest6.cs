using System;

namespace Quest6
{
    class Quest6
    {
        static void Main(string[] args)
        {
            int[] x = new int[10];
            int i;

            for (i = 0; i < 10; i++)
            {
                Console.Write("Digite o {0:00}º valor: ", i + 1);
                x[i] = int.Parse(Console.ReadLine());
            }
            Array.Sort(x);
            Console.WriteLine("O maior valor é {0} e o menor é {1}", x[9], x[0]);
            Console.ReadKey();
        }
    }
}