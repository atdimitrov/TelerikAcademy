﻿//Write a program that reads an integer number n from the console and prints all the numbers in the interval [1..n], each on a single line.

using System;

class NumbersFrom1ToN
{
    static void Main()
    {
        Console.Write("Enter a positive integer number: ");
        int n = int.Parse(Console.ReadLine());

        for (int i = 1; i <= n; i++)
        {
            Console.WriteLine(i);
        }
    }
}