ActiveAdmin.register Project do
 index do
    selectable_column
    column :name
    column I18n.t 'activerecord.attributes.project.completed' do |project|
      status_tag (project.completed ? I18n.t('activerecord.attributes.project.completed_yes')
                  : I18n.t('activerecord.attributes.project.completed_no')), (project.completed ? :ok : :error)
    end
    column :site do |project|
      link_to project.site, project.site 
    end
    column I18n.t 'activerecord.attributes.project.screenshots' do |project|
      screenshot = project.screenshots.last
      span link_to image_tag(screenshot.image_url(:small), alt: project.name), screenshot.image.url if screenshot
    end
    column :repository do |project|
      link_to project.repository, project.repository
    end
    column :description
    column :partner
    default_actions
  end
  
  form do |f|
    f.inputs "Details" do
      f.input :name
      f.input :partner
      f.input :completed
      f.input :description
      f.input :repository
      f.input :site
    end
    
    f.has_many :screenshots do |s|
      s.inputs "Screenshots" do
        s.input :image
      end
    end
    
    f.actions
  end
end
