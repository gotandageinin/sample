class DiseasesController < ApplicationController
  after_filter :set_access_control_headers

  autocomplete :disease, :name, full: true

  def index
  end
end
