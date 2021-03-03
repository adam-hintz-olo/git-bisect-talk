%title: git bisect
%author: Adam Hintz
%date: 2021-03-03

-> # git bisect <-

-> a change discovery tool for your back pocket <-

--------------------------------------------------
-> # "Just use git bisect and you're done" <-

-> Why am I giving this talk? <-

-------------------------------------------------
-> # What does it do? <-

-> Given a **good commit** and a **bad commit**, <-
-> execute a binary search on the commits in-between to find the commit that caused a change. <-

-------------------------------------------------
-> # The power of binary search <-

If you had all the particles in the visible universe sorted (roughly 10^97)

you could binary search through them to the particle you wanted in 323 tests

-------------------------------------------------
-> # The power of binary search <-

Fortunately, you won't have to do 323 tests to get to your destination!

-------------------------------------------------
-> # How do I use it?  <-

git bisect start \<bad\> \<good\>

\# Run your test

git bisect good

\# Run more tests...

git bisect bad

\# etc... when you're done:

git bisect reset

-------------------------------------------------
-> # Visualized <-

-> Time ----> <-
-> Good commit v                          v bad commit <-
Test 1:
->             |             T            |            <-
Good.
Test 2:
->             |xxxxxxxxxxxxx|      T     |            <-
Bad.
Test 3:
->             |xxxxxxxxxxxxx|  T   |xxxxx|            <-
Bad.
Test 4:
->             |xxxxxxxxxxxxx| T|xxxxxxxxx|            <-
Good.
First bad commit found:
->             |                B         |            <-

-------------------------------------------------
-> # Pitfalls / Concerns <-

* Pass / fail / pass / fail history
* Tests changing over time
* Not fully understanding the problem
* Multiple changes contributing to the problem


-------------------------------------------------
-> # Demo <-

-------------------------------------------------
-> # Conclusion: When to use <-

* You want to find a commit in history that caused a particular change
* You have a way to verify that your change exists or not in a given commit, whether that's automated or your eyeballs

-------------------------------------------------
-> # Questions? Comments? <-

Repository at https://github.com/adam-hintz-olo/git-bisect-talk
