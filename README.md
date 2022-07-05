# `what` (WIP, doesn't work yet)

`what` takes a piped command and gets help for the flags.

Do you blindly copy commands in and then wonder what the flags do?

Sick going through 100 pages of unalphabetised flags to find the one you're
looking for?

`what` is for you

## Usage

Pipe any command into it and it'll bring back the relevant docs.

i.e.
 ```
 rg something -g '!tests' | what
 ```

 would spit out (help for `-g`)

 ```
 -g, --glob <GLOB>...                         
        Include or exclude files and directories for searching that match the given
        glob. This always overrides any other ignore logic. Multiple glob flags may be
        ... (outnot not actually truncated, just here for example's sake)
 ```
