class HobbiesController < ApplicationController
  before_action :set_hobby, only: [:show, :update, :destroy]
  before_action :authenticate_user!

  # GET /hobbies
  # GET /hobbies.json
  def index
    @hobbies = Hobby.all
    render 'index', :formats => [:json], :handlers => [:jbuilder]
  end

  # GET /hobbies/1
  # GET /hobbies/1.json
  def show
  end

  # POST /hobbies
  # POST /hobbies.json
  def create
    @hobby = Hobby.new(hobby_params)

    if @hobby.save
      render :show, status: :created, location: @hobby
    else
      render json: @hobby.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /hobbies/1
  # PATCH/PUT /hobbies/1.json
  def update
    if @hobby.update(hobby_params)
      render :show, status: :ok, location: @hobby
    else
      render json: @hobby.errors, status: :unprocessable_entity
    end
  end

  # DELETE /hobbies/1
  # DELETE /hobbies/1.json
  def destroy
    @hobby.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hobby
      @hobby = Hobby.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hobby_params
      params.require(:hobby).permit(:name)
    end
end
