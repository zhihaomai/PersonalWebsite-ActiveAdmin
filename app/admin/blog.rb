ActiveAdmin.register Blog do
  controller do
    def permitted_params
      params.permit blog: [:title, :image, :body, :date, :likes, :dislikes]
    end
  end
end
