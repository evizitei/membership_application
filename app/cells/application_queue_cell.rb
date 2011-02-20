class ApplicationQueueCell < Cell::Rails

  def display
    @applications = MembershipApplication.pending_review
    render
  end

end
