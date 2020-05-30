jQuery.validator.setDefaults({
  debug: true,
  success: "valid"
});

$("form[id='authentication_form']").validate({
  ignore: ":hidden",
  validClass: "is-valid",
  errorClass: "is-invalid",  
  rules: {
    email: {
      required: true,
      email: true
    },
    password: {
      required: true,
      minLength: 6
    }
  },
  messages: {
    email: {
      required: 'Please enter your email',
      regex: 'Please enter a valid email'
    },
    password: {
      required: 'Please enter your password',
      regex: 'Password was to short'
    }
  },
  wrapper: 'span',
  errorPlacement: function (error, element) {
    error.css({
      "color": "#dc3545",
      "width": "100%",
      "font-size": "80%",
      "margin-top": ".25rem"
    });
    error.insertAfter(element);
  }
});
