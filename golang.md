# Go Programming language
## [Practical Go](https://dave.cheney.net/practical-go/presentations/qcon-china.html)

## Identifiers
* A good name is concise. A good name need not be the shortest it can possibly be, but a good name should waste no space on things which are extraneous. Good names have a high signal to noise ratio.
* A good name is descriptive. A good name should describe the application of a variable or constant, not their contents. A good name should describe the result of a function, or behaviour of a method, not their implementation. A good name should describe the purpose of a package, not its contents. The more accurately a name describes the thing it identifies, the better the name.
* A good name is should be predictable. You should be able to infer the way a symbol will be used from its name alone. This is a function of choosing descriptive names, but it also about following tradition. This is what Go programmers talk about when they say idiomatic.

* Short variable names work well when the distance between their declaration and last use is short.
* Long variable names need to justify themselves; the longer they are the more value they need to provide. Lengthy bureaucratic names carry a low amount of signal compared to their weight on the page.
* Don’t include the name of your type in the name of your variable.
* Constants should describe the value they hold, not how that value is used.
* Prefer single letter variables for loops and branches, single words for parameters and return values, multiple words for functions and package level declarations
* Prefer single words for methods, interfaces, and packages.
* Remember that the name of a package is part of the name the caller uses to to refer to it, so make use of that.

* When declaring, but not initialising, a variable, use var. When declaring a variable that will be explicitly initialised later in the function, use the var keyword.
* When declaring and explicitly initialising a variable, use :=. When declaring and initialising the variable at the same time, that is to say we’re not letting the variable be implicitly initialised to its zero value, I recommend using the short variable declaration form. This makes it clear to the reader that the variable on the left hand side of the := is being deliberately initialised.

## Commentary
Comments are very important to the readability of a Go program. Each comments should do one - and only one - of three things:
* The comment should explain what the thing does.
* The comment should explain how the thing does what it does.
* The comment should explain why the thing is why it is.

### Comments on variables and constants should describe their contents not their purpose
* For variables without an initial value, the comment should describe who is responsible for initialising this variable.
```go
// sizeCalculationDisabled indicates whether it is safe
// to calculate Types' widths and alignments. See dowidth.
var sizeCalculationDisabled bool
```

* The comment was added by the author because registry doesn’t explain enough about its purpose - it’s a registry, but a registry of what?
```go
// registry of SQL drivers
var registry = make(map[string]*sql.Driver)
```

* By renaming the variable to sqlDrivers its now clear that the purpose of this variable is to hold SQL drivers. Now the comment is redundant and can be removed.
```go
var sqlDrivers = make(map[string]*sql.Driver)
```

### Always document public symbols
* Any public function that is not both obvious and short must be commented.
* Any function in a library must be commented regardless of length or complexity
* There is one exception to this rule; you don’t need to document methods that implement an interface

### Don't comment bad code, rewrite it
The tradition in the standard library is to annotate a TODO style comment with the username of the person who noticed it.
```go
// TODO: (dfc) this is O(N^2), find a faster way to do this.
```
The username is not a promise that that person has committed to fixing the issue, but they may be the best person to ask when the time comes to address it. Other projects annotate TODOs with a date or an issue number.
