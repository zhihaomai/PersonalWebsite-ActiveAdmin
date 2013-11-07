ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do
    # Here is an example of a simple dashboard with columns and panels.

    columns do
      column do
        panel "Welcome" do
          para "This is where you can create content for http://www.zhihaomai.com"
        end
      end
    end

    columns do
      column do
        panel "Recent Blogs" do
          ul do
            Blog.all.map do |blog|
              li link_to(blog.title, admin_blog_path(blog))
            end
          end
        end
      end
      column do
        panel "Recent Photos" do
          ul do
            Photo.all.map do |photo|
              li link_to(photo.title, admin_photo_path(photo))
            end
          end
        end
      end
    end

    # div :class => "blank_slate_container", :id => "dashboard_default_message" do
    #   span :class => "blank_slate" do
    #     span I18n.t("active_admin.dashboard_welcome.welcome")
    #     small I18n.t("active_admin.dashboard_welcome.call_to_action")
    #   end
    # end

  end # content
end
