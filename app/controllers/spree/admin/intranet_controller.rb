module Spree
  module Admin
    class IntranetController < ResourceController
      def index
      end

      def show
      end

      protected
        def model_class
          Spree::Page
        end
    end
  end
end
