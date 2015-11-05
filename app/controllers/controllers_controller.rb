class ControllersController < ApplicationController
  before_action :set_controller, only: [:show, :edit, :update, :destroy]

  # GET /controllers
  def index
    @controllers = Controller.all
  end

  # GET /controllers/1
  def show
  end

  # GET /controllers/new
  def new
    @controller = Controller.new
  end

  # GET /controllers/1/edit
  def edit
  end

  # POST /controllers
  def create
    @controller = Controller.new(controller_params)

    if @controller.save
      redirect_to @controller, notice: 'Controller was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /controllers/1
  def update
    if @controller.update(controller_params)
      redirect_to @controller, notice: 'Controller was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /controllers/1
  def destroy
    @controller.destroy
    redirect_to controllers_url, notice: 'Controller was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_controller
      @controller = Controller.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def controller_params
      params.require(:controller).permit(:blog, :new, :create, :update, :destroy, :index, :show, :edit)
    end
end
