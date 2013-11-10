ActiveAdmin.register Product do
  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Products", :multipart => true do
      f.input :shop_id
      f.input :name
      f.input :product_model
      f.input :description
      f.input :condition
      f.input :price
      f.input :wholesale_discount
      f.input :photo, :as => :file, :hint => f.object.photo.nil? ? f.template.content_t(:span, "no photo yet"): f.template.image_tag(f.object.photo.url(:medium))

    end
    f.actions
  end


end
