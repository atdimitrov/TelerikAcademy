﻿//* Write a program that calculates for given N how many trailing zeros present at the end of the number N!. Examples:
//	N = 10  N! = 3628800  2
//	N = 20  N! = 2432902008176640000  4
//	Does your program work for N = 50 000?
//	Hint: The trailing zeros in N! are equal to the number of its prime divisors of value 5. Think why!

using System;

class TrailingZeros
{
    static void Main()
    {
        Console.WriteLine("The program will gave you the number of trailing zeros at the end of N!");
        Console.Write("N = ");
        int n = int.Parse(Console.ReadLine());

        Console.WriteLine("N! have {0} trailing zeros.", n / 5);
    }
}