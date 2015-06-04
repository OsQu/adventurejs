class Room
  constructor: (@entranceDescription, @description, opts = {}) ->
    @printer = opts.printer || console.log.bind(console)

    @exits =
      north: null
      east: null
      south: null
      west: null

  describe: ->
    @printer "You are in #{@description}"
    @describeRoom(direction, room) for direction, room of @exits
    true

  describeRoom: (direction, room) ->
    return unless room
    capitalizedDirection = direction.charAt(0) + direction.slice(1)
    @printer "In #{capitalizedDirection} you see #{room.entranceDescription}"

  addExit: (direction, room) ->
    @exits[direction] = room

module.exports = Room
