class ViewBlogController < ApplicationController
    def demo
        @temp = DataBlog.find_by(id: params[:id])
        @title = @temp.title
        @content = @temp.content
        render 'viewBlog'
    end
end
