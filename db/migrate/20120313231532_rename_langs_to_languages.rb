class RenameLangsToLanguages < ActiveRecord::Migration
  def change
    rename_table :langs, :languages
  end
end
