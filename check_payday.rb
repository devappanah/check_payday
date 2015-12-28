DAYS_IN_PAY_PERIOD = 15
SECONDS_IN_A_DAY = 60 * 60 * 24

matching_date = Time.local(2015, 10, 21, 0, 0, 0)
current_date = Time.new()

difference_in_seconds = (current_date - matching_date)
difference_in_days = (difference_in_seconds / SECONDS_IN_A_DAY).to_i

days_to_wait = (DAYS_IN_PAY_PERIOD - difference_in_days) % DAYS_IN_PAY_PERIOD

if (days_to_wait.zero?)
  puts 'Payday today.'
else
  print 'Payday in ' + days_to_wait.to_s + ' day'
  puts days_to_wait == 1 ? '.' : 's.'
end
