module ApplicationHelper
  def unknown(value)
    (value == '???' || value == true) ? 'unknown' : ''
  end
end
