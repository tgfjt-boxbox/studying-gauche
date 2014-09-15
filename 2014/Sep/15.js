/* jshint asi:true, devel:true */

'use strict';


var map = Array.prototype.map;
var println = console.log.bind(console);
var forEach = Array.prototype.forEach;

['a', 'b', 'c'].forEach(function(x) {
	println('>', x)
})

forEach.call(['a', 'b', 'c'], function(x) {
	println('>', x)
})

function treeWalk(walker, proc, tree) {
	return walker.call(tree, function(elt) {
		if (Array.isArray(elt)) {
			return treeWalk(walker, proc, elt)
		} else {
			return proc(elt)
		}
	})
}

treeWalk(forEach, println, [[1, 2, 3], 4, 5, [6, [7, 8]]])

reversed(forEach).call([[1, 2, 3], 4, 5, [6, [7, 8]]], println)

function reverseForEach(proc) {
	this.reverse().forEach(proc)
}

treeWalk(reverseForEach, println, [[1, 2, 3], 4, 5, [6, [7, 8]]])

treeWalk(map, function(x) {return x * 5}, [[1, 2, 3], 4, 5, [6, [7, 8]]])

function reversed(walker) {
	return function(proc) {
		var lis = this.reverse()
		return walker.call(lis, proc)
	}
}

treeWalk(reversed(forEach), println, [[1, 2, 3], 4, 5, [6, [7, 8]]])


