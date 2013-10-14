ActiveAdmin.register Network do
  index do
    selectable_column
    column :name
    column :logo do |obj|
      image_tag obj.logo_url(:tiny)
    end
    default_actions
  end

  form do |f|
    f.inputs "Details" do
      f.input :name
      f.input :logo
      f.input :remote_logo_url
    end
    
    f.actions
  end
end
