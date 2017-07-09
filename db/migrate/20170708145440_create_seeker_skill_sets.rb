class CreateSeekerSkillSets < ActiveRecord::Migration[5.0]
  def change
    create_table :seeker_skill_sets do |t|
      t.integer :user_id
      t.integer :skill_set_id
      t.integer :skill_level

      t.timestamps
    end
  end
end
