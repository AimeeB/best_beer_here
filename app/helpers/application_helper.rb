module ApplicationHelper
  include Twitter::Autolink
  include Twitter::Extractor
  
  def map_generator(brewbar)
    link_to image_tag("https://maps.googleapis.com/maps/api/staticmap?center=" + "#{brewbar.address1}" + "#{brewbar.city}" + "#{brewbar.state}" + "&zoom=12&size=275x250&markers=color:blue%7C" + "#{brewbar.address1} " + "#{brewbar.city} " + "#{brewbar.state}" + "&sensor=false"), "http://maps.google.com/maps?q=" + "#{brewbar.address1}" + "+#{brewbar.city}" + "+#{brewbar.state}"
  end
      
end
