# Challenge: Classes and Objects - The Periodic Table

You will implement a `class` called `Elements` that has a `method` which rounds atomic weight to the nearest whole number, and `attributes` that describe the element.

## Instructions

1. Take three deep breaths :)
2. Perform a `git clone <url of this repo>` on this repository. Open the folder in VS Code using `code .`.
3. Open the `periodic_table.rb` and implement the requirements for the periodic table app.
4. Push your app to your own repository on Github

## Pre-challenge Review

Check out the Canvas modules on [classes and objects](https://coderacademy.instructure.com/courses/144/modules/items/5097), [methods](https://coderacademy.instructure.com/courses/144/modules/items/5080) and [data types and variables](https://coderacademy.instructure.com/courses/144/pages/unit-data-types-and-variables?module_item_id=5077).

### What is an `instance variable`?

A variable that belongs to the instance of a class.

### What is a `class instance variable`?

A variable that is accessible on a class - it is not available to instances of classes.

### What is a `method`?

A method is reusable block of code that does something. When a method is part of a class, it performs an action something related to that class or its instances. 

There are two types of methods: 
- `instance methods`: are blocks of code that do stuff with instances and instance variables
- `class instance methods`: are blocks of code that belong to the class that do stuff with class instance variables

### What is a `class`?

   A class is a blueprint for an object that has `attributes` and `methods`.

### What is an `object`?

An `object` is an instance of a `class`, the following code creates an `object` which is an instance of the `Element` class:

```ruby
   myObject = Element.new
```

Always remember, however:

> "A `class` is an `object` and an `object` is a `class`."

This means that `classes` and `objects` both have attributes and methods. 

If you want to nail down the **difference** between a `class` and an `object` you can say that a `class` is a blueprint for an `object`.

### Using `self`

> "Always be aware of context when using `self`"

Be *mindful* of how you use `self` - in some contexts it will refer to the `class`, in others it will refer to the instance of a `class`:

- if you are inside the `initialize` method in the definition of a `class`: `self` refers to the class instance you are creating
  - to access the `class` inside the `initialize` method you can use `self.class`, see below:

```ruby
   class Student
     attr_accessor :name, :interests, :is_graduated
     
     # INITIALISES A NEW INSTANCE OF A CLASS
     def initialize name, interests = [], *args
       @name = name
       @interests = interests
        @student_numnber = rand(666)
        @is_graduated = false
        @args = args
        self.class.all << self ## This adds the instance of the class to the @students class instance variable
     end
     
     # DELCARE CLASS INSTANCE VARIABLES ========   
     @students = [] # This is a class instance variable.
     
     # DECLARE CLASS INSTANCE METHODS =========   
     def self.all # This is a class instance method
       @students # Returns the @students class instance variable
     end
   end
```
