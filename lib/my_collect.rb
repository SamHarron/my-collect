names = ["Sam Harron", "Melissa Harron", "Matthew Gibson", "Carey Gibson"]

def my_collect(array)
    x = 0
    names_new = []
    while x < array.length
        names_new.push yield(array[x])
        x += 1
    end
    names_new
end

my_collect(names) {|x| x.split(" ").first}
my_collect(names) {|x| x.split(" ").last}
