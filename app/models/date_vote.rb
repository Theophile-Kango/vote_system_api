class DateVote < ApplicationRecord
    validates_presence_of :date_debut, :date_fin
    validate :end_date_is_after_start_date

    def end_date_is_after_start_date
        return if date_fin.blank? || date_debut.blank?
    
        if date_fin < date_debut
            errors.add(:date_fin, "Ne peut pas être avant la date de début") 
        end 
    end
end
