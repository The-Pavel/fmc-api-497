class Api::V1::StoriesController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token, only: [:create, :update, :destroy]

  def index
    @stories = Story.all
    # render json: @stories <- for testing
  end

  def show
    @story = Story.find(params[:id])
    # render json: @story
  end

  def destroy
    @story = Story.find(params[:id])
    @story.destroy
    render json: {status: :deleted}
  end

  def create
    @story = Story.new(story_params)
    if @story.save
      render json: { story: @story, status: :success }
    else
      render_error
    end
  end

  def update
    @story = Story.find(params[:id])
    if @story.update(story_params)
      render json: { story: @story, status: :updated }
    else
      render_error
    end
  end

  private

  def story_params
    params.require(:story).permit(:title, :content, :image)
  end

  def render_error
    render json: { error: @story.errors.full_messages }
  end
end
