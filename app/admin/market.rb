ActiveAdmin.register Market do
  controller do
    def permitted_params
      params.permit market: [:name, :address, :latitude, :longitude ]
    end
  end

end
