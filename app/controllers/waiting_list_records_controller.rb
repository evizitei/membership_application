class WaitingListRecordsController < ApplicationController
  def new
    @position = Position.find(params[:position_id])
    @waiting_list_record = WaitingListRecord.new(:position_id=>@position.id)
  end
  
  def create
    @position = Position.find(params[:position_id])
    @waiting_list_record = @position.waiting_list_records.
                                     find_or_create_by_email(params[:waiting_list_record][:email])
  end
end
