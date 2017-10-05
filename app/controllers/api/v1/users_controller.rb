class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]
  before_action :authenticate_user!

  def show
    # p current_user
  end

  private

    def set_user
      @user = current_user
    end
end
