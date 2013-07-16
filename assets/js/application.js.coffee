$(document).ready(() ->
	$('.details').each(() -> 
		$(this).data("default_offset", $(this).offset().top)
	)
	
	$('.blue_highlight').each(() ->
		$(this).css("position", "absolute")
		$(this).css("left", "0px")
		$(this).css("top", ($(this).parent().children(".details").data("default_offset") - 10) + "px")
		content_height = $(this).parent().children('.content').height()
		content_height = $(this).parent().children('.body').height() unless content_height
		$(this).css("height", content_height)
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