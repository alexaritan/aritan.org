function swapPhoto(source, element){
	$(".cover-image").attr("src", source);
	$(".dog").removeClass("active");
	$(element).addClass("active");
}