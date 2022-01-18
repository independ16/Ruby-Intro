VALID_CHOICES = %w(rock paper scissors lizard spock)

WINNERS = { rock: ['scissors', 'lizard'],
            paper: ['rock', 'spock'],
            scissors: ['paper', 'lizard'],
            lizard: ['paper', 'spock'],
            spock: ['scissors', 'rock'] }

def win?(first, second)
  WINNERS.fetch(first.to_sym).include?(second)
end

def display_results(choice, computer_choice)
  if win?(choice, computer_choice)
    prompt("You won!")
  elsif choice == computer_choice
    prompt("It's a tie!")
  else
    prompt("Computer won!")
  end
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def choice_conversion(choice)
  case choice
  when '1'
    'rock'
  when '2'
    'paper'
  when '3'
    'scissors'
  when '4'
    'lizard'
  when '5'
    'spock'
  end
end

def choice_display
  prompt("choose one:
  1. if rock
  2. if paper
  3. if scissors
  4. if lizard
  5. if spock")
end

def valid_choice?(chosen)
  if chosen.to_i.to_s == chosen
    chosen.to_i >= 1 && chosen.to_i <= 5
  else
    false
  end
end

def display_winner(person, computer)
  if person == 3
    prompt("Congratulations, you won!  You are the Grand Champion!")
  elsif computer == 3
    prompt("Congratulations Computer, you are the Grand Champion!")
  end
end

loop do
  prompt("Welcome to rock, paper, scissors, lizard, spock.")
  prompt("This game is against the computer, first one to 3 is
    the Grand Champion")
  puts

  choice = nil
  score = 0
  computer_score = 0

  loop do
    loop do
      choice_display
      choice = Kernel.gets.chomp

      if valid_choice?(choice)
        choice = choice_conversion(choice)
        break
      else
        prompt("That's not a valid choice.")
      end
    end

    computer_choice = VALID_CHOICES.sample

    Kernel.puts("You chose: #{choice}, the computer chose #{computer_choice}.")

    display_results(choice, computer_choice)

    if win?(choice, computer_choice)
      score += 1
    elsif win?(computer_choice, choice)
      computer_score += 1
    end

    prompt("The score is currently:
      you:      #{score}
      computer: #{computer_score}")

    break if score == 3 || computer_score == 3
  end

  display_winner(score, computer_score)

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end
prompt("Thank you for playing the game!")
