<?php include_once("static/_partials/header.php") ?>
<?php
require 'timer.php';

if ($timerData['status'] != 1) {
    header('Location: index.php');
}

require 'checkuserstatus.php';

if ($userStatus != null) {
    header('Location: index.php');
}
?>
    <title>Home | Chakravyuh</title>
</head>
<body class="min-h-screen flex flex-col bg-back">
    <!-- navigation starts here -->
    <?php include_once("static/_partials/nav.php")?>
    <!-- navigation ends here -->

    <!-- main content starts here -->
        <main class="flex-1 flex flex-col">
            <div class="cover mt-2 mx-0 sm:m-0">
                <img class='w-full' src ="static/img/banner.png" />
            </div>


            <!-- message-box -->
            <!-- <div class="message-box bg-red h-16 flex items-center pl-4 mx-16 my-8">
                <p class="text-white font-bold text-lg">your message comes here</p>
            </div> -->


            <div id = "answerit" class="question-section flex mt-8 mb-4 sm:mb-10 flex-col md:flex-row">
                <div class="question px-2  w-full my-8 md:w-1/2 md:px-8 md:border-r md:py-4">
                    <h1 class="text-homeTitle text-center"><i class="fas fa-question mr-4"></i>QUESTION: <span id="level-number"></span></h1>
                    <div class="flex justify-center items-center">    
                        <div id = "wrong" class = "invisible animated">
                            <i class="fa fa-thumbs-down text-8xl text-red"></i>
                        </div>
                        <div class="image-container flex mt-10 lg:mx-8 flex-wrap  justify-center">
                            <div id = "ques-image" class="mt-2 mx-1">
                                <img src ="" class="max-w-xs"/>
                            </div>
                            <p id="ques-text" style="display: none;"></p>
                            <audio controls id="ques-audio" style="display: none;">
                                Your browser does not support the audio element.
                            </audio>
                            <video controls id="ques-video" style="display: none;">
                                Your browser does not support HTML5 video.
                            </video>
                        </div>
                        <div id = "right" class = "invisible animated">
                            <i class="fa fa-thumbs-up text-8xl text-green"></i>
                        </div>
                    </div>
                    <div class="flex justify-center">
                        <div class="mt-12 pb-4 flex-col md:flex-row items-center">
                            <input id = "input-answer" type="text" class="p-2 w-full md:w-64 focus:border focus:border-yellow" placeholder="Enter your answer">
                            <div class="flex justify-around mt-4">
                                <button id = "button-answer" type="button" class="p-2 bg-title text-white" onclick="submitAnswer()" value="submit">submit </button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="hints flex flex-col items-center px-8 my-8 md:py-4 w-full md:w-1/2">
                    <h1 class="text-homeTitle mb-8">
                        <i class="fas fa-shoe-prints mr-4"></i>
                        HINTS
                        <i class="fa fa-sync-alt text-white ml-4 cursor-pointer" id="refresh-hints" onclick="getHints()" data-toggle="tooltip" title="Refresh" data-placement="top"></i>
                    </h1>
                    <div id = "hint" class="flex justify-center">
                        <ul class="list-reset flex-col text-white">

                        </ul>
                    </div>
                </div>
            </div>


            <div class="leaderboard px-16 mb-16">
                <h1 class="text-homeTitle my-5">Leaderboard<i class="fa fa-sync-alt text-white ml-4 cursor-pointer" id="refresh-leaderboard" onclick="updateLeaderboard(ttg)" data-toggle="tooltip" title="Refresh" data-placement="bottom"></i></h1>
                <div id = "leaderboard" class="w-full flex justify-center">
                    <table class="w-full">
                        <thead class="w-full">
                            <tr class="text-center border border-4">
                                <th class="py-4">Rank</th>
                                <th class="py-4">Player</th>
                                <th class="py-4">Level</th>
                                <th class="py-4">Points</th>
                                <th class="py-4">Split Time</th>
                            </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
                </div>
            </div>
        </main>
    <!-- main content ends here -->

    <!-- rules -->
    <?php include_once("static/_partials/rules.php") ?>

    <!-- footer starts here -->
    <div class=" xl:mt-0 bg-nav">
        <div class="flex text-center flex-col sm:flex-row">
            <div class="footer-card flex-col flex items-center">
                <h2 class="m-5 text-homeTitle">Location</h2>
                <p class="m-4 text-white lg:text-left leading-normal" >
                    Department of Computer Science<br>
                    Faculty of Mathematical Sciences<br>
                    University of Delhi<br>
                    Delhi-110007
                </p>
            </div>
            <div class="footer-card">
                <h2 class="m-5 text-homeTitle">Around the web</h2>
                <div class="social-links text-2xl">
                    <a href="https://www.facebook.com/ducs.chakravyuh/" class="fb hover:text-indigo-light" target="_blank"><i class="fab fa-facebook-f mx-2"></i></a>
                    <a href="mailto:sankalan2019.ducs@gmail.com" class="twitter "><i class="fas fa-envelope mx-2"></i></a>
                </div>
            </div>
            <div class="footer-card">
                <h2 class="m-5 text-homeTitle">Contact us</h2>
                <p class="text-white leading-normal">Avinash : 9555138871</p>
                <p class="text-white leading-normal">Krishna : 9935590973</p>
            </div>
        </div>
        <?php include_once("static/_partials/footer.php") ?>
    </div>
    <!-- footer ends here -->
</body>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
<script type="text/javascript" src="static/js/game.js"></script>
<script>
    var modal = document.getElementById('myModal');
    var openBtn = document.getElementById('rules');
    var closeBtn =document.querySelector('.close');
    openBtn.addEventListener("click", function(event){
        modal.classList.remove('hidden');
        modal.classList.add('flex');
    })
    closeBtn.addEventListener("click", function(event){
        modal.classList.add('hidden');
        modal.classList.remove('flex');
    })
    window.addEventListener("click", function(event){
        if(event.target == modal){
            modal.classList.add('hidden');
            modal.classList.remove('flex');
        }
    });
</script>
</html>