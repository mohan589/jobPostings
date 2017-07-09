class CreateJobLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :job_locations do |t|
      t.text :street_address
      t.string :city
      t.string :state
      t.string :country
      t.string :zip

      t.timestamps
    end
  end
end
