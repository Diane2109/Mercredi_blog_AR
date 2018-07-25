class AddIndexToArticles < ActiveRecord::Migration[5.2]
  def change
  add_reference :articles, :category, foreign_key: true # Permet d'associer l'id des articles aux cat
end
end
