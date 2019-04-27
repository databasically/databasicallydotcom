---
title: Midwest.IO 2014
date: 2014-07-17 16:31 UTC
tags:
---
#Midwest.IO 2014

One of the best things about atteding MidwestIO was the introductions to new topics and concepts I had little to no contact with before attending. Around half of the talks I attended dealt with concepts in functional programming, an area that I'm interested in yet have little experience with. Getting exposure to new concepts and ideas is one of the best things in life, and it was even better to be exposed to so many new concepts and ideas at once.

The conference started off strong with an excellent keynote given by Dr. Jeff Norris of NASA JPL. He told stories of taking calculated risks and the importance of innovation in high pressure situations. Norris's storytelling was enhanced with a sweet augmented reality storybook and cards that created 3D models of the spaceships he was talking about in front of the camera. Norris's keynote was a great way to kick the conference off and to get the audience hyped up for the rest of the talks to come.

After the keynote, I attended Leah Hanson's talk on adding static type checking to a dynamic language. There, she talked about a library she wrote in Julia, a dynamic language, that inferred the types of variables throughout a given program. Hanson was clearly immensely knowledgeable on the subject, and I saw the value of the concepts she presented. However, I walked away unsure of how to apply those concepts to my own day-to-day short of writing my own type inference library as the talk felt somewhat domain-specific to Julia. Nonetheless, it was an interesting concept, and the talk was overall worth attending.

Next, I went to Micha Whitacre's talk on Apache Crunch. Apache Crunch is another answer to the problem of acting on big data. It simplifies the MapReduce pipeline into small, composable pieces. Without much of an introduction to the big data field, I wasn't able to tell what the benefits of Apache Crunch were when compared to other big data solutions.

After lunch, I went to Mina Markham's talk on combining SMACSS, a 'CSS Philosophy' with Sass. I was surprised at how well this talk went. Markham's presentation was engaging and entertaining. Her slides were clear and illustrated the issue her talk would solve. Markham then left us with a call to action, and demonstrated how we could apply the concepts she presented immediately. As a whole, Markham's talk was well structured and delivered; it was informative without being overwhelming.

I then went to Jim Duey's talk on the free monad (which he later told us was not actually about monads). I went into this talk expecting to learn something new about a concept functional programming, and to maybe learn what a monad actually is. Throughout his talk, Duey built what appeared to be a tree structure of sorts which he used to create a small html templating structure. It was an interesting talk, and definitely worth mulling over, but I felt I was missing some prerequisite knowledge that would have allowed me to benefit more from the talk. Unfortunately, much of the talk went over my head.

After a quick snack break, I went to Julia Elman's talk on solving problems in the engineering community as a whole. This sort of meta-talk about the community was especially interesting as I was caught off guard expecting a more technical discussion. She talked about her experiences running a camp designed to get younger people in broader demographics more interested in programming. Elman spoke about the joys she felt in expanding the reach of the field, which led her speech to be uplifting and motivating; a wonderful experience overall.

The last talk on day one of the conference I attended was delivered by Avdi Grimm of Ruby Tapas. Through a seris of clever puns, Grimm set out to bash some myths about commonly overlooked technologies. As an example for his talk, Grimm set out to build a web-chat service completely in bash, to bash the myth that bash isn't webscale. Grimm took us through his journey in creating his web-chat client only to let us down that no, bash is, in fact, not webscale. What Grimm got from his experience was not a shoddy web-chat client, but a deep understanding of a technology most people overlook in their day to day lives.

Julia Grace delivered the keynote on day two. She told the audience about the hardware revolution that is growing around the world. With the introduction of cheap embedded systems available to the general public, we are seeing rapid innovation and development of highly specialized technologies in the hardware sector that would be otherwise inaccessible to the general public. It was great to have my eyes opened to this hardware revolution going on around me that I would have otherwise been blind to.

The second talk I attended that day was delivered by Ryan Brush covering _Rules as a Control Structure_. In his talk, Brush discussed the merits of rule structures, especially in the context of Clara, a clojure rule structure library Brush helped to create. Brush showed off his system of having rules exist as first class citizens in code. It was an interesting solution to a common problem that I hadn't thought of; definitley something to keep in mind.

Immediately after was Andrew Rademacher's talk on Haskell. His was a talk on the use of Haskell in production environments with focus on its expressiveness, code minimalism, and low execution time. His example for all of this was a function that calculated the entire Fibonacci sequence in one line. While I think his claims of Haskell being both the most expressive and fastest language are overreaching, he made a great case for the language and grabbed my interest in it.

Up next was Scott Dillender's talk on ECMAScript 6. He showcased many interesting features and changes that we can hope to see adopted soon. Dillender's talk was another where I could tell the presenter was knowledgeable on their subject, but I wasn't able to take much from their presentation.

After that was Mark Allen's talk on concurrency in Erlang. He showcased this by building the backend for a game. Allen explained that the key features in Erlang that supported this ease of concurrency was its immutability across the board. It was cool to see his design process as he took us step by step through the building of the game.

I next attended Michelle Brush's talk on data compression. It was an interesting problem that I hadn't ever given a whole lot of thought to. She showed us how it was possible to compress several orders of magnitude of data further than general purpose compressions with a specialized algorithm. She then went on to explain to us why this was a bad idea in most circumstances. As a whole, her talk was an interesting thought experiment that would be very helpful in the right situations.

Next, I went to Jessica Kerr's talk on property based testing. She explained that property based tests, while more difficult than example based tests to implement, provide greater assurance and elimination of doubt in one's code. From my understanding, property based tests work by randomly generating valid input and expecting valid output. Based on that, my natural instinct is to reject the idea that random testing is more robust than directly testing edge cases. However, after some thought, I began to see her point that at a large enough scale property based tests can provide a sense of confidence in one's code.

The conference ended with a bang with Hoop Somuah's talk about his experiences at 343 Industries and with Project Orleans on Windows Azure. Project Orleans is a "cloud native" solution to distributed computing. It takes processes called grains and distributes them evenly across an array of machines known as silos. Project Orleans monitors all of these processes and machines and attempts to balance them. It was cool to see this awesome solution the Project Orleans team came up with to handle the scale of projects like Halo.

My one regret through the conference was not taking better notes. Since the end of the conference, I've wanted to go back and take a look at some of the projects or products mentioned by speakers, and have had to rely on my memory, which hasn't been very reliable.

As a whole, I thought MidwestIO was a success. Although I haven't been to very many conferences, I thought it was well run and didn't notice any issues in the production. The whole conference seemed to go off without a hitch, and I would definitely go again.


-- Nick Fausnight