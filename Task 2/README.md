## Introduction
The purpose of this program is to demonstrate static and dynamic binding in object-oriented programming (OOP) using C#. It also shows how the virtual, override, and new keywords work.

## Static Binding
Static binding is demonstrated using the Calculator class. It contains two Multiply() methods with different numbers of parameters. This is called method overloading. The compiler determines which method to call based on the arguments provided(types and amount).

## Dynamic Binding
Dynamic binding is demonstrated using the Animal, Bird, Fish, and Dog classes. The Animal class defines a virtual method called Move(). The derived classes use override to provide their own implementations. The correct method is selected at runtime based on the actual object type.

## Use of Keywords
- virtual allows a method to be overridden in a derived class.
- override provides a new implementation of an inherited virtual method.
- new can be used to hide an inherited method with another method of the same name. In this program, it is also used to create objects, for example, new Calculator().

## Conclusion
Static binding is determined at compile time, while dynamic binding is determined at runtime. The virtual and override keywords support dynamic polymorphism, while new can be used for method hiding.