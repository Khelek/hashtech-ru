ActiveAdmin.register Project do
 index do
    selectable_column
    column :name
    column "Completed" do |project|
      status_tag (project.completed ? "Yes" : "No"), (project.completed ? :ok : :error)
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
