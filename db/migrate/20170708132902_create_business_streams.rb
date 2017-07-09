class CreateBusinessStreams < ActiveRecord::Migration[5.0]
  def change
    create_table :business_streams do |t|
      t.string :name

      t.timestamps
    end
  end
end
