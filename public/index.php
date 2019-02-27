<?php
    ini_set('display_errors', 'On');
    ini_set('display_startup_errors', 'On');
    error_reporting(E_ALL);
?>

<?php include_once("./../partials/header.php") ?>

<?php
require 'timer.php';
// print_r($timerData);
if ($timerData['status'] == 1) {
    // Event running.
    require 'checkuserstatus.php';
    if ($userStatus == null) {
        // User is logged in and not blocked.
        header('Location: /home.php');
    }
}
// load configurations
$conf = parse_ini_file('./../app.ini.php');
?>
<title>Chakravyuh</title>
</head>

<body class="relative min-h-screen flex flex-col bg-image pb-12">
    <!-- main content starts here -->
    <main class="flex-1 flex items-center">
        <div class="content flex flex-1 flex-wrap md:flex-row lg:mt-10">
            <div class="title-section flex-1 flex flex-col items-center px-1 sm:px-10">
                <div class="title-header">
                    <h1 class="title font-display sm:ml-20 sm:-mt-5 text-homeTitle md:text-title text-3xl md:text-8xl relative mt-4 tracking-wide">Chakravyuh</h1>
                    <p class="font-sans text-center text-white md:text-nav italic mb-12 md:mb-16"><strong>Online Treasure Hunt</strong></p>
                </div>
            </div>
            <div class="illustration-section flex-1 flex justify-center">
                <div class="image hidden md:flex items-center">
                    <?php 
                    // include_once('static/svg/maze.php') 
                    ?>
                </div>
                <div class="event-details flex flex-col items-center justify-around p-4 border-nav border-t border-b">
                    <div>
                        <h1 class="md:text-nav my-2 text-center mb-4 text-base text-homeTitle md:text-xl" id="gameStatus">Game has ended</h1>
                        <!-- <h3 class="font-semibold text-yellow text-center my-1">21 Febraury, 2019</h3> -->
                    </div>
                    <div class="text-lg mb-4 sm:mb-6 md:mb-8 text-center">
                        <div class="bg-green-lightest border-l-4 border-green text-green-dark p-4" role="alert" id="login-success" style="display: none;"><strong>Success!</strong> Welcome to the game.</div>
                        <div class="hidden mb-4 bg-red-lightest border-l-4 border-red text-red-dark p-4" role="alert" id="login-error"></div>
                        <div class="hidden mb-4 bg-orange-lightest border-l-4 border-orange text-orange-dark p-4" role="alert" id="login-event-info"></div>
                        <a onclick="loginWithFacebook()" class="mt-4 cursor-pointer fb-login py-3 px-6 font-bold inline-block hover:text-homeTitle"><i class="fab fa-facebook-f mr-2 font-normal"></i>Login</a>
                    </div>
                    <div>
                        <h2 class="text-center text-homeTitle md:text-title my-4">Countdown</h2>
                        <div class="flex timer text-white md:text-nav md:text-2xl md:font-bold">
                            <div>
                                <div class="p-4 border border-1 md:border-2 border-white md:border-nav mx-2" id="days"></div>
                                <p class="text-center my-2 text-xs uppercase">days</p>
                            </div>
                            <div>
                                <div class="p-4  border border-1 md:border-2 border-white md:border-nav mx-2" id="hours"></div>
                                <p class="text-center my-2 text-xs uppercase">hours</p>
                            </div>
                            <div>
                                <div class="p-4  border border-1 md:border-2 border-white md:border-nav mx-2" id="mins"></div>
                                <p class="text-center my-2 text-xs uppercase">min</p>
                            </div>
                            <div>
                                <div class="p-4  border border-1 md:border-2 border-white md:border-nav mx-2" id="secs"></div>
                                <p class="text-center my-2 text-xs uppercase">sec</p>
                            </div>
                        </div>
                    </div>
                    <div class="social-links text-2xl mt-6">
                        <a href="https://www.facebook.com/ducs.chakravyuh/" class="fb hover:text-indigo-light" target="_blank"><i class="fab text-3xl fa-facebook-f mx-2"></i></a>
                        <a href="mailto:sankalan.ducs@gmail.com" class="twitter "><i class="fas text-3xl fa-envelope mx-2"></i></a>
                    </div>
                    <div class="links mt-4 mb-4 md:mb-4 text-lg font-bold">
                        <a id="rules" href="#" class="mx-4 text-homeTitle md:text-title underline">RULES</a>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <!-- main content ends here -->

    <!-- rules -->
    <?php include_once("./../partials/rules.php") ?>

    <!-- footer starts here -->
    <?php include_once("./../partials/footer.php") ?>
    <!-- footer ends here -->
</body>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
<script type="text/javascript" src="static/js/timer.js"></script>
<script>
    (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) {
            return;
        }
        js = d.createElement(s);
        js.id = id;
        js.src = "https://connect.facebook.net/en_US/sdk.js";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));

    function handleLoginStatus(response) {
        $('#login-success').hide();
        $('#login-error').hide();
        $('#login-event-info').hide();
        if (response.status === 'connected') {
            FB.api('/me?fields=id,name,email,picture{url}', function(response) {
                $.ajax({
                    type: 'POST',
                    url: 'login.php',
                    data: 'id=' + response.id + '&name=' + response.name + '&email=' + response.email + '&pictureUrl=' + encodeURIComponent(response.picture.data.url),
                    success: function(msg) {
                        if (msg == 1) {
                            // Success.
                            $('#login-success').show(300);
                            // redirection
                            setTimeout(function() {
                                window.location = 'home.php';
                            }, 1000);
                        } else if (msg == 'USER_REG_ERROR' || msg == 'LOGIN_DATA_MISSING') {
                            $('#login-error').html("<strong>Something went wrong!</strong> Unable to login/register you. Please try again after some time.").show(300);
                        } else if (msg == 'USER_BLOCKED') {
                            $('#login-error').html("<strong>Oops!</strong> It seems you're blocked from this event.").show(300);
                        } else if (msg == 'THE GAME IS ABOUT TO BEGIN. ARE YOU READY?') {
                            $('#login-event-info').html("Hello, <strong>" + response.name + ".</strong> You've successfully registered for the event. You'll be able to login once the event is running. Stay tuned!").show(300);
                        } else if (msg == 'THE GAME HAS ENDED') {
                            $('#login-event-info').html("<strong>The event has ended.</strong> Thank you for playing!").show(300);
                        } else if (msg == 'ERROR_CONNECTION_FAILURE') {
                            alert('Oops! It seems there was a connection failure with the server. Please try again after some time.');
                        } else if (msg == 'USER_REG_CLOSE') {
                            $('#login-error').html("<strong>Registrations closed!</strong> Thank you for showing interest in the event. We look forward to seeing you next year.").show(300);
                        }
                    },
                    error: function(msg) {
                        console.log(msg);
                    }
                });
            });

        } else if (response.status === 'not_authorized') {
            $('#login-error').html('<strong>Oops!</strong> Please log into the app to continue.').show(300);
        } else {
            $('#login-error').html('<strong>Oops!</strong> Please log into Facebook to continue.').show(300);
        }
    }


    function loginWithFacebook() {
        FB.login(function(response) {
            handleLoginStatus(response);
        }, {
            scope: 'public_profile, email'
        });
    }

    window.fbAsyncInit = function() {
        // app id for analytics
        FB.init({
            appId: <?php echo "'" . $conf['appid'] . "'" ?>,
            cookie: true,
            xfbml: true,
            version: 'v3.2'
        });

        FB.AppEvents.logPageView();

    };

    if (<?php echo $timerData['status'] ?> == -1) {
        //game ended
        //show leaderboard
    }

    console.log('%cStop! You are not as smart as you think', 'color: red; font-size: 30px; font-weight: bold;');
</script>
<script>
    var modal = document.getElementById('myModal');
    var openBtn = document.getElementById('rules');
    var closeBtn = document.querySelector('.close');
    openBtn.addEventListener("click", function(event) {
        modal.classList.remove('hidden');
        modal.classList.add('flex');
    })
    closeBtn.addEventListener("click", function(event) {
        modal.classList.add('hidden');
        modal.classList.remove('flex');
    })
    window.addEventListener("click", function(event) {
        if (event.target == modal) {
            modal.classList.add('hidden');
            modal.classList.remove('flex');
        }
    });
</script>

</html> 