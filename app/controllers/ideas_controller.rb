class IdeasController < ApplicationController
    def index
        @pagy, @ideas = pagy(Idea.order("created_at DESC"))
    end

    def create
        #  @idea = Idea.create(description: params[:idea][:description], author: params[:idea][:author])
        # @idea = Idea.create(params[:idea])
        @idea = Idea.create(idea_params)
        if @idea.valid?
            flash[:success] = "Your idea has been posted!"
          else
            flash[:alert] = "Woops! Looks like there has been an error!"
        end
        redirect_to root_path
    end


    def edit
        @idea = Idea.find(params[:id])
    end

    def update
        @idea = Idea.find(params[:id])
        if @idea.update(idea_params)
            flash[:success] = "The idea has been updated!"
            redirect_to root_path
          else
            flash[:alert] = "Woops! Looks like there has been an error!"
            redirect_to edit_idea_path(params[:id])
        end
    end

    def destroy
        @idea = Idea.find(params[:id])
        @idea.destroy
        flash[:success] = "The idea was successfully deleted!"
        redirect_to root_path
    end

    # def show
    #     @idea = Idea.find(params[:id])
    # end
    
    private

    def idea_params
        params.require(:idea).permit(:description, :author)
    end
end
