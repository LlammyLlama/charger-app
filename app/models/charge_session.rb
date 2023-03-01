require 'active_record'

class ChargeSession < ActiveRecord::Base
  has_many :meter_values
end
