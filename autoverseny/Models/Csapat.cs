using System;
using System.Collections.Generic;

namespace autoverseny.Models;

public partial class Csapat
{
    public int Id { get; set; }

    public string Nev { get; set; } = null!;

    public int Alapitva { get; set; }

    public virtual ICollection<Versenyzo> Versenyzos { get; set; } = new List<Versenyzo>();
}
