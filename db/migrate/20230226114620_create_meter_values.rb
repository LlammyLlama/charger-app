class CreateMeterValues < ActiveRecord::Migration[7.0]
  def change
    create_table :meter_values do |t|
      t.integer   :amount_of_charge
      t.integer   :rate_of_charge
      t.timestamps # add 2 columns, `created_at` and `updated_at`
    end
  end
end
