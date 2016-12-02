FactoryGirl.define do
  factory :vision do
    content { Faker::Lorem.paragraphs }
    color "purple"
  end

  factory :vision_with_image, parent: :vision do
    image { File.new("#{Rails.root}/spec/support/fixtures/vision.jpg") }
  end

  factory :vision_without_image, parent: :vision do
    image nil
  end
end
