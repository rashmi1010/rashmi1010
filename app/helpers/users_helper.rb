module UsersHelper
	def checked(area)
@user.checkbox.nil? ? false : @user.checkbox.match(area)
end

end
