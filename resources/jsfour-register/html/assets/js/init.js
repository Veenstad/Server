$(document).ready(function(){
  $('select').formSelect();

  // Date of birth picker
  $('#dateofbirth').val('1990-01-01');
  $('.datepicker').datepicker({
    defaultDate : new Date(1990, 0, 1),
    setDefaultDate : true,
    yearRange: 100,
    format : 'yyyy-mm-dd',
    i18n : {
      cancel: 'annuleren',
      done: 'OK',
      clear: 'opnieuw',
      months: [ 'Januari', 'Februari', 'Maart', 'April', 'Mei', 'Juni', 'Juli', 'Augustus', 'September', 'Oktober', 'November', 'December' ],
      monthsShort: [ 'Jan', 'Feb', 'Mar', 'Apr', 'Mei', 'Jun', 'Jul', 'Aug', 'Sep', 'Okt', 'Nov', 'Dec' ],
      weekdays: [ 'Zondag', 'Maandag', 'Dinsdag', 'Woensdag', 'Donderdag', 'Vrijdag', 'Zaterdag' ],
      weekdaysShort: [ 'Zo', 'Ma', 'Di', 'Wo', 'Do', 'Vr', 'Za' ],
      weekdaysLetter: [ 'Zo', 'Ma', 'Di', 'Wo', 'Do', 'Vr', 'Za' ],
    },
  });

  // LUA event listener
  window.addEventListener('message', function(event) {
    if (event.data.action == 'open') {
      $('#wrapper').show();
    } else if (event.data.action == 'close') {
      $('#wrapper').hide();
    }
  });

  // Register button
  $('#register').click(function() {
    if ($('#lastname').val() != '' && $('#firstname').val() != '' && $('#dateofbirth').val() != '' && $('#sex select').val() != null && $('#height').val() != '') {
      if ($('#height').val().length > 1 && $('#dateofbirth').val().length == 10) {
        var dob = $('#dateofbirth').val();

        $.post('http://jsfour-register/register', JSON.stringify({
          firstname: $("#firstname").val(),
          lastname: $("#lastname").val(),
          dateofbirth: $("#dateofbirth").val(),
          sex: $("#sex select").val(),
          height: $("#height").val()
        }));
      }
    }
  });

  // Disable space on the input
  $("form").on({
	  keydown: function(e) {
	    if (e.which === 32)
	      return false;
	  },
	});

  // Disable form submit
  $("form").submit(function() {
		return false;
	});
});
