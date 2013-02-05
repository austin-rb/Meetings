# Talk: Creating API Client Gems - Ben Hamill

Ben regails us with tales of crafting an API client gem in Ruby.

# Kata: Queue & Threads

Write a Ruby program that uses the standard [Queue][Q] class to enqueue an
increasing set of natural numbers (0, 1, 2, 3, ...) in an infinite loop, each
enqueue spaced out by a `sleep 0.5` or similar. Then spawn a series of
threads, each of which pulls a number from the shared queue and:

 [Q]: http://www.ruby-doc.org/stdlib-1.9.3/libdoc/thread/rdoc/Queue.html

 1. Prints out the thread's own `object_id`
 2. Prints the number pulled from the queue
 3. Sleep for a random amount of time (e.g. `sleep(rand(0..5))`)

The program can accept the number of threads as an argument. An example of
output could be:

    $ ./puller.rb 4
    70114150180240 1
    74114250680147 2
    74114250680147 4
    70114150180240 3
    70114150180240 5
    74114250680147 6

## Bonus Tasks

 * Change the behavior of the enqueuer or the threads by trapping [signals](http://www.ruby-doc.org/core-1.9.3/Signal.html)
