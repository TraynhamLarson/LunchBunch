class BitesController < ApplicationController

  before_action :set_bite, only: [:show, :edit, :update, :destroy]

  before_filter :authenticate_user!

def create
  @bite = Bite.new(bite_params)

  respond_to do |format|
    if @bite.save
    format.html {redirect_to @bite, notice: 'Bite was sucessfully created.' }
    else
    format.html {render :new }
    end
  end
end

    def update
      respond_to do |format|
        if @bite.update(bite_params)
            format.html { redirect_to @bite, notice: 'Post was successfully updated.' }
        else
          format.html { render :edit }
        end
      end
    end

    def destroy
        @bite.destroy
      respond_to do |format|
        format.html { redirect_to bites_url, notice: 'Bite was successfully destroyed.' }
    end
  end

    def index
      @b = Bite.all
    end

    def show
    end

    def edit
    end

    def new
      @bite = Bite.new
    end


private

    def set_bite
      @bite = Bite.find(params[:id])
    end

    def bite_params
      params.require(:bite).permit(:message, :user_id)
    end
end
