using System;
using System.Collections.Generic;

namespace autoverseny.Models;

public partial class Versenyzo
{
    public int Id { get; set; }

    public string Nev { get; set; } = null!;

    public int Eletkor { get; set; }

    public int Csapatid { get; set; }

    public virtual Csapat Csapat { get; set; } = null!;

    public virtual ICollection<Korido> Koridos { get; set; } = new List<Korido>();
}
