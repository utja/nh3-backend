class Api::V1::SpecialsController < ApplicationController

  def index
    specials = Special.all
    render json: specials, status: :accepted
  end

end
