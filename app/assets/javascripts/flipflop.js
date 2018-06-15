// #Place all the behaviors and hooks related to the matching controller here.
// #All this logic will automatically be available in application.js.
// #You can use CoffeeScript in this file: http: coffeescript.org/


var click = []
var map, infoWindow;

function initMap() {
    map = new google.maps.Map(document.getElementById('map'), {
        center: {
            lat: 40.782427,
            lng: -73.9759587
        },
        zoom: 15
    });
    infoWindow = new google.maps.InfoWindow;

    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(function(position) {
            var pos = {
                lat: position.coords.latitude,
                lng: position.coords.longitude
            };

            new google.maps.Geocoder().geocode({
                    'latLng': pos
                },
                function(res, status) {
                    if (status == 'OK') {
                        console.log(res);

                        let zip = res[0].formatted_address.match(/,\s\w{2}\s(\d{5})/);
                        let neighborhood = res[2].address_components[0]['short_name'];
                        // $("#neighborhood").append("<b>" + neighborhood + "</b>");
                        console.log(neighborhood)
                        getZipCodeAndNeighborhood(zip[1], neighborhood);

                        // $(".startgame").on("click", function() {
                        //     $.post('/flipflop', {
                        //             matching: {
                        //                 neighborhood: neighborhood,
                        //                 zip_code: zip[0]
                        //             }
                        //         })
                        //         .done(console.log)
                        //         .error(console.log)
                        // });


                    }
                }
            );
        }, function() {
            handleLocationError(true, infoWindow, map.getCenter());
        });
    } else {
        handleLocationError(false, infoWindow, map.getCenter());
    }
}

function handleLocationError(browserHasGeolocation, infoWindow, pos) {
    infoWindow.setPosition(pos);
    infoWindow.setContent(browserHasGeolocation ?
        'Error: The Geolocation service failed.' :
        'Error: Your browser does not support geolocation.');
    infoWindow.open(map);
}

function getZipCodeAndNeighborhood(zipCode, neighborhood) {
    $('#location_zip_code').val(zipCode);
    $('#location_neighborhood').val(neighborhood);
    console.log(zipCode)

};

function hide() {
    $('#loading').show();
};

function show() {
    $(window).on('load', function() {

        // $(".flip").on('click');
        $('#loading').hide();
        $('#maincontainer').show();
        setTimeout(function() {
            // clickEvent()

            $(".flip").flip(true);
            console.log("here")
        }, 20000);


    })
};





$('document').ready(function() {
    hide();
    show();
    setTimeout(function() {
        console.log()
        clickEvent()

        console.log("here2")

    }, 40000);

    $(function() {
        $(".flip").flip({
            axis: "y", // y or x
            reverse: false, // true and false
            trigger: "manual", // click, hover or manual
            speed: 500
        });
    });



    var clickCount = 0
    var clickCountMax = 2;

    function clickEvent() {
        $('.flip').on('click', function(e) {
            $(this).off('click')
            e.preventDefault();
            $(this).find('.card').toggleClass('flipped');
            click.push($(this).find('img').attr('src'))
            clickCount++
            console.log(clickCount)
            if (clickCount == 2) {
                $('.flip').off('click');
                e.preventDefault();
                check();
                // game over; code to handle that
            }

        });

    }

});




function check() {
    for (i = 0; i < click.length; i++) {
        for (x = i + 1; x < click.length; x++) {
            if (click[i] == click[x] && i != x) {
                var userId = (click[0].match(/avatar\/([^\/]*)/)[1]);
                var userIdInt = parseInt(userId);
                click.splice(0, 2, userIdInt, userIdInt)
                console.log(userIdInt)
                console.log(click)
                jQuery.noConflict();
                $("#btnclose").on("click", function() {


                    location.reload()
                    console.log('close btn clicked on success modal')
                })

                $('#myModal').on('shown.bs.modal', function() {
                    $('#myModal').find('.modal-body-success').append('<a class="useridjs" href="users/' + userId + '">You can see the user profile now!</a>');
                    $('#matching_paired_user_id').val(userIdInt);
                    var current_user = $('#current_user_id').val()
                    var current_user_int = parseInt(current_user);
                    console.log(current_user_int)
                    $.post('/flipflop', {
                            matching: {
                                user_id: current_user_int,
                                paired_user_id: userIdInt
                            }
                        })
                        .done(console.log)
                        .error(console.log)
                });
                setTimeout(function() {
                    $('#myModal').modal({ backdrop: 'static', keyboard: false, show: true });
                    console.log("You have a match!");
                }, 1000);
            } else {
                $("#btnclosefail").on("click", function() {
                    location.reload()
                    console.log('close btn click on fail modal')
                })
                setTimeout(function() {
                    $('#myModalFail').modal({ backdrop: 'static', keyboard: false, show: true });
                    console.log('Try again :(');
                }, 1000);
            }
        }
    }

}