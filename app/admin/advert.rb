ActiveAdmin.register Advert do
  controller do
    def permitted_params
      params.permit advert: [:name, :external_link, :description, :title, :photo]
    end

  end
  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Adverts", :multipart => true do
      f.input :name
      f.input :title
      f.input :description
      f.input :external_link
      f.input :photo, :as => :file, :hint => f.object.photo.nil? ? f.template.content_t(:span, "no photo yet"): f.template.image_tag(f.object.photo.url(:medium))

    end
    f.actions
  end


end
