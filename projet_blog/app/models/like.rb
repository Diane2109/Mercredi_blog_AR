class Like < ApplicationRecord
  belongs_to :user # a un seul user
  belongs_to :article # a un seul article
end
