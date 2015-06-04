class SpecPrinter
  constructor: ->
    @out = []

  in: (str) => @out.push str

module.exports = SpecPrinter
