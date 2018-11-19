// AUI().ready(
// 	'liferay-sign-in-modal',
// 	function(A) {
// 		var signIn = A.one('.sign-in > a');

// 		if (signIn && signIn.getData('redirect') !== 'true') {
// 			signIn.plug(Liferay.SignInModal);
// 		}
// 	}
// );

$(".btn-search").click(function() {
    searchNode = $(".search-toggle");

    if ($(searchNode).hasClass("d-md-none")) {
        $(searchNode).removeClass("d-md-none");
        $(this).addClass("active");
        $(".search-toggle .form-control").focus();
    } else {
        $(searchNode).addClass("d-md-none");			
        $(this).removeClass("active");
    }
}
);