class EntriesController < ApplicationController
  def create
    entry = current_user.entries.new(entry_params)
    entry.save
    redirect_to root_path
  end

  private

  def entry_params
    params.require(:entry).permit(:message, :location)
  end
end
