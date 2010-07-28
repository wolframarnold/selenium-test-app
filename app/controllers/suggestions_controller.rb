class SuggestionsController < ApplicationController

  active_scaffold :suggestion do |config|
    config.columns = [:title, :rating, :is_public]
    config.columns[:rating].form_ui = :select
    config.columns[:rating].options = {:options => [['urgent'], ['moderate'], ['later']]}
    config.columns[:is_public].form_ui = :checkbox
  end

  private

  def before_create_save(record)
    record.user = User.find(params[:user_id])
  end

  def conditions_for_collection
    ['user_id = ?', params[:user_id]]
  end

end
