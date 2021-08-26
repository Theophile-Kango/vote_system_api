FactoryBot.define do 
    factory :user do 
        matricule {'42345'}
        uid {matricule}
        password {'0956323453'}
    end
end