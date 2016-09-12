
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

def closer_to(target, a, b)
	aDistance = target - a
	bDistance = target - b

	if aDistance < 0
		aDistance = aDistance * -1
	end

	if bDistance < 0
		bDistance = bDistance * -1
	end

	if aDistance < bDistance
		return(a)
	elsif aDistance > bDistance
		return(b)
	elsif aDistance == bDistance
		return(0)
	end

end

# TODO - write two_as_one?

def two_as_one?(a, b, c)
	return a + b == c || b + c == a || a + c == b
end

# TODO - write pig_latinify

def pig_latinify(str)
	str = str.lstrip
	str = str.rstrip
	str = str.downcase
	if str[0] == "a" || str[0] == "e" || str[0] == "i" ||str[0] == "o" || str[0] == "u"
		return(str + "way")
	else
		consonant = str[0]
		str.slice!(0)
		return(str + consonant + "ay")
	end

end

# def pig_latinify_sentence(str)
# 	str = str.lstrip
# 	str = str.rstrip
# 	str = str.downcase
# 	str = str.split
# 	if str[0] == "a" || str[0] == "e" || str[0] == "i" ||str[0] == "o" || str[0] == "u"
# 		return(str + "way")
# 	elsif str[0..1] == "ch" || str[0..1] == "sh" || str[0..1] == "ph" || str[0..1] == "th" ||
# 		consonant = str[0..1]
# 		str.slice(0..1)
# 		return(str + consonant + "ay")
# 	else
# 		consonant = str[0]
# 		str.slice!(0)
# 		return(str + consonant + "ay")
# 	end

end

def tutnese(str)
	str = str.lstrip
	str = str.rstrip
	str = str.downcase
	str = str.split(//)
	str.map!(&:.to_s)
	if str == "b"
		str = "bub"
	elsif str == "c"
		str = "cash"
	elsif str == "d"
		str = "dud"
	elsif str == "f"
		str = "fud"
	elsif str == "g"
		str = "gug"
	elsif str == "h"
		str = "hash"
	elsif str == "j"
		str = "jug"
	elsif str == "k"
		str = "kuck"
	elsif str == "l"
		str = "lul"
	elsif str == "m"
		str = "mum"
	elsif str == "n"
		str = "nun"
	elsif str == "p"
		str = "pup"
	elsif str == "q"
		str = "quack"
	elsif str == "r"
		str = "rug"
	elsif str == "s"
		str = "sus"
	elsif str == "t"
		str = "tut"
	elsif str == "v"
		str = "vuv"
	elsif str == "w"
		str = "wack"
	elsif str == "x"
		str = "ex"
	elsif str == "y"
		str = "yub"
	elsif str == "z"
		str = "zug"
end
