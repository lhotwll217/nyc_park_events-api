class NotificationsController < ApplicationController

    def create

        notification = Notification.create(notification_params)
        if notification
            render json: notification, status: :created
        else render json: {errors: "Not Created"}, status:      :unprocessable_entity
        end
    end

    def destroy

        notification = Notification.find_by(id: params[:id])
        if notification
            notification.destroy
            render json: notification, status: :no_content
        else
            render json: {errors: "Not found"}, status: :not_found
        end

    end

    private

    def notification_params
        params.permit(:hours_before, :saved_event_id)
    end

end
