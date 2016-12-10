FactoryGirl.define do
  factory :post do
    body Faker::Lorem.paragraph
    picture { File.open("spec/fixtures/picture/dummy.png") }
  end
end
