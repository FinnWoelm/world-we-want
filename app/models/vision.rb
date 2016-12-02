class Vision < ApplicationRecord

  # Associations
  has_attached_file :image, styles: { thumb: "150x150>" }, default_url: "/images/:style/missing.png"

  # Validations
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  validates_attachment_size :image, less_than: 5.megabytes
end
