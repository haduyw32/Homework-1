class ViewBlogController < ApplicationController
    skip_before_filter  :verify_authenticity_token
    def demo
        @temp = DataBlog.find_by(id: params[:id])
        @title = @temp.title
        @content = @temp.content
        render 'viewBlog'
    end

    def save
		DataBlog.create!(title: params[:title], content: params[:content])
		redirect_to '/list'
	end
    def edit
        DataBlog.find_by(id: params[:id]).update(title: params[:title], content: params[:content])
        redirect_to '/list'
    end
end
