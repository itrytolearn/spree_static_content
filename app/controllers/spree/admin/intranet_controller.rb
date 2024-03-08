module Spree
  module Admin
    class IntranetController < ResourceController
      before_action :authorize_intranet_access

      def index
        @pages = Spree::Page.where(show_on_intranet: true)
      end

      def show
      end

      private
      def authorize_intranet_access
        unless !spree_current_user&.admin?
          flash[:notice] = "You are not authorized to access this page."
          redirect_to spree.admin_pages_path
        end
      end

      protected
        def model_class
          Spree::Page
        end
    end
  end
end
