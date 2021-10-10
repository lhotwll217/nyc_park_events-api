class SavedEventsController < ApplicationController


    def index

        saved_events = SavedEvent.where( user_id: session[:user_id] )

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

    def destroy

        saved_event = SavedEvent.find_by(id: params[:id])
        if saved_event
            saved_event.destroy
            render json: saved_event
        else
            render json: {errors: "Not Found"}, status: :not_found
        end
    end
end
