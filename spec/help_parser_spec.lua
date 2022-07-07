local help_parser = require "../src/help_parser"

describe("The help_parser module", function()

    --it("parses single line output and brings back the single specified flag", function()
    --    local input = [[
    --        -j, --threads <NUM>         The approximate number of threads to use.
    --        -a, --text                  Search binary files as if they were text.
    --            --trim                  Trim prefixed whitespace from matches.
    --        -t, --type <TYPE>...        Only search files matching TYPE.
    --        -T, --type-not <TYPE>...    Do not search files matching TYPE.
    --    ]]

    --    local expected = {
    --        "-a, --text                  Search binary files as if they were text."
    --    }

    --    local actual = help_parser.parse({'-a'}, input)

    --    assert.are.same(expected, actual)
    --end)

    --it("parses single line output and brings back the multiple flags specified", function()
    --    local input = [[
    --        -j, --threads <NUM>         The approximate number of threads to use.
    --        -a, --text                  Search binary files as if they were text.
    --            --trim                  Trim prefixed whitespace from matches.
    --        -t, --type <TYPE>...        Only search files matching TYPE.
    --        -T, --type-not <TYPE>...    Do not search files matching TYPE.
    --    ]]

    --    local expected = {
    --        "-a, --text                  Search binary files as if they were text.",
    --        "-t, --type <TYPE>...        Only search files matching TYPE."
    --    }

    --    local actual = help_parser.parse({'-a', '-t'}, input)

    --    assert.are.same(expected, actual)
    --end)


end)
