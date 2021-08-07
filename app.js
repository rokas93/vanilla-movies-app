// results slider
let nextButton = document.querySelector('.slider__buttons-next');
let previousButton = document.querySelector('.slider__buttons-previous');
if (previousButton && nextButton) {
    let flkty = new Flickity('.carousel');

    nextButton.addEventListener('click', function() {
        flkty.next(true);
    });

    previousButton.addEventListener('click', function() {
        flkty.previous(true);
    });
}

// changing favicon dynamically
let link = document.querySelector("link[rel~='icon']");
if (!link) {
    link = document.createElement('link');
    link.rel = 'icon';
    document.getElementsByTagName('head')[0].appendChild(link);
}
link.href = './favicon.ico';

// quiz form
let startBtn = document.querySelector('.hero__button');
if (startBtn) {
    startBtn.addEventListener('click', function() {
        document.location = './quiz.html';
    });
}

let infoBtn = document.querySelector('.quiz__information-block-button');
let infoBlock = document.querySelector('.quiz__information');
let typeBlock = document.querySelector('.quiz__type');
let typePb = document.querySelector('.quiz__type-bar-progress');
if (infoBtn) {
    infoBtn.addEventListener('click', function() {
        infoBlock.style.display = 'none';
        typeBlock.style.display = 'block';

        typePb.animate([
            {width: '25%'},
            {width: '50%'}
        ], 
            {duration: 500}
        );
    });
}

let selectFilmBtn = document.querySelector('#select-film');
let formBlock = document.querySelector('.quiz__form');
let formPb = document.querySelector('.quiz__form-bar-progress');
if (selectFilmBtn) {
    selectFilmBtn.addEventListener('click', function() {
        typeBlock.style.display = 'none';
        formBlock.style.display = 'block';

        formPb.animate([
            {width: '50%'},
            {width: '75%'}
        ], 
            {duration: 500}
        );
    });
}

let selectTvBtn = document.querySelector('#select-tv');
if (selectTvBtn) {
    selectTvBtn.addEventListener('click', function () {
        typeBlock.style.display = 'none';
        formBlock.style.display = 'block';

        formPb.animate([
            {width: '50%'},
            {width: '75%'}
        ], 
            {duration: 500}
        );
    });
}

let selectGenreBtn = document.querySelector('.quiz__form-button');
if (selectGenreBtn) {
    selectGenreBtn.addEventListener('click', function () {
        location.replace('./results.html');
    });
}

// first (results) quiz page pb animation
let infoPb = document.querySelector('.quiz__information-bar-progress');
if (infoPb) {
    infoPb.animate([
        {width: '0%'},
        {width: '25%'}
    ], 
        {duration: 500}
    );
}

// last (info) quiz page pb animation
let resPb = document.querySelector('.quiz__results-bar-progress');
if (resPb) {
    resPb.animate([
        {width: '75%'},
        {width: '100%'}
    ], 
        {duration: 500}
    );
}

let finishBtn = document.querySelector('.slider__buttons-select-finish');
if (finishBtn) {
    finishBtn.addEventListener('click', function () {
        location.replace('./index.html');
    });
}

let restartBtn = document.querySelector('.slider__buttons-select-again');
if (restartBtn) {
    restartBtn.addEventListener('click', function () {
        location.replace('./quiz.html');
    });
}