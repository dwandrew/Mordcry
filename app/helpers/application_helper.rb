module ApplicationHelper

    def logged_in?
        !!warden.user
    end
      
      def current_user
        User.find_by_id(warden.user.id)
      end
end
