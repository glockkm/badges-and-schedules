def badge_maker(name)
    "Hello, my name is #{name}."
end           # runs in irb badge_maker("Kim") # passed test!



def batch_badge_creator(array)
    arr = [] # creates a new array
    array.each do |name|
        arr << "Hello, my name is #{name}." # << shoves sentences into new array
    end # ends iteration
    arr # returns array of badge messages
end 


def assign_rooms(speakers) # rooms 1-7
    arr = [] 
    speakers.each.with_index(1) do |name, index| 
        arr << "Hello, #{name}! You'll be assigned to room #{index}!"
    end
    arr
end
# https://ruby-doc.org/core-2.2.2/Enumerable.html#method-i-each_with_index
# https://stackoverflow.com/questions/20258086/difference-between-each-with-index-and-each-with-index-in-ruby
# https://ruby-doc.org/core-2.6/Enumerator.html


def printer(attendees) # printer should puts the list of badges and room_assignments
    assign_rooms(attendees) # calls on previous method
        attendees.each do |attendee| # iterates
            puts "Hello, my name is #{attendee}." # puts list of badges
        end
    batch_badge_creator(attendees) # calls a previously established method # iterate creator and puts assigned rooms
        room = 1 # create room variable. rooms start at 1 and go through 7
        attendees.each do |attendee|
            puts "Hello, #{attendee}! You'll be assigned to room #{room}!"
            room += 1 # increments a new room for each attendee in attendees array
        end # ends iteration
end # ends printer method 
    # this overall method puts the list of badges and room_assignments
   
    # that will output first the results of the batch_badge_creator method 
    # and then of the assign_rooms method to the screen.

    # Remember that methods can call other methods. 
    # If the return value of assign_rooms is an array of room assignments, 
    # how can you print out each assignment? You'll need to iterate over 
    # your array of room assignments in order to puts out each 
    # individual assignment.
