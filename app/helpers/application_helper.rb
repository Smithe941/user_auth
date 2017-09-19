module ApplicationHelper
  def alert_type(type)
     type == 'alert' ? 'danger' : 'success'
  end

  def title_type(resource)
    resource.persisted? ? 'Edit your post' : 'Create new post'
  end
end
