class NomineesController < ApplicationController
  def index

    @nominee = Nominee.all.order(:name)

    # Store params in session
    if params[:country] || params[:category]
      if params[:country].present?
        session[:country] = params[:country]
      else
        session[:country] = 'all'
      end

      if params[:category].present?
        session[:category] = params[:category].to_i
      else
        session[:category] = 0
      end

    end

    # Filters the nominee object based on session
    if session[:country] && session[:country] != 'all'
      @nominee = @nominee.where('nominees.country LIKE ?', session[:country])
    end

    if session[:category] && session[:category] != 0
       @nominee = @nominee.where('nominees.category_id = ?', session[:category])
    end


    if params[:items].present?
      @nominee = @nominee.paginate(:page => params[:page], :per_page => params[:items])
    else
      @nominee = @nominee.paginate(:page => params[:page], :per_page => 6)
    end
  end

  def show
  end

  def vote
  end
end
