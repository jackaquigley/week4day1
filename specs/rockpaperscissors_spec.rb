require_relative '../models/rockpaperscissors'

require('minitest/autorun')
require('minitest/reporters')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new


class TestGame < Minitest::Test

def test_check_draw
  assert_equal("draw", Game.check_winner("rock","rock"))
  assert_equal("draw", Game.check_winner("scissors","scissors"))
  assert_equal("draw", Game.check_winner("paper","paper"))
end

def test_check_win
  assert_equal("rock", Game.check_winner("rock", "scissors"))
  assert_equal("scissors", Game.check_winner("scissors", "paper"))
end

def test_check_lose
  assert_not_same("paper", Game.check_winner("rock", "paper"))
  assert_not_same("scissors", Game.check_winner("rock", "scissors"))
end

end
