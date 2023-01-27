using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class CALCOLI
{

    // membri della classe
    public string op1;
    public string op2;
    // costruttore
    public CALCOLI()
    {

    }

    // metodi della classe
    public int Somma()
    {
        int a = int.Parse(op1);
        int b = int.Parse(op2);
        return a + b;
    }

    public int Moltiplica()
    {
        int a = int.Parse(op1);
        int b = int.Parse(op2);
        return a * b;
    }
}