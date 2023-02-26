class AddChargeSessionToMeterValues < ActiveRecord::Migration[7.0]
  def change
    add_reference :meter_values, :charge_session, foreign_key: true
  end
end
