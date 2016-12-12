class Vision < ApplicationRecord

  # Associations
  has_attached_file :image, styles: { thumb: "150x150>" }, default_url: "/images/:style/missing.png"
  has_one :identity, dependent: :destroy
  has_secure_token :id_token

  # # Accessors
  enum color: [:red, :pink, :purple, :deep_purple, :indigo, :blue, :light_blue, :cyan, :teal, :green, :light_green, :lime, :yellow, :amber, :orange, :deep_orange, :brown, :gray, :blue_gray]

  # Validations
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  validates_attachment_size :image, less_than: 5.megabytes
  validates_presence_of :content

  after_validation :clean_paperclip_errors
  before_create :set_ID_token_expiration

  # cleans duplicate errors
  def clean_paperclip_errors
    errors.delete(:image)
  end

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

  private
    # sets the expiration date and time for the ID token
    def set_ID_token_expiration
      self.id_token_expiration = Time.zone.now + 24.hours
    end
end
