# mortgage_loan_calculator

# get loan amount, APR, and loan duration in years
# calculate monthly rate APR / 12
# calculate loan duration in months years * 12
# calculate monthly payment

def prompt(message)
  Kernel.puts("=> #{message}")
end

prompt("Welcome, please enter your loan amount, APR, and loan duration
so that we can calculate your expected monthly payment")
loan_amount = 0.0
loop do 
  prompt("Enter loan amount")
  loan_amount = Kernel.gets().chomp().to_f()
  if loan_amount <= 0
    prompt("Enter a loan amount greater than 0")
  else
    break
  end
end

apr = 0.0
loop do
  prompt("Enter APR (Annual Percentage Rate)")
  apr = Kernel.gets().chomp().to_f()
  if apr < 0 || apr > 100
    prompt("Enter a valid APR")
  else
    break
  end
end

loan_duration_in_years = 0
loop do 
  prompt("Loan Duration (in years)")
  loan_duration_in_years = Kernel.gets().chomp().to_f()
  if loan_duration_in_years < 0
    prompt("Enter a valid APR")
  else
    break
  end
end

apr_to_decimal = apr * 0.01
monthly_percentage_rate = apr_to_decimal / 12
loan_duration_in_months = loan_duration_in_years * 12
monthly_payment = loan_amount * (monthly_percentage_rate / 
                (1 - (1 + monthly_percentage_rate)**(-loan_duration_in_months)))
prompt("----------------------------------------")
prompt("You will be making monthly payments of
$#{monthly_payment.round(2)} for this loan")
