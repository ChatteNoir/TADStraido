using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Quest7
{
    class Quest7
    {
        static void Main (string[] args)
		{
            string[] mes = new string[12] {"janeiro", "fevereiro", "março", "abril", "maio", "junho", "julho", "agosto", "setembro", "outubro", "novembro", "dezembro"};
			Console.WriteLine ("Digite uma data no formato dd/mm/aaaa");
			String[] data = Console.ReadLine ().Split('/');
			Console.WriteLine ("A data é " + data[0] + " de " + mes[int.Parse(data[1]) - 1] + " de " + data[2]);
            Console.ReadKey();
		}
    }
}
