module Api
  module V1
    class UsersController < ApiController

      def users_list
        user_list = User.all
        render json: user_list
      end

      def get_single_user_message
        messages = Message.where(user_id: params[:user][:user_id], receiver_user_name: params[:user][:receiver_user_name]).order("created_at ASC").pluck(:message_note)
        render json: messages
      end

      def user_all_msg
        messages = Message.all.order(:user_id, :receiver_user_name)
        render json: messages
      end

    end
  end
end
