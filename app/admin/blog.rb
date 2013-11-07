ActiveAdmin.register Blog do
  controller do
    def permitted_params
      params.permit blog: [:title, :image, :body, :link, :tags]
    end
  end
end
