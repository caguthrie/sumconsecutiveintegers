### Question: For any integer n>0, write a program that tells you if a sum of any consecutive integers equals n.

#### Version 1:
I wrote this version, interating over every number less than n/2, starting from 1.  Computing the first 20000 numbers takes 
20 seconds.

#### Verion 2:
Thinking that storing past sums in a hash, where the starting number is a key and the value is an array of sums from that key, I 
wrote this implementation thinking that it would optimize version 1.  Interestingly enough, this version took a very long time 
for the same first 20000 integers as input for the first version.  It seems that pushing and looking up data in dynamically 
sized arrays takes a longer amount of time than just the brute force of version 1.  This implementation took a number of minutes 
that I was too impatient to measure.

#### Version 3:
Thinking that we could cut down on the number of iterations in the inner (j) loop, I started from n/2 and went to down to 1 
instead of starting at 1 and going up to n/2 when trying to find a valid sum.  This cut the runtime dramatically, to 5 seconds 
for the first 20000 integers.  