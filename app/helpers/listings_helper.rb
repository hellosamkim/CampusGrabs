module ListingsHelper
  def resource_name
    :user
  end
 
  def resource
    @resource ||= User.new
  end
 
  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def universities
    ["Brock University", "Carleton University", "University of Guelph", "Lakehead University", "McMaster University", "OCAD University", "University of Ottawa", "Queen's University", "Ryerson University", "University of Toronto", "Trent University", "UOIT", "University of Waterloo", "UWO", "Wilfrid Laurier University", "University of Windsor", "York University"].sort!
  end
end
