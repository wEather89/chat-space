class GroupsController < ApplicationController
  def new
    @group = Group.new
    @group.users << current_user
  end

  def edit

  end

  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to root_path, notice: 'New Group created'
    else
      render :new
    end
  end

  def destroy
    
  end

  private
  def group_params
    params.require(:group).permit(:name, user_id: [] )
  end

end
