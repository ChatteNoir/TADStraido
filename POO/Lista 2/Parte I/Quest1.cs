using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Quest1
{
    class Quest1
    {
        static void Main(string[] args)
        {
            int[] x = new int[4];
            int i;
            int media;

            Console.WriteLine("Digite 4 valores inteiros:");
            for (i = 0; i < 4; i++)
            {
                x[i] = int.Parse(Console.ReadLine());
            }
            media = (x[0] + x[1] + x[2] + x[3]) / 4;
            Console.WriteLine("media = {0}", media);
            Console.WriteLine("Os números menores que a média são:");
            foreach (int y in x)
            {
                if (y < media) 
                    Console.WriteLine(y);
            }
            Console.WriteLine("Os números maiores que a média são: ");
            foreach (int y in x)
            {
                if (y > media)
                    Console.WriteLine(y);
            }
            Console.ReadKey();
        }
    }
}
