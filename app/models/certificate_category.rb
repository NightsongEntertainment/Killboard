class CertificateCategory < ActiveRecord::Base

  # Associations
  has_many :certificates

end
