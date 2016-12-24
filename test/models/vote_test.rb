require 'test_helper'

class VoteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "votes have a story" do
    assert_equal stories(:one), votes(:one).story
  end
end
