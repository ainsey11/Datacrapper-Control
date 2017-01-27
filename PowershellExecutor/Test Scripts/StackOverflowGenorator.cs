using System;

class Program
{
    static void Recursive(int value)
    {
        // Write call number and call this method again.
        // ... The stack will eventually overflow.
        Console.WriteLine(value);
        Recursive(++value);
    }

    static void Main()
    {
        // Begin the infinite recursion.
        Recursive(0);
    }
}