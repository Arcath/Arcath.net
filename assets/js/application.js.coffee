$(document).ready(() ->
	$('a').mouseover(() ->
		$(this).css("color", "#9bf")
		$(this).animate({color:'#444'}, 1000)
	).mouseout(() ->
		$(this).animate({color:'#9bf'}, 1000)
	)
)