class ProfilesController < ApplicationController

    def create 

        profile = Profile.create(profile_params)
        if profile
            render json: profile, status: :created
        else
            render json: {errors: "Not Created"}, status: :unprocessable_entity
        end 
    
    end

    def update
        profile = Profile.find_by(user_id: params[:user_id])
        profile.update(profile_params)

        render json: profile, status: :accepted
    end

    private

    def profile_params

        params.permit(:user_id, :address, :coordinates, :first_name)

    end
end
