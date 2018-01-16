# 改札機クラス
class Gate

  attr_reader :name

  STATIONS = [:heathrow, :bathspa, :dover]# :nodoc:
  FARES = [0, 150, 190]# :nodoc:

  # generate instance
  # ==== arg
  # * +name+ - station name
  def initialize(name)
    @name = name
  end

  #  enter gate
  # ==== arg
  # * +ticket+ -ticket
  def enter(ticket)
    ticket.stamp(@name)
  end

  #  exit gate
  # ==== arg
  # * +ticket+ - ticket
  # ==== return
  # * +boolean+ - fare is enough +true+ , isn't enough +false+
  def exit(ticket)
    ticket.fare == calc_fare(ticket)
  end

  def calc_fare(ticket)
    from = STATIONS.index(ticket.from)
    to = STATIONS.index(@name)
    distance = (to - from).abs
    FARES[distance]
  end
end
