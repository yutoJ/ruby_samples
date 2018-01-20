
require 'minitest/autorun'

class TourSearchTest < Minitest::Test
  def setup
    Tours = []

  end
  def test_search_tour
    level = "A"
    date = "20170101"
    rentalRequest = true
    outputs = TourService.searchTour(level, date, rentalRequest)
    assert_equal
  end
end
