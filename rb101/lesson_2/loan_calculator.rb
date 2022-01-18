=begin
A loan payment calculator

Inputs
Loan Amount
The Annual Percentage Rate (APR)
The Loan Duration

Outputs
Monthly interest rate
Loan duration in months
monthly payment

m = p * (j / (1 - (1 + j)**(-n)))
m = monthly payment
p = loan amount
j = monthly interest rate
n = loan duration in months

Rules

Examples / Test Cases
https://www.calculator.net/loan-calculator.html

Data structures

Algorithm

Greeting
  Collect loan purpose

Collect inputs
  Get loan amount in $, length in months / years, and APR from user
validate inputs
  Check loan amount > 0, is i or f
  Check length of loan > 0 and i or f, convert to months
  check apr is between 0 and 1, f, convert to monthly rate
calculate outputs
  calculations
display outputs
  display monthly payment
  ask to go again

-------------
START

PUT greeting
GET purpose of the loan

Ask for loan amount
SET loan_valid = false
loop while loan amount not good
  GET loan amount
  if loan amount > 0, is i or f
    loan_valid = true
  else
    comment on need for good input
end loop
comment on amount to be used for calculation

Ask for loan duration in years and months
SET loan_duration_valid = false
loop while loan duration not good
  GET loan duration years
  GET loan duration months
  if loan amount years > 0 and i and loan amount months > 0 and i
    Set loan_months to sum of years and months
    loan_duration_valid = true
  else
    comment on need for good input
end loop

ask for APR
SET APR_valid = false
loop while APR not valid
  GET APR
  if APR between 0 and 1,
    SET APR_valid = true
    SET monthly_rate = APR/12
  else
    comment on need for good APR
end loop

Calculate monthly payment

PUTS commentary and display monthly payment

Start again

END

Code
=end

def monthly_payment(amount, duration, rate)
  amount * (rate / (1 - (1 + rate)**((-1) * duration)))
end

def amount_valid?(amount)
  if valid_i?(amount) || valid_f?(amount)
    positive?(amount.to_f)
  else
    false
  end
end

def positive?(number)
  number > 0
end

def valid_i?(number)
  number.to_i.to_s == number
end

def valid_f?(number)
  number.to_f.to_s == number || valid_i?(number)
end

def duration_valid?(years, months)
  if valid_i?(years) && valid_i?(months)
    positive?(years.to_i) || positive?(months.to_i)
  else
    false
  end
end

def apr_valid?(rate)
  if valid_f?(rate)
    rate.to_f > 0 && rate.to_f <= 100
  else
    false
  end
end

def prompt(text)
  puts "->> " + text
end

def valid_purpose?(purpose)
  !(purpose.empty?)
end

def prompt_with_entry(text)
  print "->> " + text + ": "
end

def get_purpose
  prompt("Please enter the purpose of the loan")
  loop do
    loan_purpose = gets.chomp
    if valid_purpose?(loan_purpose)
      prompt("Thank you")
      return loan_purpose
    else
      prompt("Anything would be more helpful than that,
              please enter something...")
    end
  end
end

def get_amount
  prompt_with_entry("Please enter the amount of the loan")
  loop do
    loan_amount = gets.chomp
    if amount_valid?(loan_amount)
      prompt("Thank you")
      return loan_amount.to_f
    else
      prompt("Please enter a dollar amount greater than zero")
    end
  end
end

def get_duration
  prompt("Please enter the number of years and months for the loan")
  loop do
    prompt_with_entry("Years")
    years = gets.chomp
    prompt_with_entry("Months")
    months = gets.chomp
    if duration_valid?(years, months)
      prompt("Thank you")
      return years.to_i * 12 + months.to_i
    else
      prompt("Please enter a combination of years / months.
              At least one must be greater than zero")
    end
  end
end

def get_apr
  prompt("Please enter the Annual Percentage Rate for this loan")
  loop do
    prompt_with_entry("APR: ")
    apr = gets.chomp
    if apr_valid?(apr)
      prompt("Thank you")
      return apr.to_f / 100 / 12
    else
      prompt("Please enter the APR as a rate,
              not as a % (e.g. 5, not 0.05 or 5%)")
    end
  end
end

loop do
  prompt("Hello, welcome to the monthly payment calculator")

  loan_purpose = get_purpose
  loan_amount = get_amount
  loan_duration = get_duration
  loan_apr = get_apr
  result = monthly_payment(loan_amount, loan_duration, loan_apr)

  prompt("The monthly payment for your #{loan_purpose}:
          $#{format '%.2f', result}")

  prompt("Would you like to calculate another loan? (Y) for new loan")
  break unless gets.chomp.downcase == 'y'
end
