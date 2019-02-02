$(function() {

    /*    var note = $('#note'),
            ts = new Date(2012, 0, 1),
            newYear = true;

        if ((new Date()) > ts) {
            // The new year is here! Count towards something else.
            // Notice the *1000 at the end - time must be in milliseconds
            //        ts = (new Date()).getTime() + 00 * 00 * 00 * 60 * 1000;
            ts = (new Date()).getTime() + 10 * 1000;
            newYear = false;
        }*/
    ts = (new Date()).getTime() + 20 * 24 * 60 * 60 * 1000;


    function getRemaningTimeFromServerAndStartTimer() {
        $.ajax({
            url: "/timer.php",
            type: "GET",
            data: "operation=difference",
            success: function(response) {
                $('#countdown').countdown({
                    timestamp: JSON.parse(response)['value'],
                    callback: function(days, hours, minutes, seconds) {}
                });
            }
        });
    }

    getRemaningTimeFromServerAndStartTimer();

});
