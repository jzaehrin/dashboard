class Admin::ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :update, :destroy]

  # GET /projects
  def index
    #logger.debug "ProjectsController#index #{current_user.inspect}"
    
    if ( current_user.is_admin )
      @projects = Project.all
    else
      @projects = current_user.projects.all
    end

    render json: @projects
  end

  # GET /projects/1
  def show
    render json: @project
  end

  # POST /projects
  def create
    @project = Project.new(project_params)

    if @project.save
      render json: @project, status: :created, location: @project
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /projects/1
  def update
    if @project.update(project_params)
      render json: @project
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  # DELETE /projects/1
  def destroy
    @project.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      if current_user.is_admin
        @project = Project.find(params[:id])
      else
        @project = current_user.projects.find(params[:id])
      end
    end

    # Only allow a trusted parameter "white list" through.
    def project_params
      params.require(:project).permit(:title, :short_description, :status, :deadline, :tags, :nbr_people, :user_id)
    end
end
