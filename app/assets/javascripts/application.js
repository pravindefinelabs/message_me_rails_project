// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.

//= require rails-ujs
//= require jquery
//= require activestorage
//= require turbolinks
//= require semantic-ui
//= require semantic-ui/modal
//= require semantic-ui/dropdown
//= require_tree .



$(document).on("turbolinks:load", function () {
    $('.ui.dropdown').dropdown(); // Initialize dropdown every time Turbolinks loads a new page
});

$(document).on('turbolinks:load', function () {
    $('.message .close').on('click', function () {
        $(this).closest('.message').fadeOut();
    });
});



function scrollToBottom() {
    var messages = $("#messages");
    if (messages.length > 0) {
        messages.scrollTop(messages[0].scrollHeight);
    }
}

$(document).on("turbolinks:load", function () {
    $('.ui.dropdown').dropdown(); // Initialize dropdown
    $('.message .close').on('click', function () {
        $(this).closest('.message').fadeOut();
    });

    submit_message()


    scrollToBottom();
});


submit_message = function () {
    $('#message_body').on('keydown', function (e) {
        if (e.keyCode == 13) {
            $('button').click;
            setTimeout(() => {
                $(this).val('');
            }, 10)

        }
    })
}