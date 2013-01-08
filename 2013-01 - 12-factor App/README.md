# Talk: 12-factor App - Richard Schneeman

Heroku has deployed millions of web apps. When you’ve run that many
applications, it’s hard not to notice when frameworks and developers do things
wrong, and when they do them right. We’ve taken a look at the most common
patterns and boiled down the best of our advice in to 12 simple factors that can
help you build your next app to be stable, successful, and scaleable. After this
talk you’ll walk away with in depth knowledge of web framework design patterns
and practical examples of how to improve your application code.

# Kata: Elevators

Take the position (level) of a set of elevators in a list. (Command line args
or YAML or whatever you want.)

    positions: [3, 4]

Create an elevator move planner that takes a number of requests for levels:

    planner.request(6)
    planner.request(0)
    planner.run

Then prints out the correct behavior from the elevator(s) in order to fulfill
those requests:

    Move elevator 0 to floor 0.
    Move elevator 1 to floor 6.

## Bonus Tasks

 * Make the program interactive and accept requests in realtime, dispatching
   elevators in response.
 * Minimize transit time (# of floors traveled) for each elevator dispatch.
 * Given a history of request behavior, compute the most optimal resting
   position for each elevator.
