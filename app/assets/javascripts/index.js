/* global $ */

// when the page is ready for manipulation
$(document).on('turbolinks:load', function(){
    // when the load more link is clicked
    $('#load-more').click(function (e) {

        // prevent the default click action
        e.preventDefault();
        
        // increment the page number
        var $input = $("#page-number");
        
        $input.val( +$input.val() + 1 );
          
        
        var next_page = $('#page-number').val();

        // make an ajax call passing along our last user id
        $.ajax({

            // make a get request to the server
            type: "GET",
            // get the url from the href attribute of our link
            url: $(this).attr('href'),
            // send the last id to our rails app
            data: {
              page: next_page
            },
            // the response will be a script
            dataType: "script",

            // upon success 
            success: function () {
               
            }
        });

    });
});