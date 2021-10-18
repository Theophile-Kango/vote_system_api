FactoryBot.define do
  factory :date_vote do
    title {"Vote PP 2021"}
    date_debut { "2021-09-21 06:55:46" }
    date_fin { "2021-09-21 08:55:46" }
    is_valid { false }
  end
  factory :date_vote1 do
    title {"Vote PP 2022"}
    date_debut { "2021-09-21 06:55:46" }
    date_fin { "2021-09-21 06:55:46" }
    is_valid { false }
  end
end
