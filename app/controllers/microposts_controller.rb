class MicropostsController < ApplicationController
    before_action :logged_in_user, only: [:create, :destroy]
    before_action :correct_user, only: :destroy



    def index
        @microposts = Micropost.paginate(page: params[:page])
    end

    def show
        @microposts = Micropost.find(params[:id])
        @comments = @microposts.comments
    end

    def create
        @micropost = current_user.microposts.build(micropost_params)
        if @micropost.save
            flash[:success] = "News created!"
            redirect_to root_url
        else
            render'static_pages/contact'
        end
    end

    def destroy
    end

    private
    
        def micropost_params
            params.require(:micropost).permit(:title, :category, :content)
        end

        def logged_in_user
            unless logged_in?
                store_location
                flash[:danger] = "Please log in."
                redirect_to login_url 
            end
        end

end
