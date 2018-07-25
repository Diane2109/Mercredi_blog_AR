class User < ApplicationRecord
  has_many :articles # a plusieurs articles
  has_many :comments # a plusieurs comments
  has_many :likes # a plusieurs likes
end
