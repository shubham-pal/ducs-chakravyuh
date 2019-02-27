<nav>
    <div class="navigation shadow-xl flex flex-wrap md:flex-no-wrap justify-center bg-black text-white text-bold text-lg shadow">
        <ul class="left-nav list-reset flex-1 flex flex-wrap justify-center md:justify-end text-xl font-bold">
            <a href="#answerit"><li class="py-10 px-6 text-center hover:bg-orange hover:text-orange-darker tracking-wide">Answer it</li></a>
            <a href="#leaderboard" onclick="updateLeaderboard()"><li class="py-10 px-6 text-center hover:bg-orange hover:text-orange-darker tracking-wide">Leaderboard</li></a>
        </ul>
        <div class="brand flex items-center mx-4">
            <a href="#"><h1 class="font-display text-4xl mt-4 md:mt-0 text-homeTitle tracking-wide">Chakravyuh</h1></a>
        </div>
        <ul class="right-nav list-reset flex-1 flex flex-wrap justify-center md:justify-start text-xl font-bold">
            <a href="#" id="rules"><li class="py-10 px-6 text-center hover:bg-orange hover:text-orange-darker tracking-wide">Rules</li></a>
            <a href="logout.php" onclick="return facebookLogout();"><li class="py-10 px-6 text-center hover:bg-orange hover:text-orange-darker tracking-wide">Logout</li></a>
        </ul>
    </div>
</nav>