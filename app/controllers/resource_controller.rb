class ResourceController < ApplicationController
  before_action :set_class_name

  respond_to :json, :xml

  def index
    @all_resources = @class.all
    respond_with @all_resources
  end

  def show
    @resource = @class.find(params[:id])
    respond_with @resource
  end

  def create
    @resource = @class.new(resource_params)
    if @resource.save
      render json: @resource
    else
      respond_with @resource.errors
    end
  end

  def update
    @resource = @class.find(params[:id])
    if @resource.update_attributes(resource_params)
      respond_with @resource
    else
      respond_with @resource.errors
    end
  end

  def destroy
    @resource = @class.find(params[:id])
    @resource.destroy
    respond_with @resource
  end

  private
    def param_whitelist
      whitelist = []
      whitelist += @class.column_names
      whitelist += @class.reflections.keys
      # whitelist += [:order, :dir, :page]
      # whitelist -= HIDDEN_KEYS
      whitelist
    end

    def resource_params
      params.require(@class_sym).permit(param_whitelist)
    end

    def set_class_name
      @class_name = controller_name.classify
      @class = @class_name.constantize
      @class_sym = @class_name.downcase.underscore.to_sym
    end
end
