module ApplicationHelper

  def generate_options
    festives = []
    FestiveWishes::Festives::ALL.each do |festive|
      festives << [festive.split('_').join(' ').capitalize, festive]
    end
    festives
  end
end
