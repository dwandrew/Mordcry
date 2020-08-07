class OmniauthCallbacksController < Devise::OmniauthCallbacksController
    # replace with your authenticate method
    before_action :authenticate_user!
  
  
    def google_oauth2
        user = User.from_google(from_google_params)
        if user.present?
          sign_out_all_scopes
          flash[:success] = t 'devise.omniauth_callbacks.success', kind: 'Google'
          sign_in_and_redirect user, event: :authentication
        else
          flash[:alert] = t 'devise.omniauth_callbacks.failure', kind: 'Google', reason: "#{auth.info.email} is not authorized."
          redirect_to new_user_session_path
        end
      end
    
      protected
    
      def after_omniauth_failure_path_for(_scope)
        new_user_session_path
      end
    
      def after_sign_in_path_for(resource_or_scope)
        stored_location_for(resource_or_scope) || root_path
      end
    
      private
    
      def from_google_params
        @from_google_params ||= auth
      end
    
      def auth
        @auth ||= request.env['omniauth.auth']
      end
    end
  
  
  
  
  
  
  
  
  
  
  
  
  
    # def google_oauth2
    #   auth = request.env["omniauth.auth"]
    #   user = User.where(provider: auth["provider"], uid: auth["uid"])
    #           .first_or_initialize(email: auth["info"]["email"])
    #   user.name ||= auth["info"]["name"]
    #   user.save!
  
    #   user.remember_me = true
    #   sign_in(:user, user)
  
    #   redirect_to after_sign_in_path_for(user)
    # end
 
