class ArticlesController < ApplicationController
	def new
	end

	def index
		@articles = Article.all
	end


	def create
		#render plain: params[:article].inspect 
		@article = Article.new(params_req)
		@article.save
		redirect_to @article
	end

	def show
		@article = Article.find(params[:id])
	end


	private
	def params_req
		params.require(:article).permit(:title, :text)
	end
end
