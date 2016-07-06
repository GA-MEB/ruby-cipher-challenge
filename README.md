[![General Assembly Logo](https://camo.githubusercontent.com/1a91b05b8f4d44b5bbfb83abac2b0996d8e26c92/687474703a2f2f692e696d6775722e636f6d2f6b6538555354712e706e67)](https://generalassemb.ly/education/web-development-immersive)

# Caesar Cipher Challenge

> In cryptography, a Caesar cipher is one of the simplest and most widely known
> encryption techniques. It is a type of substitution cipher in which each
> letter in the plaintext is replaced by a letter some fixed number of positions
> down the alphabet. The method is named after Julius Caesar, who used it in his
> private correspondence.
>
> – [Caesar cipher - Wikipedia, the free encyclopedia](http://en.wikipedia.org/wiki/Caesar_cipher)

We're going to implement a simple Caesar Cipher called ROT13 ("rotate by 13
places"). The transformation can be represented by aligning two alphabets:

```md
Plain:    abcdefghijklmnopqrstuvwxyz
Cipher:   nopqrstuvwxyzabcdefghijklm
```

ROT13 is its own inverse; that is, to undo ROT13, the same algorithm is applied,
so the same action can be used for encoding and decoding. The algorithm provides
virtually no cryptographic security, and is often cited as a canonical example
of weak encryption. ROT13 is used in online forums as a means of hiding
spoilers, punchlines, puzzle solutions, and offensive materials from the casual
glance.

## Prerequisites

-   None

## Instructions

1.  Fork and clone this repository.
1.  Change into the new directory.
1.  Install dependencies.
1.  Create and checkout a new branch to work on.
1.  Fulfill the listed requirements.

Starter code is available in the [`lib`](lib) directory.
A pull request is not required,
but it is necessary if you want a code review.

You may wish to refer to [FAQs](https://github.com/ga-wdi-boston/meta/wiki/)
related to [forking,
cloning](https://github.com/ga-wdi-boston/meta/wiki/ForkAndClone).

## Level 1

Please make a commit after completing each of the following steps.

1.  `#encode`

  Complete the definition of the `encode` method defined in `challenge.rb`.
  `encode` should take a single word as an argument and return encrypted text,
  as follows:

  ```ruby
  encode('hello') # => 'uryyb'
  encode('world') # => 'jbeyq'
  ```

1.  `#decode`

  Next, complete the definition of the `decode` method. As you might expect,
  `decode` should be the inverse operation of `encode`. i.e.,

  ```ruby
  decode('uryyb') # => 'hello'
  decode('jbeyq') # => 'world'
  ```

> Hint: Take a look at this documentation -- there are
> a couple of predefined methods in each class/module
> that make this problem much simpler.
>
> -   [Class: String](http://ruby-doc.org/core-2.3.0/String.html)
> -   [Class: Array](http://ruby-doc.org/core-2.3.0/Array.html)
> -   [Module: Enumerable](http://ruby-doc.org/core-2.3.0/Enumerable.html)
> -   [Class: Hash](http://ruby-doc.org/core-2.3.0/Hash.html)

Please run the Rubocop linter (`rubocop lib`) before debugging your code,
 since the linter will make it easy to spot many common sources of errors.
After `rubocop` passes your code, run `rspec` to run the included tests,
 which will tell you whether or not your code meets the requirements.

## Level 2

**Do not attempt these until you have finished everything in Level 1!**
Make a commit after finishing each of these steps.

1.  Spaces

  Rewrite `encode` and `decode` so that they can operate on strings with spaces.

  e.g.

  ```ruby
  encode('hello world') # => 'uryyb jbeyq'
  decode('uryyb jbeyq') # => 'hello world'
  ```

1.  Custom Rotation (aka Rot-n)

  This one's a toughie!
  As you may have noticed, the method definitions of `encode` and `decode` have
  a second argument that they take, called `rot`.
  In the starter code, `rot` has been given a default value of 13.
  However, if you were to call either method with two inputs
  (e.g. `encode('abc', 1)`),
  `rot` would take the value of the second input.

  Change `encode` and `decode` so that they rotate their messages by the value
  of `rot`, instead of always rotating by 13.

  ```ruby
  encode('abc', 1) # => 'bcd'
  encode('abc def', 3) # => 'def ghi'
  decode('def ghi', 3) # => 'abc def'
  decode('bcd', 1) # => 'abc'
  ```

## [License](LICENSE)

Source code distributed under the MIT license. Text and other assets copyright
General Assembly, Inc., all rights reserved.
