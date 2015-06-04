class Room
  constructor: (@entranceDescription, @description, opts = {}) ->
    @printer = opts.printer || console.log

    @exits =
      north: null
      east: null
      south: null
      west: null

  describe: ->
    @printer @description
    @describeRoom(direction, room) for direction, room of @exits

  describeRoom: (direction, room) ->
    return unless room
    capitalizedDirection = direction.charAt(0) + direction.slice(1)
    @printer "In #{capitalizedDirection} you see #{room.entranceDescription}"

  addExit: (direction, room) ->
    @exits[direction] = room

module.exports = Room
