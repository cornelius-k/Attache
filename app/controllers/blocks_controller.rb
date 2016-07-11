class BlocksController < ApplicationController

  def get_template
    @type = params[:type]
    respond_to do |format|
      format.js
    end

  end

end
