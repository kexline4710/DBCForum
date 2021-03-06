module ApplicationHelper

	def current_user
    if User.exists?(session[:user_id])
		  return User.find(session[:user_id])
    end
    
    return false
	end

	def flash_class(level)
		case level
		when :success then "success"
		when :error then "error"
		end
	end

end
