FactoryGirl.define do
  factory :question do
    title "Simple question"
    contents "Long description of a problem."
    user
  end
end
