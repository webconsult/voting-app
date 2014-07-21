class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def get_countries
    countries = Nominee.select(:country).distinct
  end
  def get_categories
    categories = Category.distinct.order(:name)
  end

  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def voted? (category)

    user = current_user
    match = false

    if user
      user.categories.each do |cat|
        if cat.name == category
          match = true
        end
      end
    end

    return match
  end

  def pretty_links (string)
    if string.is_a? String
      return string.sub(/^https?\:\/\//, '').sub(/^www./,'')
    end
  end

  helper_method :pretty_links
  helper_method :current_user
  helper_method :voted?
end
