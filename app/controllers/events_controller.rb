class EventsController < ApplicationController

    def index 

        events = Event.where('end_date_time > ?',  DateTime.current).order('start_date_time ASC').limit(1000)
    
        if events
            render json: events, status: :ok
        else
            render json: {errors: "Not Found"}, status: :not_found
        end
    end

    def filtered 
        events = Event.where('end_date_time > ?',  DateTime.current).order('start_date_time ASC, id')
        events = events.filter_by_date(params[:date]) if params[:date].present?
        events = events.page(params[:page]).per(10)
        if events
            render json: events, status: :ok
        else
            render json: {errors: "Not Found"}, status: :not_found
        end
    end

    def paginate

        puts params[:page]

        events = Event.where('end_date_time > ?',  DateTime.current).order('start_date_time ASC, id'
        ).page(params[:page]).per(10)

        if events
            render json: events, status: :ok
        else
            render json: {errors: "Not Found"}, status: :not_found
        end
    end

end
