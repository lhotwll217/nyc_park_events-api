class ProfilesController < ApplicationController

    def create 

        profile = Profile.create(profile_params)
        if profile.valid?
            render json: profile, status: :created
        else
            render json: {errors: profile.errors.full_messages }, status: :unprocessable_entity
        end 

    end

    def update
        profile = Profile.find_by(user_id: params[:user_id])
        profile.update(profile_params)

        if profile.valid?
            render json: profile, status: :accepted
        else
            render json: {errors: profile.errors.full_messages}, status: :unprocessable_entity
        end 


    end

    private

    def profile_params

        params.permit(:user_id, :address, :coordinates, :first_name)

    end
end
