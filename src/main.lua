

local subcommand = arg[1]
local version = '0.0.1';

local usage = [[
Usage: COMMAND | what
Example: grep -i | what
Pipe your commands and get help on their flags

Options:
  -h, --help     Display this help
  -v, --verbose  Parse man pages instead of --help
  -V, --version  Display the version of `what`
]]

if subcommand == '--help' or subcommand == '-h' then
    print(usage)
end

if subcommand == '--version' or subcommand == '-V' then
    print(version)
end

local command = string.match(io.read("*a"), "%w+")
local handle = io.popen
