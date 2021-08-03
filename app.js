let quizSlider = document.querySelector('.quiz_slider');
let quizSliderInner = document.querySelector('.quiz_slider_inner');

let pressed = false;
let startx;
let x;

quizSlider.addEventListener('mousedown', (e)=>{
    pressed = true;
    startx = e.offsetX - quizSliderInner.offsetLeft;
    quizSlider.style.cursor = 'grabbing';
});

quizSlider.addEventListener('mouseup', ()=>{
    quizSlider.style.cursor = 'grab';
});

window.addEventListener('mouseup', ()=>{
    pressed = false;
});

quizSlider.addEventListener('mousemove', (e)=>{
    if(pressed === true) {
        e.preventDefault();
        x = e.offsetX;
        quizSliderInner.style.left = `${x - startx}px`;
        checkBoundary();
    }
    return;
});

function checkBoundary(){
    let outer = quizSlider.getBoundingClientRect();
    let inner = quizSliderInner.getBoundingClientRect();

    if(parseInt(quizSliderInner.style.left) > 0) {
        quizSliderInner.style.left = '0px';
    } else if (inner.right < outer.right) {
        quizSliderInner.style.left = `${outer.width - inner.width}px`;
        console.log(quizSliderInner.style.left);
        console.log(outer.width);
        console.log(inner.width);
    }
}