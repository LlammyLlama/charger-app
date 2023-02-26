class CreateChargeSessions < ActiveRecord::Migration[7.0]
  def change
    create_table :charge_sessions do |t|
      t.string   :user
      t.timestamps # add 2 columns, `created_at` and `updated_at`
    end
  end
end
