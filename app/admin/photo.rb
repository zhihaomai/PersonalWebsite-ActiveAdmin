ActiveAdmin.register Photo do

  controller do
    def permitted_params
      params.permit photo: [:title, :subtitle, :tags, :url]
    end
  end
end
