using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace celloveszetCLI
{
    internal class lovok
    {
        public string nev {  get; private set; }
        public int elsoloves { get; private set;}
        public int masodikloves {  get; private set; }  
        public int harmadikloves { get; private set; }
        public int negyedikloves { get; private set; }

        public lovok(string nev, int elsoloves, int masodikloves, int harmadikloves, int negyedikloves)
        {
            this.nev = nev;
            this.elsoloves = elsoloves;
            this.masodikloves = masodikloves;
            this.harmadikloves = harmadikloves;
            this.negyedikloves = negyedikloves;
        }
         

    }
}
