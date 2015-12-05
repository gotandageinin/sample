class InterventionsController < ApplicationController
  after_filter :set_access_control_headers

  autocomplete :intervention, :name, full: true

  def index
    @interventions = Intervention.where('name like ?', "%#{params[:q]}%").limit(100)
    respond_to do |format|
      format.html
      format.json { render json: @interventions }
      format.xml { render xml: @interventions }
    end
  end
end
