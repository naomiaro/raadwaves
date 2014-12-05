class ShowInstancesController < ApplicationController
  before_action :set_show_instance, only: [:show, :edit, :update, :destroy]

  # GET /show_instances
  # GET /show_instances.json
  def index

    timezone = params[:timezone]

    Time.use_zone(timezone) do
      starts = Time.zone.parse params[:start]
      ends = Time.zone.parse params[:end]

      @show_instances = ShowInstance.start_between(starts, ends)
    end
  end

  # GET /show_instances/1
  # GET /show_instances/1.json
  def show
  end

  # GET /show_instances/new
  def new
    @show_instance = ShowInstance.new
  end

  # GET /show_instances/1/edit
  def edit
  end

  # POST /show_instances
  # POST /show_instances.json
  def create
    @show_instance = ShowInstance.new(show_instance_params)

    respond_to do |format|
      if @show_instance.save
        format.html { redirect_to @show_instance, notice: 'Show instance was successfully created.' }
        format.json { render :show, status: :created, location: @show_instance }
      else
        format.html { render :new }
        format.json { render json: @show_instance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /show_instances/1
  # PATCH/PUT /show_instances/1.json
  def update
    respond_to do |format|
      if @show_instance.update(show_instance_params)
        format.html { redirect_to @show_instance, notice: 'Show instance was successfully updated.' }
        format.json { render :show, status: :ok, location: @show_instance }
      else
        format.html { render :edit }
        format.json { render json: @show_instance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /show_instances/1
  # DELETE /show_instances/1.json
  def destroy
    @show_instance.destroy
    respond_to do |format|
      format.html { redirect_to show_instances_url, notice: 'Show instance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def events
    @events = ShowInstance.all.map do |si|

    end

    respond_to do |format|
      format.json { render json: @events }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_show_instance
      @show_instance = ShowInstance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def show_instance_params
      params[:show_instance]
    end
end
