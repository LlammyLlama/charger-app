require_relative 'app/controllers/charge_sessions_controller'

class Router
  def initialize(charge_sessions_controller)
    @running = true
    @charge_sessions_controller = charge_sessions_controller
  end
  # list the different actions for the user

  def run
    while @running
      display_options
      choice = STDIN.gets.chomp.to_i
      action(choice)
    end
  end

  def display_options
    puts "--------Charger App-----------"
    puts "What would you like to see?"
    puts "1. Total Charge Amount for Each Session"
    puts "2. See the Average Rate of charge for Each Session"
    # puts "3. Result of All of the Charge Sessions for Each User"
    puts "3. Exit the program"
    puts "-------------------------------"
  end

  def action(choice)
    case choice
    when 1 then @charge_sessions_controller.total_charge_for_each_session
    when 2 then @charge_sessions_controller.avg_rate_total_for_each_session
    # when 3 then @charge_sessions_controller.list
    when 3 then stop
    else
      puts "please select from the numbers 1, 2, 3 or 4"
    end
  end

  def stop
    @running = false
  end
end
