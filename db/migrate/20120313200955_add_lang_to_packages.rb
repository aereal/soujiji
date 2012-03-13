class AddLangToPackages < ActiveRecord::Migration
  def change
    change_table :packages do |t|
      t.references :lang
    end

  end
end
