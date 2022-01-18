require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
LANGUAGE = 'en'

=begin
ask the user for two numbers
ask the user for an operation to perform
perform the operation on the two numbers
output the result

=end


def prompt(message)
  Kernel.puts("==> #{message}")
end

def valid_number?(num)
  integer?(num) || float?(num)
end

def integer?(num)
  num.to_i.to_s == num
end

def float?(num)
  num.to_f.to_s == num
end

def operation_to_message(op)
  word =  case op
          when '1'
            'Adding'
          when '2'
            'Subtracting'
          when '3'
            'Multiplying'
          when '4'
            'Dividing'
          end

  return word
end

def messages(message, lang='en')
  MESSAGES[lang][message]
end

prompt(messages('welcome', LANGUAGE))

name = nil
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt(messages('valid_name', LANGUAGE))
  else
    break
  end
end

prompt(messages('hi', LANGUAGE) + "#{name} :)")

loop do # Main loop
  number1 = nil
  loop do
    prompt(messages('first_number', LANGUAGE))
    number1 = Kernel.gets().chomp

    if valid_number?(number1)
      break
    else
      prompt(messages('valid_number', LANGUAGE))
    end
  end

  number2 = nil
  loop do
    prompt(messages('second_number', LANGUAGE))
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt(messages('valid_number', LANGUAGE))
    end
  end

  prompt(messages('operator', LANGUAGE))

  operator = nil
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(messages('valid_operator', LANGUAGE))
    end
  end

  prompt("#{operation_to_message(operator)}" + messages('calculating...', LANGUAGE))

  result =  case operator
            when '1'
              number1.to_i() + number2.to_i()
            when '2'
              number1.to_i() - number2.to_i()
            when '3'
              number1.to_i() * number2.to_i()
            when '4'
              number1.to_f() / number2.to_f()
            end

  prompt(messages('result', LANGUAGE) + "#{result}")

  prompt(messages('repeat?', LANGUAGE))
  answer = Kernel.gets().chomp()

  break unless answer.downcase.start_with?('y')
end

prompt(messages('goodbye', LANGUAGE))
