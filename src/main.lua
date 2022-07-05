local help_parser = require "./help_parser.lua"

local subcommand = arg[1]
local command = string.match(io.read("*a"), "%w+")
local help_command = command .. ' --help'
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

if subcommand == '--verbose' or subcommand == '-v' then
    help_command = 'man ' .. command
end

local handle = io.popen(help_command)
local command_output = handle:read("*a")

local flag_help = help_parser.parse(command_output)
print(flag_help)

