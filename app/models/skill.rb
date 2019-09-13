class Skill < ApplicationRecord
  include Placeholder
  validates_presence_of :title, :percent_utilized

  def set_defaults
    self.badge ||= Placehodler.image_generator(height: '250', width: '250')
  end
end
