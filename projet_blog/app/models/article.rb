class Article < ApplicationRecord
  belongs_to :user # a un seul user
  belongs_to :category # a une seule cat
  has_many :articles # a plusieurs articles
  has_many :likes # a plusieurs likes
end
