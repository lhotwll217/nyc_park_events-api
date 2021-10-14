class EventsController < ApplicationController

    def index 

        events = Event.where('end_date_time > ?',  DateTime.current).order('start_date_time ASC').limit(1000)
    
        if events
            render json: events, status: :ok
        else
            render json: {errors: "Not Found"}, status: :not_found
        end
    end
end
