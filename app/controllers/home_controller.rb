class HomeController < ApplicationController

  layout 'application'

  def index
    validity = check_festive_validity
    params[:name] && (params[:name] = params[:name].split("_").join(' '))
    render locals: { validity: validity, festive: params[:festive],
      name: params[:name] }
  end

  private

  def check_festive_validity
    params[:festive].present? &&
      FestiveWishes::Festives::ALL.include?(params[:festive])
  end
end
