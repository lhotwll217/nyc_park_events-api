class SavedEventsController < ApplicationController

    def create
        saved_event = SavedEvent.create(saved_event_params)
        if saved_event
            render json: saved_event
        else 
            render json: {errors: "Event Not Saved"}, status: :unprocessable_entity
        end
    end

    private 

    def saved_event_params
        params.permit(:categories, :contact_phone, :coordinates, :description, :end_date, :end_time, :guide, :image, :link, :location, :park_ids, :park_names, :start_date, :start_time, :title, :user_id)
    end
end
