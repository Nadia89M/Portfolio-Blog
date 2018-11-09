class Portfolio < ApplicationRecord
  include Placeholder
  has_many :technologies
  accepts_nested_attributes_for :technologies,
  reject_if: lambda { |attrs| attrs['name'].blank? }

  validates_presence_of :title, :body, :main_img, :thumb_img

  def self.angular
    where(subtitle: 'Angular')
  end

  def self.by_position
    order("position ASC")
  end

  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }

  after_initialize :set_defaults

  def set_defaults
    self.main_img ||= Placeholder.image_generator(height: '600', width: '400')
    self.thumb_img ||= Placeholder.image_generator(height: '350', width: '200')
  end
end
