# rock_paper_scizzors.rb

require 'pry'

VALID_CHOICES = %w(rock paper spock lizard scizzors)

RULES_OF_GAME = {
  rock: {
    scizzors: "won",
    lizard: "won"
  },
  scizzors: {
    paper: "won",
    lizard: "won"
  },
  lizard: {
    spock: "won",
    paper: "won"
  },
  paper: {
    rock: "won",
    spock: "won",
  },
  spock: {
    rock: "won",
    scizzors: "won"
  }
}

def prompt(string)
  Kernel.puts("=> #{string}")
end

def win?(first, second)
  first = first.to_sym
  second = second.to_sym
  result = RULES_OF_GAME[first][second]
end

def get_winner(user_choice, computer_choice)
  if win?(user_choice, computer_choice) == "won"
    return "won"
  elsif win?(computer_choice, user_choice) == "won"
    return "lost"
  else
    return "tie"
  end
end

def get_choice
  user_choice = ""
  loop do
    prompt("Type rock (or r), spock (or sp), lizard (or l),
    paper (or p), or scizzors (or sc)")
    user_choice = Kernel.gets().chomp().downcase()
    abbreviated_choices = { "r" => "rock", "sp" => "spock", "l" => "lizard",
                  "p" => "paper", "sc" => "scizzors" }
    if VALID_CHOICES.include?(user_choice)
      break
    elsif abbreviated_choices.key?(user_choice)
      user_choice = abbreviated_choices[user_choice]
      break
    else
      prompt("Please enter rock (or r), spock (or sp), lizard (or l),
      paper (or p), or scizzors (or sc)")
    end
  end
  user_choice
end

prompt("Welcome to rock paper scizzors")
prompt("Let's see who wins 5 games first!")
player_wins = 0
computer_wins = 0

loop do
  prompt("Your wins: #{player_wins}")
  prompt("My wins: #{computer_wins}")
  break if player_wins == 5 || computer_wins == 5
  loop do
    user_choice = get_choice
    computer_choice = VALID_CHOICES.sample()
    prompt("I have chosen #{computer_choice}")
    prompt("You have chosen #{user_choice}")
    won_or_lost = get_winner(user_choice, computer_choice)
    if won_or_lost == "won"
      prompt("You won")
      player_wins += 1
      break
    elsif won_or_lost == "lost"
      prompt("You lost")
      computer_wins += 1
      break
    else
      prompt("We tied. Let's go again")
    end
  end
end

prompt("Goodbye!")
