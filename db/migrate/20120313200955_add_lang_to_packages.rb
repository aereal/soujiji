class AddLangToPackages < ActiveRecord::Migration
  def change
    add_column :packages, :lang, :references

  end
end
