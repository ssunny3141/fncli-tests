# fncli-tests
Automated tests for fn cli

This script tests basic fn cli behavior for runtimes: `(ruby ruby2.7 python python3.8 python3.7 java java11 java8 node node14 node11 go go1.15)`
* `fn init --runtime <runtime>`
* `fn invoke <appname> <fnname>`

## How to run?
Execution order -> init.sh, invoke.sh, cleanup.sh

