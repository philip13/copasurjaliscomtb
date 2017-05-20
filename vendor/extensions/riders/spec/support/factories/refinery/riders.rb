
FactoryGirl.define do
  factory :rider, :class => Refinery::Riders::Rider do
    sequence(:first_name) { |n| "refinery#{n}" }
  end
end

