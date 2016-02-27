class BitesController < ApplicationController
  resources :bites
  before_action :set_bite, only [:show, :edit, :update, :destroy]

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
