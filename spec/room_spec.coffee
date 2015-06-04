Room = require("../src/room")
SpecPrinter = require("./spec_printer")

describe "Room", ->
  beforeEach ->
    @spec_printer = new SpecPrinter()
    @room = new Room("a door that leads to main hall", "Main hall", printer: @spec_printer.in)

  it "is able to hold multiple exists", ->
    westRoom = new Room("a door that leads to west hall", "West hall")
    eastRoom = new Room("a door that leads to east hall", "East hall")
    @room.addExit("west", westRoom)
    @room.addExit("east", eastRoom)

    expect(@room.exits["west"]).toBe westRoom
    expect(@room.exits["east"]).toBe eastRoom

  it "prints the description", ->
    @room.describe()
    expect(@spec_printer.out).toContain "Main hall"

  it "prints other adjacent rooms", ->
    westRoom = new Room("a door that leads to big hall", "Big hall")
    @room.addExit("west", westRoom)

    @room.describe()
    expect(@spec_printer.out).toContain "In west you see a door that leads to big hall"
