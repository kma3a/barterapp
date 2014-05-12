class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :available_items
  has_many :listed_items, through: :available_items, source: :item
  has_many :wants
  has_many :wanted_items, through: :wants, source: :item

end
