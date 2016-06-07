require 'pry'
require 'minitest/autorun'


require './card'


class BlackjackTest < MiniTest::Test
end

class TestCard < MiniTest::Test

	def setup
		@card = Card.new(:clubs, 10)
	end

	def test_card_accepts_suit_and_value_when_building
		card = @card
		assert_equal :clubs, card.suit 
		assert_equal 10, card.value 
	end

	def test_face_card_value
		facecards = ["J", "Q", "K"]
		facecards.each do |facecard|
			@card = Card.new(:hearts, facecard)
			assert_equal @card.value, 10
		end
	end

	def test_value
		card = Card.new(:hearts, 4)
		assert_equal 4, card.value
	end

	def test_ace
		card =Card.new(:diamonds, "A")
		assert_equal 11, card.value
	end

	def test_format
		card =Card.new(:diamonds, "A")
		assert_equal card.to_s, "A-diamonds"
	end

end

