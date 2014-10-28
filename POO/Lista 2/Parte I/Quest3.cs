using System;

namespace Quest3
{
    class Quest3
    {
        static void Main(string[] args)
        {
            int[] x = new int[3];
            int i;

            Console.Write("Digite o 3 números reais: ");
            for (i = 0; i < 3; i++)
            {
                x[i] = int.Parse(Console.ReadLine());
            }
            Array.Sort(x);
            Console.WriteLine(x[0] + x[2]);
            Console.ReadKey();
        }
    }
}