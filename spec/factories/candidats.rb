FactoryBot.define do
  factory :candidat do
    nom { "MyString" }
    post_nom { "MyString" }
    prenom { "MyString" }
    promotion { "MyString" }
    description { "MyText" }
    user { nil }
  end
end
