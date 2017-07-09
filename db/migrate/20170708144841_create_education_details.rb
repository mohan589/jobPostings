class CreateEducationDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :education_details do |t|
      t.integer :user_id
      t.string :cerficate_degree_name
      t.string :major
      t.string :institute_university_name
      t.date :starting_date
      t.date :completion
      t.integer :percentage
      t.integer :grade

      t.timestamps
    end
  end
end
