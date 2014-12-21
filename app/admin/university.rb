ActiveAdmin.register University do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  permit_params :title, :body, :photo, :locate_id, :course_id, :rank_id
  form :html => {:multipart => true} do |f|
    f.inputs do
      f.input :title
      f.input :body
      f.input :photo, :as => :file
      f.input :locate_id, :as => :select, :collection => Locate.all
      f.input :course_id, :as => :select, :collection => Course.all
      f.input :rank_id, :as => :select, :collection => Rank.all

    end
    f.actions
  end
end
