using System;
public class Program
{
    public static void Main()
    {
        // static binding 
        Calculator calc = new Calculator();
        Console.WriteLine("Integer multiplication: " + calc.Multiply(5, 10));
        Console.WriteLine("Three integers: " + calc.Multiply(1, 2, 3));

        // dynamic binding
        Animal myBird = new Bird();
        Animal myFish = new Fish();
        Animal myDog = new Dog();

       
        myBird.Move();   
        myFish.Move();   
        myDog.Move();    

    }
}
public class Calculator
{
    public int Multiply(int a, int b)
    {
        return a * b;
    }
    public int Multiply(int a, int b, int c)
    {
        return a * b * c;
    }
}
public class Animal
{
    public virtual void Move()
    {
        Console.WriteLine("Animal moves");
    }
}
public class Bird : Animal
{
    public override void Move()
    {
        Console.WriteLine("Bird flies");
    }
}
public class Fish : Animal
{
    public override void Move()
    {
        Console.WriteLine("Fish swims");
    }
}
public class Dog : Animal
{
    public override void Move()
    {
        Console.WriteLine("Dog runs");
    }
}

