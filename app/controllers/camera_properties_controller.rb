class CameraPropertiesController < ApplicationController
  before_action :set_camera_property, only: [:show, :edit, :update, :destroy]

  # GET /camera_properties
  # GET /camera_properties.json
  def index
    @camera_properties = CameraProperty.all
  end

  # GET /camera_properties/1
  # GET /camera_properties/1.json
  def show
  end

  # GET /camera_properties/new
  def new
    @camera_property = CameraProperty.new
  end

  # GET /camera_properties/1/edit
  def edit
  end

  # POST /camera_properties
  # POST /camera_properties.json
  def create
    prop_hash = camera_property_params[:properties].hash

    val = {'prop_hash' => prop_hash.to_s}.merge(camera_property_params)
    @camera_property = CameraProperty.new(val)

    respond_to do |format|
      if @camera_property.save
        format.html { redirect_to @camera_property, notice: 'Camera property was successfully created.' }
        format.json { render :show, status: :created, location: @camera_property }
      else
        format.html { render :new }
        format.json { render json: @camera_property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /camera_properties/1
  # PATCH/PUT /camera_properties/1.json
  def update
    respond_to do |format|
      if @camera_property.update(camera_property_params)
        format.html { redirect_to @camera_property, notice: 'Camera property was successfully updated.' }
        format.json { render :show, status: :ok, location: @camera_property }
      else
        format.html { render :edit }
        format.json { render json: @camera_property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /camera_properties/1
  # DELETE /camera_properties/1.json
  def destroy
    # @camera_property.destroy
    # respond_to do |format|
    #   format.html { redirect_to camera_properties_url, notice: 'Camera property was successfully destroyed.' }
    #   format.json { head :no_content }
    # end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_camera_property
      @camera_property = CameraProperty.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def camera_property_params
      params.require(:camera_property).permit(:name, :properties)
    end
end
