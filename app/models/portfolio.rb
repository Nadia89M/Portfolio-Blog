class Portfolio < ApplicationRecord
  has_many :technologies, dependent: :destroy

  validates_presence_of :title, :body

  def self.angular
    where(subtitle: 'Angular')
  end

  def self.by_position
    order("position ASC")
  end

end
