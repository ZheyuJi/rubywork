h=Hash.new(0)

h["QQQ"]= 3
h["WWW"]= 4
h["ZZZ"] = 1

k = h.max_by {|key,value| key}
p k[0]
p k[1]

