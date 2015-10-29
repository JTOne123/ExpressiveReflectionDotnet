# Versioning
This is version 1.1.0 of the expressive reflection library.

This package is available on github at: https://www.nuget.org/packages/ExpressiveReflection/1.1.0

# ExpressiveReflectionDotnet
This is a .NET library for simplifying reflection / metadata programming and making 
any code related to reflection more readable and maintainable. This library includes
a collection of reflection related tools that would be cumbersome to implement yourself
each time you need them, but aren't available in the .NET framework directly. 

This library also presents an interface for using  .NET reflection APIs, 
based on expression tree syntax first introduced with LINQ, and makes it trivially
simple to access code metadata, in the same way that you would access those properties
in normal code.

# Expression Tree Syntax

Let's take a look at some simple examples of how to do reflection using expression tree syntax:

#### Lookup a property from the string class
```C# 
using ExpressiveReflection;

Reflection.GetMember(()=>default(string).Length); // returns PropertyInfo for string.Length
```

#### Lookup a method of the string class
```C#
using ExpressiveReflection;

Reflection.GetMethod(()=>default(string).Substring(default(int), default(int)); // returns MethodInfo for string.Substring(int,int) 
```

#### Lookup the constructor to create a decimal from long
```C#
using ExpressiveReflection;

Reflection.GetConstructor(()=>new decimal(default(long))); // returns constructorInfo for new decimal(string)
```

The ExpressiveReflection.Reflection class exposes all of the reflection methods from a single central location.

# Tests
There is a fairly comprehensive set of unit tests, and additionald examples demonstrating functionality can be found there.

# Changelog 

## 1.1.0
Add Reflection.GetMemberName() / Reflection.GetMethodName() / Reflection.GetTypeName()

## 1.0.1
Initial release