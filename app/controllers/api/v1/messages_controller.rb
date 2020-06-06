module Api
  module V1
    class MessagesController < ApiController

      def create_message
        message = Message.create(message_params)
        render json: message
      end

      private
      def message_params
        params.require(:message).permit(:user_id, :receiver_user_name, :message_note)
      end

    end
  end
end
