class Vision < ApplicationRecord

  # Associations
  has_attached_file :image, styles: { thumb: "150x150>" }, default_url: "/images/:style/missing.png"

  # Validations
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  validates_attachment_size :image, less_than: 5.megabytes

  # Class Methods

  # finds the next vision (the one with ID just before this one)
  def self.find_next_vision id
    Vision.select('id').where("id < ?", id).limit(1).order(id: :desc).first
  end

  # finds the previous vision (the one with ID just after this one)
  def self.find_previous_vision id
    Vision.select('id').where("id > ?", id).limit(1).order(id: :asc).first
  end

  # find a random vision
  def self.find_random_vision id
    Vision.select('id').where("id != ?", id).order("RANDOM()").first
  end
end
