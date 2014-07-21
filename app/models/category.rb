class Category < ActiveRecord::Base
  has_many :nominees
  has_and_belongs_to_many :users
end
