class ApplicationController < ActionController::Base

    def after_sign_in_path_for(resource)
        pages_dashboard_path
    end

end
