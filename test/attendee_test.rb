require 'minitest/autorun'
require 'minitest/pride'
require './lib/item'
require './lib/auction'
require './lib/attendee'

class AttendeeTest < Minitest::Test

  def setup
    @attendee = Attendee.new(name: 'Megan', budget: '$50')
  end

  def test_it_exists
    assert_instance_of Attendee, @attendee
  end

  def test_it_has_attributes
  # skip
  assert_equal "Megan", @attendee.name
  assert_equal 50, @attendee.budget
  end

end
