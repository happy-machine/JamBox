class PagesController < ApplicationController
    def home
        puts "in home"
        if !user_signed_in?
            redirect_to '/users/sign_in'
        else
       @current_user=current_user
        end
      end
end
