$(document).ready(function() {
	
	// $(".left-panel").customScrollbar({preventDefaultScroll: true});
	// Проверка формы регистрации
	$('.button--registration').on('click', function(e){
		e.preventDefault();
		input = $('.registration-page-form__row').children('input');
		mail = $('.registration-page-form__row').children('input[type=email]');
		password = $('.registration-page-form__row').children('input[type=password]');
	var pattern = /^([a-z0-9_\.-])+@[a-z0-9-]+\.([a-z]{2,4}\.)?[a-z]{2,4}$/i;
		if ( mail.val() == '' && password.val() == '') {
			$('.notify').fadeIn();
			$('.notify2').fadeIn();
			$('.notify').text('Введите email');
			$('.notify2').text('Введите пароль');
			mail.focus(function(event) {
				$('.notify').fadeOut(0);
			});
			password.focus(function(event) {
				$('.notify2').fadeOut(0);
			});
		} else if ( mail.val() == '') {
			$('.notify').fadeIn(); 
			$('.notify').text('Введите email');
			mail.focus(function(event) {
				$('.notify').fadeOut(0);
			});
		} else if(!pattern.test(mail.val())){
			if ( password.val() == '' ) {
				$('.notify').fadeIn();
				$('.notify2').fadeIn();
				$('.notify').text('Введите корректный email');
				$('.notify2').text('Введите пароль');
				mail.focus(function(event) {
					$('.notify').fadeOut(0);
				});
				password.focus(function(event) {
					$('.notify2').fadeOut(0);
				});
			} else{		
				$('.notify').fadeIn();
				$('.notify').text('Введите корректный email');
				mail.focus(function(event) {
					$('.notify').fadeOut(0);
				});
			}
		} else if ( password.val() == '' ) {
			$('.notify2').fadeIn();
			$('.notify2').text('Введите пароль');
			password.focus(function(event) {
				$('.notify2').fadeOut(0);
			});
		} else {
			// переходим на страницу профиля
			$('#registration-form').submit();
		}
	});

	// Проверка формы логина
	$('.button--login').on('click', function(e){
		e.preventDefault();
		input = $('.login-page-form__row').children('input');
		mail = $('.login-page-form__row').children('input[type=email]');
		password = $('.login-page-form__row').children('input[type=password]');
		var pattern = /^([a-z0-9_\.-])+@[a-z0-9-]+\.([a-z]{2,4}\.)?[a-z]{2,4}$/i;

		if ( mail.val() == '' && password.val() == '') {
			$('.notify').fadeIn();
			$('.notify2').fadeIn();
			$('.notify').text('Введите email');
			$('.notify2').text('Введите пароль');
			mail.focus(function(event) {
				$('.notify').fadeOut(0);
			});
			password.focus(function(event) {
				$('.notify2').fadeOut(0);
			});

		} else if ( mail.val() == '') {
			$('.notify').fadeIn();
			$('.notify').text('Введите email');
			mail.focus(function(event) {
				$('.notify').fadeOut(0);
			});
		} else if(!pattern.test(mail.val())){
			if ( password.val() == '' ) {
				$('.notify').fadeIn();
				$('.notify2').fadeIn();
				$('.notify').text('Введите корректный email');
				$('.notify2').text('Введите пароль');
				mail.focus(function(event) {
					$('.notify').fadeOut(0);
				});
				password.focus(function(event) {
					$('.notify2').fadeOut(0);
				});
			} else{		
				$('.notify').fadeIn();
				$('.notify').text('Введите корректный email');
				mail.focus(function(event) {
					$('.notify').fadeOut(0);
				});
			}
		} else if ( password.val() == '' ) {
			$('.notify2').fadeIn();
			$('.notify2').text('Введите пароль');
			password.focus(function(event) {
				$('.notify2').fadeOut(0);
			});
		} else {
			// переходим на страницу профиля
			$('#login-form').submit();
		}
	});

	// Проверка формы восстановления пароля
	$('.button--lost').on('click', function(e){
		e.preventDefault();
		input = $('.login-page-form__row').children('input');
		mail = $('.login-page-form__row').children('input[type=email]');
		var pattern = /^([a-z0-9_\.-])+@[a-z0-9-]+\.([a-z]{2,4}\.)?[a-z]{2,4}$/i;
		if ( mail.val() == '') {
			$('.notify').fadeIn();
			$('.notify').text('Введите email');
			mail.focus(function(event) {
				$('.notify').fadeOut(0);
			});
		} else if(!pattern.test(mail.val())){
			$('.notify').fadeIn();
			$('.notify').text('Введите корректный email');
			mail.focus(function(event) {
				$('.notify').fadeOut(0);
			});
		} else {
			// переходим на страницу профиля
			$('#lost-form').submit();
		}
	});

	// Устанавливаем новый пароль
	$('.button--set-new-password').on('click', function(e){
		e.preventDefault();
		input = $('.login-page-form__row').children('input');
		password = $('.login-page-form__row').children('input[type=password]');
		if ( password.val() == '') {
			$('.notify').fadeIn();
			$('.notify').text('Введите пароль');
			input.focus(function(event) {
				$('.notify').fadeOut(0);
			});
		} else {
			// переходим на страницу профиля
			$('#setNewPasswordForm').submit();
		}
	});



//Map block

function initMap() {

	var zelenograd = {lat: 55.987364, lng: 37.195591};

	myMap = new google.maps.Map(document.getElementById('map'), {

		center: zelenograd,
		zoom: 13,
		styles: [
		    {
		        "featureType": "administrative",
		        "elementType": "labels.text.fill",
		        "stylers": [
		            {
		                "color": "#444444"
		            }
		        ]
		    },
		    {
		        "featureType": "landscape",
		        "elementType": "all",
		        "stylers": [
		            {
		                "color": "#f2f2f2"
		            }
		        ]
		    },
		    {
		        "featureType": "poi",
		        "elementType": "all",
		        "stylers": [
		            {
		                "visibility": "off"
		            }
		        ]
		    },
		    {
		        "featureType": "road",
		        "elementType": "all",
		        "stylers": [
		            {
		                "saturation": -100
		            },
		            {
		                "lightness": 45
		            }
		        ]
		    },
		    {
		        "featureType": "road.highway",
		        "elementType": "all",
		        "stylers": [
		            {
		                "visibility": "simplified"
		            }
		        ]
		    },
		    {
		        "featureType": "road.arterial",
		        "elementType": "labels.icon",
		        "stylers": [
		            {
		                "visibility": "off"
		            }
		        ]
		    },
		    {
		        "featureType": "transit",
		        "elementType": "all",
		        "stylers": [
		            {
		                "visibility": "off"
		            }
		        ]
		    },
		    {
		        "featureType": "water",
		        "elementType": "all",
		        "stylers": [
		            {
		                "color": "#46bcec"
		            },
		            {
		                "visibility": "on"
		            }
		        ]
		    }
		]
	});	//map

	//Markers

	var markerZelenograd = new google.maps.Marker({

		position: zelenograd,

		map: myMap,

		title: 'Зеленоград',

		icon: '../img/map-icon/location-icon.png'

	});
}
});