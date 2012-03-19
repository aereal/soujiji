class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.references :feature
      t.references :library
      t.string :type
      t.text :content

      t.timestamps
    end
    add_index :answers, :feature_id
    add_index :answers, :library_id
  end
end
