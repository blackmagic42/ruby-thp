def say_hello(name)
    puts"bonjours #{name}"
end

def ask_first_name
    return ask_first_name.gets.to_s
end

name=ask_first_name
say_hello(name)