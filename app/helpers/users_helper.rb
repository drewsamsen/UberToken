module UsersHelper

	def make_avatar_url(size, id, filename)
	path = "/system/users/#{id}/#{size}/#{filename}"
	end

end
