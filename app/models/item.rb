class Item < ActiveRecord::Base
  belongs_to :category
  has_many :available_items
  has_many :owners, through: :available_items, source: :user
  has_many :wants
  has_many :wanters, through: :wants, source: :user
end
