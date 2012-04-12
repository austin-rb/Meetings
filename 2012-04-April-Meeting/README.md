# List Kata

Lists are one of the first data structures we learn as programmers. But familiarity doesn’t mean that we can’t learn a little from them.
For this kata we’re going to code up three implementations of a list that has the following basic interface:

 * The list consists of nodes. Each node has a string value, along with whatever housekeeping the list itself needs.
 * New nodes are added to the end of the list.
 * You can ask the list if it contains a given string. If it does, it returns the node containing that string.
 * You can delete a node from the list.
 * You can ask the list to return an array of all its values.

Here’s a basic set of unit tests to illustrate the behavior.

    list = List.new
    assert_nil(list.find("fred"))
    list.add("fred")
    assert_equal("fred", list.find("fred").value())
    assert_nil(list.find("wilma"))
    list.add("wilma")
    assert_equal("fred",  list.find("fred").value())
    assert_equal("wilma", list.find("wilma").value())
    assert_equal(["fred", "wilma"], list.values())

    list = List.new
    list.add("fred")
    list.add("wilma")
    list.add("betty")
    list.add("barney")
    assert_equal(["fred", "wilma", "betty", "barney"], list.values())
    list.delete(list.find("wilma"))
    assert_equal(["fred", "betty", "barney"], list.values())
    list.delete(list.find("barney"))
    assert_equal(["fred", "betty"], list.values())
    list.delete(list.find("fred"))
    assert_equal(["betty"], list.values())
    list.delete(list.find("betty"))
    assert_equal([], list.values())

For the kata, where the idea is to practice, let’s write three implementations of the list:

 1. A singly linked list (each node has a reference to the next node).
 2. A doubly linked list (each node has a reference to both the next and previous nodes).
 3. Some other implementation of your choosing, except that it should use no references (pointers) to collect nodes together in the list.

Obviously, we won’t be using predefined library classes as our list implementations…
