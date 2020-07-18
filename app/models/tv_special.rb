class TvSpecial < ApplicationRecord
  validates_presence_of :name
  validates_numericality_of :run_time

  belongs_to :comedian
end
