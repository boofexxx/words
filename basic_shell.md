# basic shell

### command
    1. shell forks itself
    2. child exec command
    3. parent waits for the children

### command | command
    1. shell creates a pipe
    2. shell forks itself twice
    3. parent waits for both children
    4. one child redirects stdout to the pipe before it execs the first command
    5. other child redirects stdin to the pipe before it execs the second command

### definations
* pipeline - one command or multiple commands separated by |
* command-list - one or more pipelines separated and terminated by ; & or newline
* zero return value - success
* non-zero return value - failure
* `pipelineA && pipelineB` - if last command of A returns 0, then run B
* `pipelineA || pipelineB` - if last command of A returns non-0, then run B

### scripting ([cheatsheet](https://devhints.io/bash))
```sh
# comment

if command-list # if command-list successes (i.e. returns 0)
then
    command-list
fi

while command-list # the same here
do
    command-list
done

function functionName {
    command-list
    return value
}

functionName "first argument" "second argument" # call function with arguments
```

### substitution
```sh
    * - match any characters
    ? - match any single character

    # preamble{comma-separated-list}postscript
    foo{apple,banana}bar # fooapplebar foobananabar
    {35,14,hi}bar # 35bar 14bar hibar

    # `command`
    # $(command)
    `echo ls -la`
    ln -s `pwd`/sh /usr/local/bin/

    # $((arithmetic expression))
    $((3 + $foo)) # $foo - is a variable with integer number in it
```

### jobs and shell
```sh
    (command-list) # execute in a subshell
    {command-list} # execute in the current shell

    source file # executes command from file in the current shell

    jobs # list background jobs and their jobs numbers
    bg jobNumber # background: send SIGCONT to a background job
    fg jobNumber # foreground: send SIGCONT to a background job and move it to the foreground

    # CTRL+Z - send SIGSTOP to a foreground job

    # & - ampersand-terminated pipeline runes "in background":
    #     1. shell doesn't wait for the pipeline
    #     2. pipeline runs in a subshell
    #     3. the pipeline may not read the terminal
    #     4. the pipeline may (or may not) write to the terminal
    sudo apt update && sudo apt -y upgrade & # -_-
```
