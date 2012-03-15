class RenameToLibrariesFromPackages < ActiveRecord::Migration
  def change
    rename_table :packages, :libraries
  end
end
