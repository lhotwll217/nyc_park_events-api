class SavedEventsController < ApplicationController


    def show

        saved_events = SavedEvent.where( user_id: params[user_id] )

        if saved_events 
            render json: saved_events
        else
            render json: {errors: "Not Found"}, status: :not_found
        end
    end

    def create

        saved_event = SavedEvent.create(user_id: params["user_id"], event_id: params["event_id"])
        if saved_event
            render json: saved_event, status: :created
        else
            render json: {errors: "Not Created"}, status: :unprocessable_entity
        end
    end
end
