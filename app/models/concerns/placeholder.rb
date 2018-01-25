module Placeholder
  extend ActiveSupport::Concern

  def self.image_generator(height:, width:)
    "http://via.placehold.it/#{height}x#{width}"
  end
end