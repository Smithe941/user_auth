module ApplicationHelper
  def alert_type(type)
     type == 'alert' ? 'danger' : 'success'
  end
end
