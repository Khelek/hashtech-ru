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
    column :repository do |project|
      link_to project.repository, project.repository
    end
    column :description
    column :partner
    default_actions
  end
end
