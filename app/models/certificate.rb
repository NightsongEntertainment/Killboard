class Certificate < ActiveRecord::Base

  # Associations
  belongs_to :category, :class_name => 'CertificateCategory'
  belongs_to :certificate_class, :class_name => 'CertificateClass', :foreign_key => 'class_id'

end
