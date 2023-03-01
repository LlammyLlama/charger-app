class MeterValue < ActiveRecord::Base
  belongs_to :charge_session

  #find all meter values for a particular id

  # sum all rates of charge per session id

end
