document.addEventListener('DOMContentLoaded', function () {

// Initialising the canvas
var canvas = document.getElementById('background');
ctx = canvas.getContext('2d');

// Setting the width and height of the canvas
canvas.width = window.innerWidth;
canvas.height = window.innerHeight * 2;

// Setting up the letters
var letters = 'ABCDEFGHIJKLMNOPQRSTUVXYZABCDEFGHIJKLMNOPQRSTUVXYZABCDEFGHIJKLMNOPQRSTUVXYZABCDEFGHIJKLMNOPQRSTUVXYZABCDEFGHIJKLMNOPQRSTUVXYZABCDEFGHIJKLMNOPQRSTUVXYZ';
letters = letters.split('');

// Setting up the columns
var fontSize = 10,
columns = canvas.width / fontSize;

// Setting up the drops
var drops = [];
for (var i = 0; i < columns; i++)
{
    drops[i] = 1;
}

// Setting up the drops for lines
var lineDrops = [];
for (var i = 0; i < columns; i++) {
    lineDrops[i] = 0;
}

// Setting up the draw function
// Setting up the draw function
function draw() {
    ctx.fillStyle = 'rgba(0, 0, 0, .1)';
    ctx.fillRect(0, 0, canvas.width, canvas.height);

    // Drawing lines
    ctx.strokeStyle = 'rgba(255, 255, 0, .2)';
    ctx.beginPath();
    for (var i = 0; i < columns; i++) {
        ctx.moveTo(i * fontSize, lineDrops[i] * fontSize);
        ctx.lineTo(i * fontSize, (lineDrops[i] + 5) * fontSize);
        lineDrops[i]++;
        if (lineDrops[i] * fontSize > canvas.height && Math.random() > .95) {
            lineDrops[i] = 0;
        }
    }
    ctx.stroke();

    // Drawing letters
    for (var i = 0; i < drops.length; i++) {
        var text = letters[Math.floor(Math.random() * letters.length)];
        ctx.fillStyle = 'orange';
        ctx.fillText(text, i * fontSize, drops[i] * fontSize);
        drops[i]++;
        if (drops[i] * fontSize > canvas.height && Math.random() > .95) {
            drops[i] = 0;
        }
    }
}


// Loop the animation
    setInterval(draw, 33);
});

