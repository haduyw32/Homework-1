class IndexController < ApplicationController
	def toList
		@getList = DataBlog.all
		render 'listBlog'
	end
	def newBlog
		render 'newBlog'
	end
end
