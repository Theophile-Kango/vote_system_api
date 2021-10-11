class Api::CandidateController < ApplicationController
    before_action :authenticate_user!
    before_action :candidate_authenticator, only: [:create, :update, :show]
    before_action :admin_authenticator, only: [:index, :destory]

    def index 
        candidats = Candidat.all
        render json: candidats
    end

    def create 
        image = Cloudinary::Uploader.upload(params[:image])
        candidat = Candidat.create(description: params[:description], user_id: params[:user_id], image: image["secure_url"])
        
        render json: candidat
    end

    def update
        candidat = Candidat.find(params[:candidat])
        candidat.update(description: params[:description], user_id: params[:user_id])
        render json: candidat
    end

    def destroy
        Candidat.destroy(params[:candidat])
    end
end
