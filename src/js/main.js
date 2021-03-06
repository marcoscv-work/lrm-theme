$(document).ready(function() {
	$('#searchCollapse').on('shown.bs.collapse', function () {
		$('#navbarCollapse').collapse('hide');
		$(".search-toggle .form-control").focus();
	});

	$('#navbarCollapse').on('shown.bs.collapse', function () {
		$('#searchCollapse').collapse('hide');
	});

	$('#searchCollapse').on('show.bs.collapse', function () {
		$('.navbar-lrm .nav-item.active').addClass('out');
	});

	$('#searchCollapse').on('hide.bs.collapse', function () {
		$('.navbar-lrm .nav-item.active').removeClass('out');
	});

	$('.lfr-nav-child-toggle').click(function(event) {
		if (parseInt($(window).width()) < 768) {
			event.preventDefault();
			$(this).parents('li').toggleClass('open');
		}
	});
});