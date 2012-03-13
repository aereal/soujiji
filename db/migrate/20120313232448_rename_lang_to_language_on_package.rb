class RenameLangToLanguageOnPackage < ActiveRecord::Migration
  def change
    rename_column :packages, :lang_id, :language_id
  end
end
