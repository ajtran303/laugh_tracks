class Comedian < ApplicationRecord
  validates_presence_of :name, :city
  validates_numericality_of :age

  has_many :tv_specials
end
