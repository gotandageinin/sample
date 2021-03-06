class MedicinesController < ApplicationController
  after_filter :set_access_control_headers

  autocomplete :medicine, :name, full: true

  def index
    @medicines = Medicine.where('name like ?', "%#{params[:q]}%").limit(100)
    respond_to do |format|
      format.html
      format.json { render json: @medicines }
      format.xml { render xml: @medicines }
    end
  end
end
