module UsersHelper

	def make_avatar_url(size, id, filename)
		theUser = User.find_by_id(id)
		if filename 
			# image_tag("users/#{id}/#{size}/#{filename}")
			image_tag theUser.avatar.url(:size)
		end
	end

end
