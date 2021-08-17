// Set progress
function setBarProgress(selector, min, max) {
    selector.animate([
        {width: min},
        {width: max}
    ], {
        duration: 500,
        delay: 250,
        fill: 'forwards'
    });
}

// Quiz form fade in
function setFormTransition(selector) {
    selector.animate(
        {opacity: 1}, 
    {
        duration: 200,
        fill: 'forwards'
    });
}

let mainPage = document.querySelector('.main-page');
if (mainPage) {
    let startBtn = document.querySelector('.hero__button');
    startBtn.addEventListener('click', function() {
    document.location = './quiz.html';
});
}

let quizPage = document.querySelector('.quiz-page');
if (quizPage) {

    let infoBtn   = document.querySelector('.quiz__information-block-button');
    let infoBlock = document.querySelector('.quiz__information');
    let typeBlock = document.querySelector('.quiz__type');
    let typePb    = document.querySelector('.quiz__type-bar-progress');
    infoBtn.addEventListener('click', function() {
        infoBlock.style.display = 'none';
        setFormTransition(typeBlock);
        typeBlock.style.display = 'block';
        setBarProgress(typePb, '25%', '50%');
    });

    let selectFilmBtn = document.querySelector('#select-film');
    let formBlock     = document.querySelector('.quiz__form');
    let formPb        = document.querySelector('.quiz__form-bar-progress');
    selectFilmBtn.addEventListener('click', function() {
        typeBlock.style.display = 'none';
        setFormTransition(formBlock);
        formBlock.style.display = 'block';
        setBarProgress(formPb, '50%', '75%');
    });

    let selectTvBtn = document.querySelector('#select-tv');
    selectTvBtn.addEventListener('click', function () {
        typeBlock.style.display = 'none';
        setFormTransition(formBlock);
        formBlock.style.display = 'block';
        setBarProgress(formPb, '50%', '75%');
    });

    // First (info) quiz page pb animation
    let infoPb = document.querySelector('.quiz__information-bar-progress');
    setBarProgress(infoPb, '0%', '25%');

    let finishBtn = document.querySelector('.slider__buttons-select-finish');
    finishBtn.addEventListener('click', function () {
        location.replace('./index.html');
    });

    let restartBtn = document.querySelector('.slider__buttons-select-again');
    restartBtn.addEventListener('click', function () {
        location.replace('./quiz.html');
    });


    // Step selecting TV series or Film
    let quizTypeButtons = document.querySelectorAll('.quiz__type-select');
    let selectedType = null;

    quizTypeButtons.forEach(function (quizTypeButton) {
        quizTypeButton.addEventListener('click', function(e) {
            selectedType = this.getAttribute('data-type');
        });
    });

    // Selecting genres
    let quizForm = document.querySelector('.quiz__form');
    let selectedGenres = [];

    quizForm.addEventListener('submit', function(e) {
        e.preventDefault();

        // Get all selected genres
        const quizGenres = document.querySelectorAll('.quiz__form-block-answer-checkbox:checked');
        
        selectedGenres = [];
        quizGenres.forEach(quizGenre => {
            selectedGenres.push(quizGenre.value);
        });

        // console.log(selectedType, selectedGenres);
        
        // Send ajax request with current data
        $.ajax({
            type: 'GET',
            url: 'app.php',
            data: {
                type: selectedType,
                genres: selectedGenres,
            },
            dataType : 'json',
            success: onFilmSubmitSuccess,
            error: onFilmSubmitError
        });
    });
}


function onFilmSubmitSuccess(response) {
    // console.log('Success');
    // console.log(response);

    let sliderContent = '';
    response.forEach(function(movie) {
        sliderContent +=`<div class="carousel-cell">`;
            sliderContent +=`<div class="slider__bg"></div>`;
            sliderContent +=`<img class="slider__img" src="./img/films/${movie.background}" alt="${movie.background}">`;
            sliderContent +=`<div class="slider__item">`;
                sliderContent +=`<h3 class="slider__item-film-name">${movie.name}</h3>`;
                sliderContent +=`<span class="slider__item-film-date">${movie.years}</span>`;
                sliderContent +=`<span class="slider__item-film-duration">${movie.time}</span>`;
                sliderContent +=`<p class="slider__item-film_rating">${movie.rating} imdb</p>`;
                sliderContent +=`<p class="slider__item-film-description">${movie.description}</p>`;
            sliderContent +=`</div>`;
        sliderContent +=`</div>`;
    });
    // console.log(sliderContent);

    let resultsBlock   = document.querySelector('.quiz__results');
    let slider         = document.querySelector('.slider');
    let carousel       = document.querySelector('.carousel');
    carousel.innerHTML = sliderContent;

    let carouselFlkty  = new Flickity(carousel);
    let resPb          = document.querySelector('.quiz__results-bar-progress');

    let nextButton     = document.querySelector('.slider__buttons-next');
    let previousButton = document.querySelector('.slider__buttons-previous');
    
    nextButton.addEventListener('click', function() {
        carouselFlkty.next(true);
    });

    previousButton.addEventListener('click', function() {
        carouselFlkty.previous(true);
    });

    let formBlock = document.querySelector('.quiz__form');
    let quizForm = document.querySelector('.quiz__form');
    quizForm.style.display = 'none';
    setFormTransition(formBlock);
    
    resultsBlock.style.display = 'block';
    setFormTransition(resultsBlock);
    slider.style.display = 'block';
    setFormTransition(slider);
    carouselFlkty.resize();
    setBarProgress(resPb, '75%', '100%');
}

function onFilmSubmitError(xhr) {
    console.log('error');
    console.log(xhr.responseText);
}