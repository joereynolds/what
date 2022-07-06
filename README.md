# `what` (WIP, doesn't work yet)

`what` takes a piped command and gets help for the flags.

Do you blindly copy commands and then wonder what the flags do?

Sick of going through 100 pages of unalphabetised flags to find the one you're
looking for?

`what` is for you.

## Usage

Pipe any command into it and it'll bring back the relevant docs.

i.e.
 ```
 rg something -g '!tests' | what
 ```

 would output help for `-g`:

 ```
 -g, --glob <GLOB>...                         
        Include or exclude files and directories for searching that match the given
        glob. This always overrides any other ignore logic. Multiple glob flags may be
        ... (outnot not actually truncated, just here for example's sake)
 ```

 It can also take multiple flags.

 i.e.

 ```
 rg -C -g myVariable | what
 ```

 would output help for `-C` and `-g` respectively:

 ```
-C, --context NUM
           Show NUM lines before and after each match. This is equivalent to providing both the -B/--before-context and
           -A/--after-context flags with the same value.
 -g, --glob <GLOB>...                         
        Include or exclude files and directories for searching that match the given
        glob. This always overrides any other ignore logic. Multiple glob flags may be
 ```

 ## Development

 Everything is done within docker, write your tests against the source and then
 run `make build` to lint and test.

 If you don't want to use docker, install the dependencies listed in
 `./docker/lua/Dockerfile`.
