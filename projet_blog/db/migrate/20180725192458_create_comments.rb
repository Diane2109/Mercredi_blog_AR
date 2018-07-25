class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t| # Crée la table Comments
      t.text :comment
      t.belongs_to :user, index: true
      t.belongs_to :article, index: true
    end
  end
end
