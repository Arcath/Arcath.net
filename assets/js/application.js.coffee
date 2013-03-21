$(document).ready(() ->
	$('.details').each(() -> 
		$(this).data("default_offset", $(this).offset().top)
	)
	
	$(window).scroll(() ->
		scrollTop = $(window).scrollTop()
		$('.details').each(() ->
			content_height = $(this).parent().children('.content').height()
			content_height = $(this).parent().children('.body').height() unless content_height
			diff = Math.max(0, ((scrollTop - $(this).data("default_offset")) + 10))
			$(this).css("margin-top", 100 + diff) if (diff + $(this).height()) < content_height
		)
	)
	
	$('a').mouseover(() ->
		$(this).css("color", "#9bf")
		$(this).animate({color:'#444'}, 1000)
	).mouseout(() ->
		$(this).animate({color:'#9bf'}, 1000)
	)
)