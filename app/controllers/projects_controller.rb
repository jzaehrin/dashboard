class ProjectsController < ApplicationController
  skip_before_action :authenticate_request

  before_action :set_project, only: [:show]

  # GET /projects
  def index
    @projects = Project.all

    render json: @projects, include: [{ user: {except: [:created_at, :updated_at]} }]
  end

  # GET /projects/1
  def show
    render json: @project, include: [{ user: {except: [:created_at, :updated_at]} }]
  end

  # GET /projects/search
  def search
    @projects = Project.where("title LIKE ? OR short_description LIKE ?", '%' + params[:string] + '%', '%' + params[:string] + '%')

    render json: @projects
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

end
