module AttendeesHelper
  def attendee_picture(attendee, opts={})
  	image_tag(attendee.picture_url, opts) if attendee.picture.present? 
  end
end
