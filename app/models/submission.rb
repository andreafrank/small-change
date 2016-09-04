class Submission < ApplicationRecord
  has_many :submission_groups
  accepts_nested_attributes_for :submission_groups
  has_attached_file :image, styles: { square: '200x200#' }
  validates_attachment_content_type :image, :content_type => /^image\/(jpg|jpeg|pjpeg|png|x-png|gif)$/, :message => 'file type is not allowed (only jpeg/png/gif images)'

  def materials
    ['plastic', 'aluminum', 'glass', 'cardboard', 'paper']
  end
end
