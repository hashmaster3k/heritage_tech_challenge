class Leed < ApplicationRecord
  validates :first_name, :last_name, :phone, presence: true

  def name
    "#{first_name} #{last_name}"
  end

  def date_text_sent
    created_at.strftime("%m/%d/%Y")
  end
end
