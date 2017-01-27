using System;

class Program
{
    static void Recursive(int value)
    {
                Console.WriteLine(value);
        Recursive(++value);
    }

    static void Main()
    {
        // Begin the infinite recursion.
        Recursive(0);
    }
}