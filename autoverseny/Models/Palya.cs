using System;
using System.Collections.Generic;

namespace autoverseny.Models;

public partial class Palya
{
    public int Id { get; set; }

    public string Nev { get; set; } = null!;

    public int Hossz { get; set; }

    public string Orszag { get; set; } = null!;

    public virtual ICollection<Korido> Koridos { get; set; } = new List<Korido>();
}
