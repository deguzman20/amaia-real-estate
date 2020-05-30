jQuery.validator.setDefaults({
  debug: true,
  success: "valid"
});

$("form").validate({
  ignore: ":hidden",
  validClass: "is-valid",
  errorClass: "is-invalid",  
  rules: {
    guest_name: {
      required: true,
    },
    email: {
      required: true,
      email: true
    },
    contact_number: {
      required: true,
      pattern: /^(09|\+639)\d{9}$/
    },
    address: {
      required: true
    },
    unit: {
      required: true
    },
    message: {
      required: true
    }
  },
  messages: {
    guest_name: {
      required: 'Please enter your guest name'
    },
    email: {
      required: 'Please enter your email',
      regex: 'Please enter a valid email'
    },
    contact_number: {
      required: 'Please enter your mobile number',
      regex: "Please enter a valid mobile number" 
    },
    address: {
      required: 'Please enter your address'
    },
    unit: {
      required: 'Please select unit'
    },
    message: {
      required: 'Please enter your message'
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
  },
  submitHandler: function(form) {
    var serialized_data = $(form).serialize();
    $.ajax({
      url: "/contact",
      method: "GET",
      dataType: "JSON",
      data: serialized_data,
      success:function(data){
        if(data == "Your inquiry was send successfuly"){
          swal('Your inquiry was successfuly send', '', 'success');
          $("input, textarea").val("").removeClass("is-valid");
          $("select").removeClass("is-valid");
        }
      },
      error:function(err){
        console.log(err);
      }
    });
  }
});
