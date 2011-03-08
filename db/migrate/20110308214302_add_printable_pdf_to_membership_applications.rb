class AddPrintablePdfToMembershipApplications < ActiveRecord::Migration
  def self.up
    add_column :membership_applications, :printable_pdf_file_name, :string
    add_column :membership_applications, :printable_pdf_content_type, :string
    add_column :membership_applications, :printable_pdf_file_size, :integer
    add_column :membership_applications, :printable_pdf_updated_at, :datetime
  end

  def self.down
    remove_column :membership_applications, :printable_pdf_updated_at
    remove_column :membership_applications, :printable_pdf_file_size
    remove_column :membership_applications, :printable_pdf_content_type
    remove_column :membership_applications, :printable_pdf_file_name
  end
end
