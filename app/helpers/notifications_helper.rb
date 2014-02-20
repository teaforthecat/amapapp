module NotificationsHelper

  def geo_src_path notification, args
    if notification.geo.nil?
       new_geo_path(args)
    else
      edit_geo_path(notification.geo, args)
    end
  end

end
