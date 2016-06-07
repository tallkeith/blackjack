require 'pry'
require 'minitest/autorun'


require './card'
require './deck'
require './game'
require './hand'

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

class TestDeck < MiniTest::Test
	def test_deck_builds_52_cards
		assert Deck.build_cards.length == 52
	end

	def test_deck_has_52_cards_in_new_deck
		assert Deck.new.cards.length == 52
	end
end

class TestGame < MiniTest::Test

	def test_should_have_player_hand
		assert Game.new.player_hand.cards.length == 2
	end

	def test_should_have_dealer_hand
		assert Game.new.dealer_hand.cards.length == 2
	end

	def test_should_have_status
		refute_nil Game.new.status
	end

end