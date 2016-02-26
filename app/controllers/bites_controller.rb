class BitesController < ApplicationController

  before_action :set_bite, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  def create
    @bite = Bite.new(bite_params)

    respond_to do |format|
      if @bite.save
        format.html {redirect_to @bite, notice: 'Bite was successfully created.' }
      else
        format.html { render :new }
      end
  end

  def new
    @bite = Bite.new
  end

  def index
    @b = Bite.all
  end

  def show
  end
  end
end
