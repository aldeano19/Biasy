class Article < ApplicationRecord
  belongs_to :journalist

  validates :link, presence: true
  validates :journalist_id, presence: true
end
