class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t| # Crée la table Categories
      t.string :name
      t.timestamps
    end
  end
end
