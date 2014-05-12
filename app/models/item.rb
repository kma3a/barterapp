class Item < ActiveRecord::Base
  belongs_to :category
  has_many :available_items
  has_many :owners, through: :available_items, class_name: "User"
  has_many :wants
  has_many :wanters, through: :wants, class_name: "User"
end
