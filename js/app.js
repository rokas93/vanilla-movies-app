// set progress
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

// quiz form fade in
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

    let flkty          = new Flickity('.carousel');
        nextButton     = document.querySelector('.slider__buttons-next');
        previousButton = document.querySelector('.slider__buttons-previous');
    nextButton.addEventListener('click', function() {
        flkty.next(true);
    });
    previousButton.addEventListener('click', function() {
        flkty.previous(true);
    });

    let infoBtn   = document.querySelector('.quiz__information-block-button');
        infoBlock = document.querySelector('.quiz__information');
        typeBlock = document.querySelector('.quiz__type');
        typePb    = document.querySelector('.quiz__type-bar-progress');
    infoBtn.addEventListener('click', function() {
        infoBlock.style.display = 'none';
        setFormTransition(typeBlock);
        typeBlock.style.display = 'block';
        setBarProgress(typePb, '25%', '50%');
    });

    let selectFilmBtn = document.querySelector('#select-film');
        formBlock     = document.querySelector('.quiz__form');
        formPb        = document.querySelector('.quiz__form-bar-progress');
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

    let selectGenreBtn = document.querySelector('.quiz__form-button');
        slider         = document.querySelector('.slider');
        resultsBlock   = document.querySelector('.quiz__results');
        resPb          = document.querySelector('.quiz__results-bar-progress');
        carousel       = document.querySelector('.carousel');
        carouselFlkty  = new Flickity(carousel);
    selectGenreBtn.addEventListener('click', function () {
        formBlock.style.display = 'none';
        setFormTransition(formBlock);
        resultsBlock.style.display = 'block';
        setFormTransition(resultsBlock);
        slider.style.display = 'block';
        setFormTransition(slider);
        carouselFlkty.resize();
        setBarProgress(resPb, '75%', '100%');
    });

    // first (info) quiz page pb animation
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
}