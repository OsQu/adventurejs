AdventureJS = require('../src/main')
describe "AdventureJS", ->
  describe "sum", ->
    it "sums two numbers together", ->
      adventure = new AdventureJS()
      expect(adventure.sum(1,2)).toBe(3)
