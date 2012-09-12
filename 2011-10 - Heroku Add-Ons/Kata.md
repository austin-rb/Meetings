Kata Manifest
カタのマニフェスト

The Romans were a clever bunch. They conquered most of Europe and ruled it for hundreds of years. But one thing they never discovered though was the number zero--this made writing and dating extensive histories of their exploits slightly more challenging. Nonetheless their number system is still in use today.

The Romans wrote numbers using letters - I, V, X, L, C, D, M. (notice these letters have lots of straight lines and are hence easy to hack into stone tablets)

## Part I

The Kata says you should write a class, module, etc. to convert numerals to Roman Numerals: eg

     1 --> I
     10 --> X
     7 --> VII

...and so on

For a full description of how it works, [check out the Wikipedia article](http://en.wikipedia.org/wiki/Roman_numerals).

There is no need to be able to convert numbers larger than about 3000. (The Romans themselves didn't tend to go any higher)

Note that you can't write numerals like "IM" for 999. Wikipedia says: Modern Roman numerals ... are written by expressing each digit separately starting with the left most digit and skipping any digit with a value of zero. To see this in practice, consider the ... example of 1990. In Roman numerals 1990 is rendered: 1000=M, 900=CM, 90=XC; resulting in MCMXC. 2008 is written as 2000=MM, 8=VIII; or MMVIII.

## Part II

Write a function to convert in the other direction, i.e. numeral to digit

- Can you make the code really beautiful and highly readable?
- Does it help to break out lots of small named functions from the main function, or is it better to keep it all in one function?
if you don't know an algorithm to do this already, can you derive one using strict TDD?
- Does the order you take the tests in affect the final design of your algorithm?
- Would it be better to work out an algorithm first before starting with TDD?
if you do know an algorithm already, can you implement it using strict TDD?
- Can you think of another algorithm?
- What are the best data structures for storing all the numeral letters? (I, V, D, M etc)
- What is the best way to verify your tests are correct?