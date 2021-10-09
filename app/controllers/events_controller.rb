class EventsController < ApplicationController

    def index 

        events = Event.all 
        if events
            render json: events, status: :ok
        else
            render json: {erros: "Not Found"}, status: :not_found
        end
    end
end
