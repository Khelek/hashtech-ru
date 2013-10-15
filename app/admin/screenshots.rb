ActiveAdmin.register Screenshot do
    index do
    selectable_column
    column "project name" do |scrn|
      link_to scrn.project.name, admin_project_path(scrn.project)
    end
    column :image do |scrn|
      image_tag(scrn.image_url(:thumb), alt: scrn.image)
    end
    column "image_path" do |scrn|
      scrn.image
    end
    default_actions
  end

end
