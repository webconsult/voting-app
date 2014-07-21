class Nominee < ActiveRecord::Base
  has_many :votes
  has_many :users, through: :votes
  has_many :contacts
  belongs_to :category
end
