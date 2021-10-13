class NotificationsController < ApplicationController

    def create

        notification = Notification.create(notification_params)
        if notification.valid?
        render json: notification, status: :created
        else
            render json: {errors: notification.errors.full_messages }, status: :unprocessable_entity
        end

    end

    def destroy

        notification = Notification.find_by(id: params[:id])
        if notification
            notification.destroy
        else
            render json: {errors: "Not Found"}, status: :notification
        end
       
    end

    private

    def notification_params
        params.permit(:user_id, :saved_event_id, :days_before)
    end
end
