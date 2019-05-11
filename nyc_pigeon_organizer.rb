
# def nyc_pigeon_organizer(data)
#   data.each_with_object({}) do |(key, h), result|
#     h.each do |value, names|
#       names.each do |name|
#         result[name] ||= {}
#         result[name][key] ||= []
#         result[name][key] << value.to_s
#       end
#     end
#   end
# end

# this method returns pigeons as keys on a new hash
def get_pigeons(data)
pigeon_list = {}
pigeons = []
#here it gets all the pigeons as values, then flattens array and removes duplicates. Saves into array.
  data.each  do |key, values|
    values.collect do |desc, pigeon|
    pigeons << pigeon
    pigeons = pigeons.flatten.uniq    
    end 
   end
#iterates in new no duplicates pigeons array to add to new pigeon hash
  pigeons.each do |pigeon|
  pigeon_list[pigeon] = {}  
  end
 pigeon_list
end 

def get_gender(data)
  new_list = get_pigeons(data)
   gender_f = data.fetch(:gender)
    #puts gender
  gender_f.each do |gender_k, pigeons|
    #puts pigeons
    new_list.collect do |p_keys, values|  
      if pigeons.to_s.include?(p_keys)
        #puts "hi"
        new_list[p_keys][:gender] = ["#{gender_k}"]
        


    end
   end
  #puts new_list
 end
   puts new_list
end


def nyc_pigeon_organizer(data)
  new_list = get_pigeons(data)
  get_gender(data)
  #puts new_list.keys
  #a_pigeon = []
 
 colors = data.fetch(:color)
    #puts colors
    #colors.each do |key, p_colors |
  


 lives = data.fetch(:lives)   
    #puts lives


 end 