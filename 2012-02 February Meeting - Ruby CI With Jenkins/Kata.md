Kata Potter
==========

Found at [CodingDojo](http://codingdojo.org/cgi-bin/wiki.pl?KataPotter)

Once upon a time there was a series of 5 books about a very English hero
called Harry (at least when this Kata was invented, there were only 5).
Children all over the world thought he was fantastic, and, of course, so did the publisher. 
So in a gesture of immense generosity to mankind, they set up the
following pricing model to take advantage of Harry's magical powers.

One copy of any of the five books costs $8. If, however, you buy **two
different** books from the series, you get a **5%** discount on those two
books. If you buy **3 different** books, you get a **10%** discount. With **4
different** books, you get a **20%** discount. If you go the whole hog and
buy all **5** you get a huge **25%** discount.

Note that if you buy, say, four books, of which 3 are different titles,
you get a 10% discount on the 3 that form part of a set, but the fourth
book still costs $8.


Mission
-------

Write a piece of code to calculate the price of any conceivable shopping basket, 
giving as big a discount as possible.

Example: how much does this basket of books cost?

>  2 copies of the first book
>  2 copies of the second book
>  2 copies of the third book
>  1 copy of the fourth book
>  1 copy of the fifth book

Answer: $51.20

Clues
-----

You’ll find that this Kata is easy at the start. You can get going with
tests for baskets of 0 books, 1 book, 2 identical books, 2 different
books… and it is not too difficult to work in small steps and gradually
introduce complexity.

However, the twist becomes apparent when you sit down and work out how
much you think the sample basket above should cost. It isn’t
  5*8*0.75+3*8*0.90.

It is in fact

  4*8*0.8+4*8*0.8.

So the trick with this Kata is not that the acceptance test you’ve been given
is wrong. The trick is that you have to write some code that is intelligent enough
to notice that two sets of four books is cheaper than a set of five and a set of three.
