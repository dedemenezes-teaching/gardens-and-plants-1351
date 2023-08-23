class Garden < ApplicationRecord
  validates :name, :banner_url, presence: true
end
