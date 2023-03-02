require_relative '../models/charge_session'
require_relative '../models/meter_value'
require 'pry'

class ChargeSessionsController
  # get avg rate of charge for each session
  def rates_of_charge_for_session(n)
    session = MeterValue.where("charge_session_id" => n)
    total = session.map { |meter_value| meter_value.rate_of_charge }.sum
    avg = ( total / session.count ) / 1000.to_f.round(2)
  end

  # sum all amounts of charge per session
  def amount_of_charge_for_session(n)
    session = MeterValue.where("charge_session_id" => n)
    total = session.map { |meter_value| meter_value.amount_of_charge.to_f/meter_value.rate_of_charge}.sum.round(2)
  end

  #create summary list of all sessions
  def avg_rate_total_for_each_session
    all_session_ids = MeterValue.all.map { |meter_value| meter_value.charge_session_id }.uniq
    all_session_ids.each { |num| puts "Session #{num} = #{rates_of_charge_for_session(num)} kW total average rate of charge"}
  end

  #create summary list of all sessions
  def total_charge_for_each_session
    all_session_ids = MeterValue.all.map { |meter_value| meter_value.charge_session_id }.uniq
    all_session_ids.each { |num| puts "Session #{num} = #{amount_of_charge_for_session(num)} kWh total charge amount"}
  end

  # Return a JSON string containing the result of all of the charge sessions for each user

  # find each unique user
  # gather the respective charge sessions under that user
  def session_per_user
    all_session_ids = MeterValue.all.map { |meter_value| meter_value.charge_session_id }.uniq
    iter_sessions = all_session_ids.map { |id| ChargeSession.where("id" => "#{id}") }.flatten
    user_names  = iter_sessions.map { |session| session.user }
    # ChargeSession.where("user" => )

    # if ChargeSession.id == MeterValue.charge_session_id then
  end


  # calculate the total charge amount for them
  # calculate the total session count
  # calculate the avg rate of charge for user
  # convert this into a JSON string

end
