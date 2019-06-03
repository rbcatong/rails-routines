class ApplicationController < ActionController::Base
   protect_from_forgery with: :exception

   def logged_in?
      current_user.id != nil
    end

    def current_user
   @user = (User.find_by(id: session[:user_id]) || User.new)
 end



end
