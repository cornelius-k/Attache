class BlocksController < ApplicationController

  def get_template
    @type = params[:type]
    @blockUID = SecureRandom.uuid
    respond_to do |format|
      format.js
    end

  end

end
