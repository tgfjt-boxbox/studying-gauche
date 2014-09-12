var slice = Array.prototype.slice


var first = function(list) {
	return list[0]
}


var rect = function(list) {
	return slice.call(list, 1)
}


var reverse1 = function(list) {
	if (list.length < 1) {
		return list
	}

	return [list.pop()].concat(reverse1(list))
}


var reverse2 = function(list) {
	return (function reverseLocal(list, f) {

		if (list.length === 0) return f

		f.unshift(first(list))
		return reverseLocal(rect(list), f)
	})(list, [])
}


reverse1([1, 2, 3])

reverse2([1, 2, 3])
