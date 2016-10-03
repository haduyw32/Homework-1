class ViewBlogController < ApplicationController
    skip_before_filter  :verify_authenticity_token
    def view
        @temp = DataBlog.find_by(id: params[:id])
        @seen = @temp.amountOfSee
        if @seen == nil
            @seen = 0
        end
        DataBlog.find_by(id: params[:id]).update(amountOfSee: (@seen+1))

        @tempCm = Comment.where(idBlog: params[:id])
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

    def saveComment
        Comment.create!(idBlog: params[:id], name: params[:name], comment: params[:comment])
    end
end
