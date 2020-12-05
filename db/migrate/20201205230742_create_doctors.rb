class CreateDoctors < ActiveRecord::Migration[6.0]
  def change
    create_table :doctors do |t|
      t.string :forename
      t.string :surname
      t.string :specialty
      t.string :address
      t.text :description
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
