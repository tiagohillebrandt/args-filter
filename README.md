args-filter
===========

Filter the params from a bash command line and convert them into variables.

Installation
-------

Download the args-filter file and put it in your `/usr/bin/` directory.

Example
-------

To see it in action, download the `example.sh` file and run:

    ./example.sh --name=test --active --coffee-please=yes

Usage
-------

Add this line at the beginning of your bash script:

    test -f /usr/bin/args-filter && source /usr/bin/args-filter "$*"

After that, you can receive the params with `--` prefix via `$arg_` variable.

For example, if you send the params `--given-name=Tiago` and `--surname=Hillebrandt` when calling your bash script, the values will be available in the script as `$arg_givenname` and `$arg_surname`.

Also, it is possible to send only a param, with no value. For example, if you send the argument `--verbose`, then you can verify in your code using:

    if [[ -n $arg_verbose ]]; then
        echo "The --verbose param has been provided"
    fi
