ActiveAdmin.register Shop do
  index do
    column :owner_image do |shop|
      link_to(image_tag(shop.photo, :height=>"60px", :width => "100px"), admin_shop_path(shop))
    end
    column :name
    column :shop_owner
    column :shop_line
    column :shop_number
    column :full_address
    column :shop_contact
    default_actions
  end

  filter :name
  filter :shop_owner
  filter :shop_line
  filter :shop_number
  filter :full_address
  filter :shop_contact

  show do |photos|
    attributes_table do
      row :image do
        image_tag(photos.photo, :width => "300px", :height => "150px")
      end
      row :name
      row :shop_owner
      row :shop_line
      row :shop_number
      row :full_address
      row :shop_contact
      row :market_id
      row :shop_description
      row :created_at
      row :updated_at
      row :photo_file_name
      row :photo_file_size
    end
  end




  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Shop", :multipart => true do
      f.input :market_id
      f.input :name
      f.input :shop_owner
      f.input :shop_line
      f.input :shop_number
      f.input :full_address
      f.input :shop_contact
      f.input :shop_description
      f.input :photo, :as => :file, :hint => f.object.photo.nil? ? f.template.content_t(:span, "no photo yet"): f.template.image_tag(f.object.photo.url(:medium))
    end
    f.actions
  end
  controller do
    def permitted_params
      params.permit shop: [:name, :shop_owner, :shop_line, :shop_number, :shop_description, :full_address, :shop_contact, :photo ]
    end
  end



end
