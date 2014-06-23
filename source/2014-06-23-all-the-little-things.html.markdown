---
title: All the Little Things
date: 2014-06-23 16:31 UTC
tags:
---
# All the Little Things  

<iframe width="853" height="480" src="//www.youtube-nocookie.com/embed/8bZh5LMaSmE" frameborder="0" allowfullscreen></iframe>
- - -
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;At RailsConf 2014, Sandi Metz delivered a talk over refactoring complex chunks of code. She praised the value of breaking large pieces of code in to smaller, more digestible pieces. Metz used the [gilded rose kata][1] as an example of complex code to break down and simplify. In her talk, Metz broke down the giant conditional presented in the gilded rose into much smaller pieces. Through this, she created simpler, more maintainable, and more extensible code.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Metz began her talk promising her listeners that if they would make smaller things, they would write better code. She then introduced the gilded rose kata and her goal of adding the functionality for 'conjured' items. The issue was that the conditional in the `tick` method was too complex to easily add any behavior. Before adding any functionality, Metz opted to refactor the given code. She began refactoring by breaking each part of the large conditional into separate methods. She then created objects to cover the functionality of those methods. By breaking the functionality of `GildedRose` into small objects, Metz simplified the code base. `GildedRose` was no longer a giant class, but a simple object factory. All Metz had to do to add `Conjured` was to create the `Conjured` class and add it to a hash in `GildedRose`.

Throughout her talk, Metz made five few key points:

 1. "Make Smaller Things"  
    Writing small objects and small methods leads to maintainable, flexible, and understandable code.

 2. "Refactor Under Green; reach for the lowest hanging green."  
    Ensuring tests pass before refactoring can help to prevent changes in behavior after refactoring.

 3. "Duplication is far cheaper than the wrong abstraction"  
    While duplication isn't great, writing the wrong abstraction can be expensive. When refactoring, don't get caught up on tangents and write unnecessary abstractions.

 4. "Inheritance is not evil"  
    Many people get a bad impression about inheritance from seeing it used the wrong way. But, as Metz suggests, inheritance can be the perfect tool when used properly. The key is to keep it simple. As Metz put it, keep inheritance trees shallow and narrow.

 5. "Reach for Open/Closed"  
    Adding behavior should not require editing existing code. This is a concept many people have trouble applying in practice. Yet, when following the other principles of SOLID design and the advice given by Metz, it is doable. Doing so will, in the long run, save time and effort that one would spend combating complexity when making changes later on.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;I see examples throughout my old code that could benefit from Metz's advice. Too many large objects and methods. Objects that know too much about other objects and their environment. Shirking away from inheritence wherever possible. Having to edit old code to introduce new behavior.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Metz's talk changed the way I look at complexity in code structure. I'm guilty of falling into the trap of thinking that creating more objects leads to more complex code. But, based on Metz's talk, creating more, smaller objects and methods is the simpler way to structure code.

-- Nick Fausnight

  [1]: https://github.com/professor/GildedRose
