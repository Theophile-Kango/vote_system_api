class Api::DateVoteController < ApplicationController
    before_action :authenticate_user!
    before_action :admin_authenticator, expect: [:show]
    
    def show 
        @date_vote = DateVote.find(params[:id]) 
    end

    def create
        if params[:date_fin].present? && params[:date_fin].present?
            if params[:date_fin] > params[:date_debut]
                params[:is_valid] = true
            end
        end 
        date = DateVote.create!(date_debut: params[:date_debut], date_fin: params[:date_fin], is_valid: params[:is_valid], title: params[:title])
        render json: date
    end

    def update
        date = DateVote.find(params[:id])
        date.update_attributes(date_debut: params[:date_debut], date_fin: params[:date_fin], is_valid: params[:is_valid], title: params[:title])
        render json: date
    end

    def destroy
        DateVote.destroy(params[:id])
    end
    
end
