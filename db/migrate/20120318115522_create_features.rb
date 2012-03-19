class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.string :title
      t.references :topic

      t.timestamps
    end
    add_index :features, :topic_id
  end
end
