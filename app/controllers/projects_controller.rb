class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    @project = Project.new  # This prevents the nil error in form_with
  end

  def create
    @project = Project.new(project_params)
    @project.user = current_user  # Assign the project to the logged-in user (if applicable)

    if @project.save
      flash[:notice] = "Project successfully created!"
      redirect_to projects_path  # Redirects to the index page after creation
    else
      flash[:alert] = "Error creating project."
      render :new, status: :unprocessable_entity  # Renders form again if validation fails
    end
  end

  private

  def project_params
    params.require(:project).permit(:title, :description)
  end
end
