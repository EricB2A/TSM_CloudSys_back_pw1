class UsersController < ApplicationController
  before_action :set_user, only: %i[ show update destroy ]

  # GET /users
  def index

    @users = User.all.map do |u|
      if u.avatar.attached?
        u.attributes.merge(avatar_url: url_for(u.avatar))
      else
        u
      end
    end

    render json: @users
  end

  # GET /users/1
  def show
    if @user.avatar.attached?
      render json: @user.attributes.merge(avatar_urL: url_for(@user.avatar))
    else
      render json: @user
    end
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.permit(:firstname, :lastname, :username, :avatar)
    end
end
