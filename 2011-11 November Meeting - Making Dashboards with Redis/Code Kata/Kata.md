Kata Manifest カタのマニフェスト

Anagrams are sets of words or phrases that contain the same letters, arranged differently.

For example:

``` ruby
["car", "arc"]
["incorporates", "procreations"]
["Microsoft Help and Support Website", "Stupid patch! Problem is often worse!"]
```

## Part 1

Create a program that reads in `wordlist.txt` (c/o [12Dicts Package](http://wordlist.sourceforge.net/)) and outputs all of the anagrams, each set delimited by a newline.

While programming, ask yourselves the following questions:

- Can you make the code really beautiful and highly readable?
- Would it be better to work out an algorithm first before starting with TDD? if you do know an algorithm already, can you implement it using strict TDD?
- Can you think of another algorithm? Is there another way you could store your anagram sets?
- What is the best way to verify your tests are correct?

## Part 2

Modify your program to be able to check whether two phrases are anagrams (like in the 3rd example above, anagrams are insensitive to whitespace, punctuation and capitalization).

# Part 3 (Bonus)

Modify your program to _generate_ anagrams based on a particular phrase, following the same considerations in Part 2.

While this part will very likely take longer than the allotted time for this exercise, consider the following:

- Could you write a subset of this functionality, taking in a single word? How about 2 words?
- What kind of additional data would be useful?
- What additional data structures, algorithms, or natural language processing tricks do you know that could be useful?
