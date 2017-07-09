class CreateJobPostSkillSets < ActiveRecord::Migration[5.0]
  def change
    create_table :job_post_skill_sets do |t|
      t.integer :skill_set_id
      t.integer :job_post_id
      t.integer :skill_level

      t.timestamps
    end
  end
end
