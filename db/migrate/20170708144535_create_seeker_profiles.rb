class CreateSeekerProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :seeker_profiles do |t|
      t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.integer :current_salary
      t.boolean :is_annualy_monthly
      t.string :currency

      t.timestamps
    end
  end
end
