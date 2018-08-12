require 'pry'
# day will be a string of the day of the week
# when I invoke print_routine, I want to see a printed
# routine for the day, regarding wake up time, whether to 
# go to work, and bedtime

def print_routine(day)
  wake_up_time(day)
  go_to_work(day)
  bedtime(day)
end 

def is_weekend?(day)
  day.start_with? "s"
end 

def wake_up_time(day)
  if is_weekend?(day) 
    puts "wake up at 11AM"
  else 
    puts "wake up at 6AM"
  end 
end

def go_to_work(day)
  if !day.downcase.start_with? "s" 
    puts "go to work"
  else 
    puts "no work today"
  end 
end

def bedtime(day)
  arr = ["friday","tuesday","saturday"]
  if arr.include?(day.downcase) 
    puts "go to sleep at 2am"
  else 
    puts "early night in"
  end 
end


# we want to see:
# print_routine "Monday"
# it should puts
# wake up at...
# go to work ... or no work today
# etc.

# how can we write two lines of code to print a routine for every day of the week?

days_array = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]

days_array.each do |day|
  puts "Today is #{day}"
  print_routine(day)
end 







