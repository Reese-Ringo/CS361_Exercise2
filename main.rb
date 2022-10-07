# Name Mangler

#Get rid of all things that modify the global variable

@name = "Johanna Jackson"

#Reverse a name to last, first
def reverse_name(name)
  #Split the name into first and last in an array
  split_name = name.split
  #Reverse the array of name components
  reversed_name_components = split_name.reverse
  #Rejoin the array of name components
  reversed_name_components.join(' ')
end


# Mangle the name by reversing it or borgifying it
def modified_name(name, is_borg)
  # Run reverse name function on input
  reversed_name = reverse_name name

  # Add Borg if applicable
  reversed_name << " Borg" if is_borg

  return reversed_name
end

puts "New name: #{modified_name(@name, false)}"
puts "New borg name: #{modified_name(@name, true)}"