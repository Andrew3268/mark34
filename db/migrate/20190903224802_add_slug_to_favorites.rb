class AddSlugToFavorites < ActiveRecord::Migration[5.1]
  def change
    add_column :favorites, :slug, :string
    add_index :favorites, :slug, unique: true
  end
end
