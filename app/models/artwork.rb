class Artwork < ActiveRecord::Base

  belongs_to :neighborhood
  belongs_to :artist

  # Data Import code

  # def self.import!
  #   new.import!("SF_Civic_Art_Collection.csv")
  # end

  # def import!(file)
  #   CSV.foreach(file, encoding: "iso-8859-1:UTF-8", headers: true, header_converters: :symbol) do |row|

  #     art_lat = find_lat(row[:geometry])
  #     art_long = find_long(row[:geometry])
  #     result = Geocoder.search("#{art_lat}, #{art_long}").first
  #     attributes = {
  #           address: find_address(result),
  #           neighborhood_id: check_neighborhood(result),
  #           latitude: art_lat,
  #           longitude: art_long,
  #           artist_id: check_artist(row[:artist]),
  #           credit: row[:credit_line],
  #           title: row[:title],
  #           dimensions: row[:display_dimensions],
  #           medium: row[:medium],
  #           location_name: row[:location]
  #         }
  #         puts "Creating new artwork: #{attributes.inspect}"
  #         Artwork.create!(attributes)
  #    end
  #  end


  #  def check_neighborhood(obj)
  #   if hood_exists?(find_neighborhood(obj))
  #     return Neighborhood.where(name: find_neighborhood(obj)).first.id
  #   else
  #     @neighborhood = Neighborhood.create!(name: find_neighborhood(obj))
  #     p "creating neighborhood: #{@neighborhood.name}"
  #     return @neighborhood.id
  #   end
  # end

  # def check_artist(obj)
  #   if art_exists?(obj)
  #     return Artist.where(name: obj).first.id
  #   else
  #     @artist = Artist.create!(name: obj)
  #     p "creating artist: #{@artist.name}"
  #     return @artist.id
  #   end
  # end


  # def find_address(data)
  #   if data != nil
  #     data.formatted_address
  #   else
  #     return nil
  #   end
  # end

  # def find_neighborhood(data)
  #   if data != nil
  #     result = data.address_components[2]["long_name"]
  #   else
  #     return nil
  #   end
  # end

  # def find_long(string)
  #   if string != nil
  #     result = string.match /-\d+.\d+/
  #     result[0].to_f
  #   else
  #     return nil
  #   end
  # end

  # def find_lat(string)
  #   if string != nil
  #     result = string.match /,(\d+.\d+)/
  #     result[1].to_f
  #   else
  #     return nil
  #   end
  # end

  # def hood_exists?(string)
  #   if Neighborhood.where(name: string).first != nil
  #     return true
  #   end
  # end

  # def art_exists?(string)
  #   if Artist.where(name: string).first != nil
  #     return true
  #   end
  # end

end
