class LikesController < ApplicationController
  before_action :authenticate_user!
    before_action :set_bite

    def create
      @bite.likes.where(user_id: current_user.id).first_or_create

      respond_to do |format|
        format.html { redirect_to request.referrer }
      end
    end
    def destroy
      @bite.likes.where(user_id: current_user.id).destroy_all
      respond_to do |format|
        format.html {redirect_to request.referrer }
      end
    end

    private

      def set_bite
        @bite = Bite.find(params[:bite_id])
      end
end
