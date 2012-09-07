module UsersHelper

	def make_avatar_url(size, id, filename)
		if filename 
			image_tag("users/#{id}/#{size}/#{filename}")
		end
	end

end
