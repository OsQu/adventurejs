Room = require("./room.coffee")
World = require("./world.coffee")

class AdventureJS
  constructor: ->
    @world = new World()

  buildRoom: (entranceDescription, description) ->
    new Room(entranceDescription, description)


module.exports = AdventureJS
