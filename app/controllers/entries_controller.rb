class EntriesController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]

  def create
    @entry = current_user.entries.build(entries_params)
    if @entry.save
      flash[:success] = "Entries created!"
      redirect_to root_url
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end

  def destroy
  end

  def show
    @entry = Entry.find(params[:id])
    @comments = @entry.comments
    @new_comment = Comment.new
    # @comments = @entry.comments.paginate(page: params[:page])    
  end

  private

    def entries_params
      params.require(:entry).permit(:title, :content)
    end
end
