class Comedian < ApplicationRecord
  validates_presence_of :name, :city, :image_url
  validates_numericality_of :age

  has_many :tv_specials

  def self.average_age
    self.average(:age)
  end

  def self.cities
    self.distinct.pluck(:city)
  end
end
