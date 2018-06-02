class Journalist < ApplicationRecord
  has_many :articles

  validates :first, presence: true, length: { in: 1..100 }

end
