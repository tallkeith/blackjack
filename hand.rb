class Hand

	attr_reader :cards

	def initialize
		@cards = []
	end

	def hit!(deck)
		@cards << deck.cards.pop
	end

	def value
		cards.inject(0) { |sum, card| sum += card.value }
	end

end