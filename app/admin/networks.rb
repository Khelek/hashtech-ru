ActiveAdmin.register Network do
  form do |f|
    f.inputs "Details" do
      f.input :name
      f.input :logo
    end
    
    f.buttons
  end
end
