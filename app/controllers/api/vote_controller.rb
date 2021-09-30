class VoteController < ApplicationController
    before_action :authenticate_user!

    def index 
        votes = Vote.all
        render json: votes
    end

    def create 
        vote = Vote.create(user_id: params[:user_id], date_vote_id: params[:date_vote_id])
        render json: vote
    end
end