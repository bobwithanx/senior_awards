class Student < ApplicationRecord
  belongs_to :advisory, inverse_of: :students
  belongs_to :counselor
  has_and_belongs_to_many :clubs
  has_and_belongs_to_many :cte_programs
  has_and_belongs_to_many :scholarships
  has_and_belongs_to_many :future_plans

  def previous
    Student.where(["id < ?", id]).order(id: :desc).first
  end

  def next
    Student.where(["id > ?", id]).order(:id).first
  end

  def previous_queued
    Student.where("queued_at < ?", queued_at).order(queued_at: :desc).first
  end

  def next_queued
    Student.where("queued_at > ?", queued_at).order(:queued_at).first
  end

  def custom_label_method
    "#{firstname} #{lastname} (#{id_number})"
  end
end
