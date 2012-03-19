class AddSlugToLibrary < ActiveRecord::Migration
  def change
    add_column :libraries, :slug, :string

  end
end
