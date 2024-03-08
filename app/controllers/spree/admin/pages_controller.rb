module Spree
  module Admin
    class PagesController < ResourceController
      def translate
        page = Spree::Page.find(params[:id])
        page.update update_page_attribute
        redirect_to spree.admin_pages_path
      end

      def index
        @pages = Spree::Page.visible.where(show_on_intranet: false)
      end

  private
  def update_page_attribute
    params.require(:page).permit(permitted_params)
  end

      def permitted_params
        [:translations_attributes => [:id, :title, :body, :slug, :layout, :foreign_link, :meta_keywords, :meta_title, :meta_description, :show_on_intranet]]
      end
    end
  end
end
