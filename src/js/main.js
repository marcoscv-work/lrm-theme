$('#collapseExample').on('shown.bs.collapse', function () {
	$('#navbarSupportedContent').collapse('hide');
	nodeB = $(".search-toggle .form-control");
	$(nodeB).focus();
})

$('#navbarSupportedContent').on('shown.bs.collapse', function () {
	$('#collapseExample').collapse('hide');
})