class AddShowOnIntranetToSpreePages < SpreeExtension::Migration[4.2]
  def self.up
    add_column :spree_pages, :show_on_intranet, :boolean, default: false, null: false
  end

  def self.down
    remove_column :spree_pages, :show_on_intranet
  end
end
