class UserController < ApplicationController
	def login
		@result = {
			status: "success",
			userid: "179309463@qq.com",
			username: "179309463@qq.com"
		}
	end

	def findpwd
		render layout: false
	end

	def setting

	end
end
