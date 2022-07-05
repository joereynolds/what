local flags = require "../src/flags"

describe("The flags module", function()

    it("brings back an empty array for no flags", function()
        local expected = {}
        local actual = flags.get('something with no flags')
        assert.are.same(expected, actual)
    end)

    it("brings back a flag if there is one", function()
        local expected = {'-g'}
        local actual = flags.get('rg -g')
        assert.are.same(expected, actual)
    end)

    it("brings back multiple flags if there are any", function()
        local expected = {'-g', '-i', '--verbose'}
        local actual = flags.get('rg -g -i --verbose')
        assert.are.same(expected, actual)
    end)

    it("is case sensitive when finding flags", function()
        local expected = {'-g', '-G'}
        local actual = flags.get('rg -g -G')
        assert.are.same(expected, actual)
    end)
end)
