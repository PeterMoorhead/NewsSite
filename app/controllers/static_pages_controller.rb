class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def about
  end	

  def contact
    @micropost = Micropost.where('created_at > ?', Date.today.beginning_of_month - 1.months)
    @microposts = @micropost.take(10)
    
    @micropostCreate = current_user.microposts.build if logged_in?

    @popular = Micropost.select('*').reorder('views DESC').take(5)
    #@popular = Micropost.order(created_at: :asc).take(5)
    print(@popular)
    #@popular = @p.take(5)

    @recent = User.where('created_at > ?', Date.today.beginning_of_month - 1.months).order(:created_at)
    @r = @recent.take(12)
    #@r = @re.id
  end


end
