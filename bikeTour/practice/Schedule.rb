class Schedule
  def scheduled?(schedulable, start_date, end_date)
    false
  end
end

module Schedulable
  attr_writer :schedule
  def schedule
    @schedule ||= ::Schedule.new
  end
  def schedulable?(start_date, end_date)
    !scheduled?(start_date - lead_days, end_date)
  end

  def scheduled?(start_date, end_date)
    schedule.scheduled?(self, start_date, end_date)
  end

  def lead_days
    0
  end
end

class Bicycle
  include Schedulable

  def lead_days
    1
  end

  attr_reader :schedule, :size, :chain, :tire_size
  def initialize(args = {})
    @schedule = args[:schedule] || Schedule.new
  end
end

require 'date'
starting = Date.parse("2018/02/05")
ending = Date.parse("2018/02/16")

b = Bicycle.new
puts b.schedulable?(starting, ending)
