class HomeController < ApplicationController

  layout 'application'

  def index
    validity = true # check_festive_validity
    festive = "christmas"
    params[:name] && (params[:name] = params[:name].split("_").join(' '))
    render locals: { validity: validity, festive: festive,
      name: params[:name] }
  end

  private

  def check_festive_validity
    params[:festive].present? &&
      FestiveWishes::Festives::ALL.include?(params[:festive])
  end
end
