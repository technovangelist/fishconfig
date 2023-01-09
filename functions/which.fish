function which
    set -l target $argv[1]
    set -l IFS ""
    # Check if it's a function first.  Functions take precedence over commands.
    set -l functions_output (functions $target)
    if string match -rq $target $functions_output
        echo "$functions_output"
        return
    end
    set -l which_output (command which $target)
    if string match -rq $target $which_output
        echo $which_output
        return
    end
    echo "`$target` is not a command, alias or function."
    #return 1
end
