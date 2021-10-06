class NotificationsController < ApplicationController

    def create

        notification = Notification.create(notification_params)
        if notification
            render json: notification, status: :created
        else render json: {errors: "Not Created"}, status:      :unprocessable_entity
        end
    end

    private

    def notification_params
        params.permit(:hours_before, :saved_event_id)
    end

end
