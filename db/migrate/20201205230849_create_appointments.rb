class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.references :doctor, null: false, foreign_key: true
      t.string :user_name
      t.string :email
      t.date :date
      t.time :time
      t.integer :nhs_number

      t.timestamps
    end
  end
end
