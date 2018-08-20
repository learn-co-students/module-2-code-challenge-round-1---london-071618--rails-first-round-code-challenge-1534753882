class Heroine < ApplicationRecord
  belongs_to :power

  validates :super_name, presence: true, uniqueness: true, length: { minimum: 2 }

  def self.power(power_name)
    if power_name != ""
      Heroine.all.select {|heroine| heroine.power.name == power_name}
    else
      Heroine.all
    end
  end

end
