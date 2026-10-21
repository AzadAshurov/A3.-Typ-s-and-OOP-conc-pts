# Library Catalog System

## Introduction

This project is a simple library catalog system developed in Ruby. It demonstrates the main principles of Object-Oriented Programming (OOP), including inheritance, encapsulation, and polymorphism.

## Classes

### LibraryItem

The base class stores common information about library items, including title, author, and publication year. It also provides a `display_info` method to display these details.

### Book, DVD, and CD

These classes inherit from `LibraryItem` and add their own properties:

- **Book:** genre
- **DVD:** director and genre
- **CD:** artist and genre

I could have made `genre` a property of the base class, but then every child class would inherit it, including classes for which it might not be relevant. Each derived class overrides the `display_info` method to display its information. The `super` keyword is used to call the parent class method.

### Library

The `Library` class manages a collection of library items. It includes methods to add items, remove items, and display information about all items in the collection.

## OOP Principles

- **Inheritance:** `Book`, `DVD`, and `CD` inherit common properties and methods from `LibraryItem`.
- **Encapsulation:** Instance variables store object data, while `attr_reader` provides read-only access to selected properties.
- **Polymorphism:** Each item has its own implementation of `display_info`. The library can call this method on different item types using the same interface.

## Sources

- [Ruby Official Documentation – Classes and Methods](https://www.ruby-lang.org/en/documentation/faq/7/)
- [freeCodeCamp – Introduction to Object-Oriented Programming with Ruby](https://www.freecodecamp.org/news/introduction-to-object-oriented-programming-with-ruby-d594e1c6eebe)
- [Stack Overflow – What Does `super` Do in Ruby?](https://stackoverflow.com/questions/31019009/what-is-super-in-ruby)