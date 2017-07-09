class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.text :profile_description
      t.integer :business_stream_id
      t.string :website_url

      t.timestamps
    end
  end
end
