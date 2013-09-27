ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
    end

    section I18n.t('activerecord.models.partner.other') do
      table_for Partner.order("created_at").limit(5) do
        column I18n.t('activerecord.attributes.partner.name'), :name
        column I18n.t('activerecord.attributes.partner.description'), :description
        column I18n.t('activerecord.attributes.partner.logo'), :logo do |partner|
          image_tag partner.logo_url(:small)
        end
      end
      strong { link_to I18n.t('activeadmin.view_all_partners'), admin_partners_path }
    end
    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
