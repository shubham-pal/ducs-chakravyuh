$(document).keypress(function(e) {
    if (e.which == 13) {
        submitAnswer();
    }
});

function facebookLogout() {
    FB.logout(function(response) {});
    return true;
}

function submitAnswer() {
    var value = $('#input-answer').val();
    if (!value) {
        return;
    }
    $('#input-answer').val('');
    $.ajax({
        type: 'POST',
        url: 'submitanswer.php',
        data: 'value=' + value,
        success: function(response) {
            
            switch (response.trim()) {
                case 'USER_BLOCKED':
                case 'THE GAME HAS ENDED':
                case 'USER_NOT_LOGGED_IN':
                case 'USER_STATUS_UNREACHABLE':
                    window.location = "index.php";
                    break;

                case 'ERROR_CONNECTION_FAILURE':
                    alert('Oops! It seems there was a connection failure with the server. Please try again after some time.');
                    break;

                case 'ERROR_SUBMITTING_ANSWER':
                    alert('Oops! There was an error submitting your answer. Please try again after some time.');
                    break;

                case 'CORRECT_ANSWER_ERROR_UPDATING':
                    alert('Correct answer! Unfortunately, we faced an issue updating the content. Please try again. Thank you.');
                    break;

                case 'INCORRECT_ANSWER':
                    $("#wrong").removeClass('invisible');
                    $("#wrong").addClass('visible zoomIn');
                    setTimeout(function(){
                        $("#wrong").removeClass('visible zoomIn');
                        $("#wrong").addClass('invisible');
                    }, 2000);
                    break;

                case '1':
                    $("#right").removeClass('invisible');
                    $("#right").addClass('visible zoomIn');
                    updateLeaderboard();
                    setTimeout(function(){
                        $("#right").removeClass('visible zoomIn');
                        $("#right").addClass('invisible');
                    }, 2000);
                    setTimeout(getQuestion, 1000);
                    break;
            }
        }
    });
}

function clearQuestionArea() {
    $('#level-number').text('');
    $('#ques-image').css('display', 'none');
    $('#ques-audio').css('display', 'none');
    $('#ques-video').css('display', 'none');
}

function getQuestion() {
    clearHints();
    clearQuestionArea();

    $.ajax({
        type: 'GET',
        url: 'getquestion.php',
        success: function(response) {
            switch (response) {
                case 'USER_BLOCKED':
                case 'THE GAME HAS ENDED':
                case 'USER_NOT_LOGGED_IN':
                case 'USER_STATUS_UNREACHABLE':
                    window.location = "index.php";
                    break;

                case 'ERROR_RETRIEVING_QUESTION':
                    alert('Oops! We were unable to fetch your question. Please refresh your home page after some time.');
                    break;

                case 'ERROR_CONNECTION_FAILURE':
                    alert('Oops! It seems there was a connection failure with the server. Please try again after some time.');
                    break;

                case 'EVENT_COMPLETED_WINNER':
                    clearQuestionArea();
                    $('#input-answer').hide();
                    $('#button-answer').hide();
                    $('#event-completed-winner').show(500);
                    break;

                case 'EVENT_COMPLETED_CONGRATS':
                    clearQuestionArea();
                    $('#input-answer').hide();
                    $('#event-completed').show(500);
                    $('#button-answer').hide();
                    break;

                default:

                    var quesObj = JSON.parse(response);
                    // var quesObj = response;
                    $('#level-number').text(quesObj['level']);

                    switch (quesObj['type']) {
                        case 'text':
                            $('#ques-text').text(quesObj['data']).css('display', 'inline');
                            break;

                        case 'image':
                            // console.log("here");
                            $('#ques-image img').attr('src', quesObj['data']);
                            // $('#ques-image-enlarged').attr('src', quesObj['data']);
                            $('#ques-image').css('display', 'inline');
                            break;

                        case 'audio':
                            $('#ques-audio').attr('src', quesObj['data']).css('display', 'inline');
                            break;

                        case 'video':
                            $('#ques-video').attr('src', quesObj['data']).css('display', 'inline');
                            break;
                    }
                    getHints();
                    break;
            }
        }
    });
}

function getHints() {
    var refreshBtn = $('#refresh-hints');
    refreshBtn.addClass('fa-spin');

    $.ajax({
        type: 'GET',
        url: 'gethint.php',
        success: function(response) {
            switch (response) {
                case 'USER_BLOCKED':
                case 'THE GAME HAS ENDED':
                case 'USER_NOT_LOGGED_IN':
                case 'USER_STATUS_UNREACHABLE':
                    window.location = "index.php";
                    break;

                case 'ERROR_RETRIEVING_HINTS':
                    alert('Oops! It seems there was an error while retrieving your hints. Please try again after some time.');
                    break;

                case 'ERROR_CONNECTION_FAILURE':
                    alert('Oops! It seems there was a connection failure with the server. Please try again after some time.');
                    break;

                default:
                    // Remove previous hints.
                    clearHints();
                    var obj = JSON.parse(response);
                    var ul = $('#hint ul ');
                    ul.empty();
                    var i;
                    for (i = 0; i < obj.length - 1; i++) {
                        ul.append(
                            `<li class="py-2 text-2xl">
                                ${(i + 1)}. ${obj[i]}
                            </li>`
                        );
                    }

                    ul.append(
                        `<li class="mt-auto py-2 text-xl" style="color: #ff9a04;">
                            ${obj[i]}
                        </li>`
                    );
            }

            setTimeout(function() {
                refreshBtn.removeClass('fa-spin');
            }, 1000);
        }
    });
}

function clearHints() {
    $('#hint ul').empty();
}

function updateLeaderboard() {
    var refreshBtn = $('#refresh-leaderboard');
    refreshBtn.addClass('fa-spin');

    $.ajax({
        type: 'GET',
        url: 'leaderboard.php',
        success: function(response) {

            switch (response) {
                case 'USER_BLOCKED':
                case 'THE GAME HAS ENDED':
                case 'USER_NOT_LOGGED_IN':
                case 'USER_STATUS_UNREACHABLE':
                    window.location = "index.php";
                    break;

                case 'ERROR_UPDATING_LEADERBOARD':
                    alert('Oops! It seems there was an error while updating the leaderboard. Please try again after some time.');
                    break;

                case 'ERROR_CONNECTION_FAILURE':
                    alert('Oops! It seems there was a connection failure with the server. Please try again after some time.');
                    break;

                default:
                    // Clear leaderboard.
                    $('#leaderboard table > thead > tr:nth-of-type(2)').remove();
                    $('#leaderboard table > tbody > tr').remove();

                    var ranksArray = JSON.parse(response);

                    // Set current user rank status.
                    var currRankData = ranksArray[0];
                    $('#leaderboard table > thead').append(
                        `<tr class="text-center">
                            <th>${currRankData.rank}</th>
                            <th>
                                <div class="flex justify-start items-center">
                                    <img class="rounded-full" src="${currRankData.url}" alt="User picture">
                                    <span class="mx-4">${currRankData.name}</span>
                                </div>
                            </th>
                            <th>${currRankData.level}</th>
                            <th>${currRankData.points}</th>
                            <th>
                                <i class='fa fa-plus'></i>
                                ${currRankData.splitTime}
                            </th>
                        </tr>`
                        )

                    var tbody = $('#leaderboard table > tbody');

                    // Set current 1st rank user.
                    if (ranksArray[1].level > 60) {
                        tbody.append(
                            `<tr class="text-center">
                                <td data-label="Rank py-1"> ${ranksArray[1].rank}</td>
                                <td data-label="Player">
                                    <div class="flex justify-start items-center">
                                        <img class="rounded-full" src="${ranksArray[1].url}" alt="User picture">
                                        <span class="mx-4"><strong>${ranksArray[1].name} [WINNER]</strong></span>
                                    </div>
                                </td>
                                <td data-label="Level">${ranksArray[1].level}</td>
                                <td data-label="Points">${ranksArray[1].points}</td>
                                <td data-label="Split Time"><i class='fa fa-plus'></i> ${ranksArray[1].splitTime}</td>
                            </tr>`
                        );
                    } else {
                        tbody.append(
                            `<tr class="text-center">
                                <td data-label='Rank py-1'>${ranksArray[1].rank}</td>
                                <td data-label='Player'>
                                    <div class="flex justify-start items-center">
                                        <img class="rounded-full" src="${ranksArray[1].url}" alt="User picture">
                                        <span class="mx-4">${ranksArray[1].name}</span>
                                    </div>
                                </td>
                                <td data-label='Level'>${ranksArray[1].level}</td>
                                <td data-label='Points'>${ranksArray[1].points}</td>
                                <td data-label='Split Time'><i class='fa fa-plus'></i> ${ranksArray[1].splitTime}</td>
                            </tr>`
                        );
                    }


                    // Time to update the remaining leaderboard.
                    for (var i = 2; i < ranksArray.length; i++) {
                        tbody.append(
                            `<tr class="text-center">
                                <td data-label='Rank py-1'>${ranksArray[i].rank}</td>
                                <td data-label='Player'>
                                    <div class="flex justify-start items-center">
                                        <img class="rounded-full" src="${ranksArray[i].url}" alt="User picture">
                                        <span class="mx-4">${ranksArray[i].name}</span>
                                    </div>
                                </td>
                                <td data-label='Level'>${ranksArray[i].level}</td>
                                <td data-label='Points'>${ranksArray[i].points}</td>
                                <td data-label='Split Time'><i class='fa fa-plus'></i> ${ranksArray[i].splitTime}</td>
                            </tr>`
                        );
                    }
            }

            setTimeout(function() {
                refreshBtn.removeClass('fa-spin');
            }, 1000);
        }
    });
}

getQuestion();
getHints();
updateLeaderboard();