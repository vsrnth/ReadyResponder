class Channel < ApplicationRecord
  has_paper_trail

  belongs_to :person, optional: true

  USAGES = ['1-All','2-Emergency Only','3-Info Only','4-Testing']
  STATUSES = ['OK','Invalid']
  CATEGORIES = ['Home','Business']
  #CHANNEL_TYPES = ["Email", "Cell", "Landline", "Phone", "Text"]
  CHANNEL_TYPES = [ "Text"]

  def phone?
    ["Phone", 'Cell', 'Landline'].include?(self.channel_type)
  end
end
