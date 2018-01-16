require 'minitest/autorun'
require './lib/station/Gate'
require './lib/station/Ticket'

class StationTest < Minitest::Test

  def setup
    @heathrow = Gate.new(:heathrow)
    @bathspa = Gate.new(:bathspa)
    @dover = Gate.new(:dover)
  end

  def test_able_to_exit_between_1dis
    ticket = Ticket.new(150)
    @heathrow.enter(ticket)
    assert @bathspa.exit(ticket)
  end

  def test_unable_to_exit
    ticket = Ticket.new(150)
    @heathrow.enter(ticket)
    refute @dover.exit(ticket)
  end

  def test_able_to_exit_between_2dis
    ticket = Ticket.new(190)
    @heathrow.enter(ticket)
    assert @dover.exit(ticket)
  end
end
