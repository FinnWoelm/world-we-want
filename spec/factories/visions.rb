FactoryGirl.define do
  factory :vision do
    content { Faker::Lorem.paragraphs }
    image { File.new("#{Rails.root}/spec/support/fixtures/vision.jpg") }
    color "purple"
  end
end
