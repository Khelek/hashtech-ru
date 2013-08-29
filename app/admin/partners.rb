ActiveAdmin.register Partner do
  form do |f|
    f.inputs "Details" do
      f.input :name
      f.input :description
      f.input :logo
    end
    
    f.has_many :links do |link|
      link.inputs "Link" do
        link.input :network
        link.input :value 
        #repeat as necessary for all fields
      end
    end
    
    f.buttons
  end 
end
