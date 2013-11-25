class BatmanController < ApplicationController

  def index
    if request.xhr?
      prefix_length = Rails.application.config.assets.prefix.length + 1
      path = request.path[prefix_length..-1]
      render :text => Rails.application.assets[path]
    else
      render nothing: true, layout: 'batman'
    end
  end
end
