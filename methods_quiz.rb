
# TODO - write has_teen?

def has_teen?(a, b, c)
	return  (a >= 13 && a <= 19) || (b >= 13 && b <= 19) || (c >= 13 && c <= 19)
end

# TODO - write not_string

def not_string(str)
	if str[0..2] === "not" || str[0..2] === "Not"
		return(str)
	else
		return("not" + str)
	end
end

# TODO - write icy_hot?

def icy_hot?(a, b)
	return (a < 0 && b > 100) || (a > 100 && b < 0)
end

# TODO - write closer_to

# TODO - write two_as_one?

# TODO - write pig_latinify
