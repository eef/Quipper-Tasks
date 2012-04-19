module TasksHelper

  def task_status(status)
    if status
      image_tag("bullet_green.png", :title => "Complete")
    else
      image_tag("bullet_red.png", :title => "Pending")
    end
  end

end
