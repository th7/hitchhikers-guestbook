class EntriesController < ApplicationController
  def create
    entry = current_user.entries.new(entry_params)
    entry.save
    redirect_to root_path
  end

  def destroy
    entry = current_user.entries.where(:id => params[:id]).first
    entry.destroy if entry
    redirect_to root_path
  end

  private

  def entry_params
    params.require(:entry).permit(:message, :location)
  end
end
