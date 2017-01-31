---
layout: post
title: 7 Reasons to Have Your Next (Important) Software Application Written in Haskell
date: 2017-01-19
teaser: Thinking about having a custom software application written for you or your company? Read this first.
author: Brandon Stiles
comments: true
categories: haskell coq software
img: whiteboard-thinking.jpg
tags:
---

**Index**

* Do not remove this line (it will not be displayed)
{:toc}

### Caveat Emptor

As a business and software consultant, the most important part of my job is telling clients the truth: Haskell projects are not for every company. Haskell is an advanced programming language that is difficult for most engineers to grasp, with a high learning curve, which means... a business has to take their software product development seriously. We'll go more into this at the end of this journal post.

After 4 years of working at a startup, and then 1 1/2 years founding and running a software consulting company, I've learned that the most effective tool for *my* business and *my* clients is Haskell. I've put in the time to learn the language and have experience shipping production applications written in Haskell. Coming from a background writing software mainly in JavaScript, Ruby then Python, i.e., what we will call "mainstream languages", this is article is about my first hand experience. I've tried to be as objective as possible. Comments and suggestions (as well as corrections) are welcome; just send me a <a href="/contact" target="_blank">message</a>!

## Reasons From a Business Perspective

I'm a big fan of the Haskell programming language and community. While I find the language is a powerful tool for writing software, technically speaking, I find it even more powerful from a business perspective. Below is a great quotation to solidify my point.

> What helps people, helps business.
>
> Leo Burnett

Haskell simply enables me to produce better results more easily and enjoyably than before. Here's why.

### 1. Haskell Programs Have Fewer Bugs

Than, say, not just the aforementioned mainstream languages, but also most other languages. This is a bold claim that requires some explanation - hold your comments until the end of the post though. First, Haskell eliminates an entire category of bugs by nature of the language's design: it has a strong, static <a href="https://goo.gl/kbzaUP" target="_blank">Type System</a>. This means mistakes that stem from type mismatches are *entirely avoided*, As a brief example, a JavaScript program will let you run code that doesn't entirely make sense, like `1 + "100"` (adding a number with text), whereas it is **impossible** to do something similar to this in Haskell. To a degree, the compiler proves the correctness of your software. Secondly, Haskell is an almost pure <a href="https://goo.gl/sq1psNF" target="_blank">Functional Programming</a> (FP) language which means code is separated into two parts: the mathematically pure, and impure. This allows developers to reason more thoroughly about program logic, and deal with code that has side effects in a more controlled fashion.

Because of these two main features, there are many tools in the Haskell ecosystem that leverage the language to further improve correctness. For example, because of Haskell's type system, a library called <a href="https://goo.gl/kXsVvJ" target="_blank">QuickCheck</a> can be used to generate hundreds of thousands of tests for your program based on Property Testing (imagine throwing lots of random inputs into your program to see if it breaks). Taking this even further... **theorem provers like <a href="https://goo.gl/6J7TJX" target="_blank">Coq</a> allow developers to mathematically prove software correctness.** Pretty neat?

I'll admit I'm not the world's best software engineer. I've met brilliant people who can write great business applications better than I in languages other than Haskell. But as for me, I'd rather use a programming language that helps catch and fix my mistakes for me. Paul Hudak wrote a great <a href="http://goo.gl/zUnONn" target="_blank">paper</a> in 1994 that gets more into some auxiliary reasons for why engineers might find the language better suitable for important applications.

### 2. Adding Features and/or Extending Functionality is Safe and Easy

Similar to how software products evolve, here's a quotation from Darwin about biology.

> It is not the strongest of the species that survives, nor the most intelligent, but the one most responsive to change.
>
> Charles Darwin

Your application is going to grow, new features are going to be added. And when when this happens you better hope these new features don't break anything. Haskell, like all FP Languages, is extremely modular. Think about it in this way: Haskell programs consist of jigsaw puzzle pieces that can only fit together in a certain way, whereas one of the popular alternatives to FP, <a href="https://goo.gl/rsdKy" target="_blank">Object Oriented Programming</a> (OOP), creates programs that fit together more like uniform squares. The former allows for a well defined and determined outcome, while the later allows for an arbitrary outcome. The principle here is called <a href="https://goo.gl/xoqGRr" target="_blank">Referential Transparency</a> and is a directly related to FP.

### 3. Rapid Prototyping

Haskell is a high level language. Qualitatively speaking, this means a person can **do more with less code**. In so many words, writing in Haskell is like describing what something is, versus Python, which tells the computer what instructions to carry out.

So at the end of the day, **your business gets their product to market faster**.

### 4. Smaller Longterm Cost of Ownership

The majority of software ownership cost comes from maintenance and support. Once a software product is written and launched, all is well. As time moves by however, inevitable design or requirements mistakes crop up. And they need to be fixed. There is a great <a href="http://goo.gl/1F4zxR" target="_blank">article</a> that gets into the numbers. If there are fewer bugs in your program, it follows that the longterm cost is reduced.

### 5. Performance, Performance, and Performance

The pattern I've found is that I'll ship an application written in a mainstream programming language for a client, and then, as it gains traction and the user base grows, the applications gets slower and slower. This is completely normal - first you write an application for correctness, then you optimize it, making it faster and faster. This is what retainers are for and is part of the ongoing cost of maintenance and support.

But as it turns out - Haskell programs run extremely fast. This goes back to the fact that Haskell is compiled code, meaning an external program looks for ways to optimize the program before compiling or "building" it. <a href="http://goo.gl/d2wGh2" target="_blank">Here's</a> a great paper showing Haskell's speed versus lower level languages like C, one of the faster languages out there.

In addition, Haskell has a feature called <a href="https://goo.gl/53VvEl" target="_blank">lazy evaluation</a>, which also contributes to its speed.

### 6. Vibrant Community Support

Haskell gets a lot of flak for being such an academic language, in the "Ivory Tower" sense. However, this can also really be seen as an advantage. Look at all the great products that have come out of the AI revolution - the research for a large majority of all these Machine and Deep Learning predictive algorithms has come from the academic community. Why not expect a similar outcome with a programming language?

There's also an incredible array of high quality libraries in the Haskell community. Checkout <a href="https://goo.gl/M0QwMh" target="_blank">Hackage</a> for more info.

### 7. Stay Ahead of Your Competition

> The best way to predict the future is to invent it.
>
> Alan Kay

Albeit I'm biased, but I see a trend with Haskell and FP. What company doesn't want higher quality software, with fewer mistakes? We are now starting to see the industry pick up on this trend as well - Facebook recently rewrote a critical piece of the company's Artificial Intelligence (AI) powered spam detection library in Haskell, and open-sourced a critical piece of that project, <a href="https://goo.gl/1yx3bJ" target="_blank">Haxl</a>.

## Haskell's Pitfalls

As mentioned in the title, this article mostly pertains to "important" projects. That is, anything a person or company is willing to invest in. Haskell is a more difficult language to command and therefore there is a smaller pool of developers to choose from, so finding Haskell developers is generally harder. In my experience however, I've found and hear from friends that there are engineers *dying* to write something in Haskell.

There's a great <a href="http://goo.gl/9Ztkxn" target="_blank">quotation</a> that sums up the language well.

> Due to the language's nature and its firm roots in the academic world, the community is very math-minded; if you're a pragmatic person, this can be overwhelming at times, and if you don't speak the jargon, you'll have a harder time than with many other languages.

Also consider that while libraries like QuickCheck are great, as well as Unit Testing and Integration Testing in general, they are never perfect (unless we are talking about a theorem prover).

> Testing shows the presence, not the absence of bugs.
>
> Dijkstra

## Next Steps

Interested in working for or with us? Send us an <a href="mailto:hello@civiclabs.com" target="_blank">email</a>!
