ActiveAdmin.register Partner do
  index do
    selectable_column
    column :name
    column :site do |partner|
      link_to partner.site, partner.site 
    end
    column :description
    column I18n.t 'activerecord.attributes.partner.links' do |partner|
      partner.links.map do |l|
        if l.network
          span link_to image_tag(l.network.logo_url(:tiny), alt: l.network.name), l.value
        else
          span link_to l.value, l.value
        end
      end
    end
    column I18n.t 'activerecord.attributes.partner.projects' do |partner|
      partner.projects.map do |project|
        span link_to project.name, admin_project_path(project)
      end
    end
    column :logo do |partner|
      image_tag partner.logo_url(:small)
    end
    default_actions
  end
  
  form do |f|
    f.inputs "Details" do
      f.input :name
      f.input :description
      f.input :logo
      f.input :site
    end
    
    f.has_many :links do |link|
      link.inputs "Link" do
        link.input :network
        link.input :value 
        #repeat as necessary for all fields
      end
    end
    
    f.actions
  end 
end
