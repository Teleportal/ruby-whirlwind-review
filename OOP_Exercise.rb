# 1. Write out the Card and Deck classes to make the program work. The Deck class should hold a list of Card instances.
# 2. Change the program to use multiple choice questions. The Card class should be responsible for checking the answer.
# 3. CHALLENGE: Change the program to allow the user to retry once if they get the wrong answer.
# 4. CHALLENGE: Change the program to keep track of number right/wrong and give a score at the end.
# 5. CHALLENGE: Change the program to give the user the choice at the end of the game to retry the cards they got wrong.
# 6. CHALLENGE: Change the interface with better prompts, ASCII art, etc. Be as creative as you'd like!

class Card
  attr_reader :question, :answer

  def initialize(input_options)
    @question = input_options[:question]
    @answer = input_options[:answer]
  end

end

class Deck

  def initialize(input_options)
    cards = []
    input_options.each do |option|
      cards << option
    end
    cards.map! do |card| {question: card[0], answer: card[1]}
    end
    @deck = []
    cards.each do |card|
      @deck << Card.new(card)
    end
  end

  def draw_card
    card = @deck[0]
    p card
    p @deck[0]
    # @deck.delete_at[0]
    # return card
  end

  def remaining_cards
    @deck.length
  end

end

trivia_data = {
  "What is the capital of Illinois?" => "Springfield",
  "Is Africa a country or a continent?" => "Continent",
  "Tug of war was once an Olympic event. True or false?" => "True"
}

deck = Deck.new(trivia_data) # deck is an instance of the Deck class

p deck

p deck.remaining_cards

p deck.draw_card

p deck
# while deck.remaining_cards > 0
#   card = deck.draw_card # card is an instance of the Card class
#   puts card.question
#   user_answer = gets.chomp
#   if user_answer.downcase == card.answer.downcase
#     puts "Correct!"
#   else
#     puts "Incorrect!"
#   end
# end