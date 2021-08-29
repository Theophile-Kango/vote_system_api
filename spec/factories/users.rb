FactoryBot.define do 
    factory :admin, class: User do 
        matricule {'41345'}
        uid {matricule}
        password {'0956323453'}
        role { 1 }
    end
    factory :candidate, class: User do 
        matricule {'42346'}
        uid {matricule}
        password {'0956323454'}
        role { 2 }
    end
    factory :cp, class: User do 
        matricule {'42347'}
        uid {matricule}
        password {'0956323455'}
        role { 3 }
    end
end