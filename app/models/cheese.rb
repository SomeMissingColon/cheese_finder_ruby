class Cheese < ActiveRecord::Base
  validates :url, presence: true
  validates :index, presence: true
end
