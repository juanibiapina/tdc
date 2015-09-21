# Functional Programming in Ruby

## Overview

- How Rails is
- Introduction to Functinal programming
- Abstractions and the bridge between functional and OO
- How to incorporate functional programming in rails

## The world we live in

- Rails
  - Used almost everywhere
  - MVC architecture
  - Models are your domain model
    - So is rails saying that all domain logic should go in models?
      - Apparently yes
  - If you've got fat controllers, move stuff to models
  - If you've got fat models, move stuff where?

  - MVC is wrong
    - Wikipedia page on MVC doesn't agree
    - Talk page has some interesting view points on why everything MVC these
      days is wrong
    - Am I suggesting we don't do things the Rails way?
      - What makes a Senior developer is the ability to understand and make
        this decision

  - What goes in the lib folder?

- Layers
  - Model (business logic)
  - View (html, css and a world of javscript)
  - Controller (Receives requests and generally does a lot of things)

## Introduction to Functional Programming

- What is functional programming?
  - Definitions
    - Programming with functions
    - By John Hughes (higher-order functions and lazyness)
    - By Simon Peyton Jones (higher-order functions and purity)
    - By Martin Odersky (Object Orientation is not exclusive)

  - The usual concepts
    - First class functions
    - Imutability
    - Free of Side Effects

  - A functional language is a language that makes it easier to write functional code

  - Languages and functional concepts
    - Haskell
    - Clojure
    - Scala
    - Ruby

- Courses on Coursera
  - Programming Languages
  - Functional Programming Principles in Scala

- A paradigm
  - A model of how to think about problems

- Using functional style in rails applications usually makes the code worse

## Abstractions

- A functions represents a concept
- You can combine functions to represent other concepts

- Software should be built in layers (SICP)
- Each layer has its abstractions
- Each layer is built on top of the abstractions of the previous layer
- Functions are the main abstraction in functional programming
- Objects are the main abstractions in object orientation
- What a function does in functional programming, an object does in OOP

- Operations to abstract business operations
