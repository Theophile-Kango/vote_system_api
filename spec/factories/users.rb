FactoryBot.define do 
    factory :admin, class: User do 
        matricule {'41345'}
        uid {matricule}
        nom { 'Fadhili' }
        post_nom { 'Kango' }
        prenom { 'Theophile' }
        password {'0956323453'}
        role { 1 }
    end
    factory :candidate, class: User do 
        matricule {'42346'}
        nom { 'Jean' }
        post_nom { 'Zelote' }
        uid {matricule}
        password {'0956323454'}
        role { 2 }
    end
    factory :cp, class: User do 
        matricule {'42347'}
        nom { 'Claude' }
        post_nom { 'Zelote' }
        uid {matricule}
        password {'0956323455'}
        role { 3 }
    end
end