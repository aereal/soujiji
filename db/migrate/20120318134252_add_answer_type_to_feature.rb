class AddAnswerTypeToFeature < ActiveRecord::Migration
  def change
    add_column :features, :answer_type, :string

  end
end
