
// this is an inline comment
/* this is a 
      multiline comment 
            
print("Welcome to EECS1710 F2022 saikoro");
size(250,250);
line(10,10,100,200);
ellipse(100,100,40,80);
      */
import processing.pdf.*;

float a, b, h, xpos, ypos, oxpos, oypos, t, ot, d, od;
int centerX, centerY;
boolean record;

void setup() {
  size(800, 800);
  stroke(20);
  centerX = width/2;
  centerY = height/2;
}

void draw() {
  background(255);
        size(500, 500);
      background(200,180,180);
arc(100, 100, 80, 80, 0, HALF_PI);
noFill();
arc(100, 100, 110, 110, HALF_PI, PI);
arc(100, 100, 120, 120, PI, PI+QUARTER_PI);
arc(100, 100, 130, 130, PI+QUARTER_PI, TWO_PI);

fill(255,55,155,50);
arc(100, 300, 120, 120, 0, PI+QUARTER_PI, OPEN);


arc(300, 300, 120, 120, 0, PI+QUARTER_PI, CHORD);


  if (record) {
    // Note that #### will be replaced with the frame number. Fancy!
    beginRecord(PDF, "export/a" + int(a) + "_b" + int(b) + "_h" + int(h) + ".pdf");
  }

  a = mouseX;
  b = 100;
  h = mouseY;

  for (int i=1; i<361; i+=1) {
    t = radians(i);
    ot = radians(i-1);
    d = a*t;
    od = a*ot;

    oxpos = (a-b)*cos(ot)+h*cos(od);
    oypos = (a-b)*sin(ot)+h*sin(od);

    xpos = (a-b)*cos(t)+h*cos(d);
    ypos = (a-b)*sin(t)+h*sin(d);

    line(centerX+oxpos, centerY+oypos, centerX+xpos, centerY+ypos);
  }

  if (record) {
    endRecord();
    record = true;
  }
}

void keyPressed() {
  if (key == 's') {
    record = true;
  } else {
    save("export/a" + int(a) + "_b" + int(b) + "_h" + int(h) + ".jpg");
  };
}


var seed = Math.random() * 15283;
var t;
var num, vNum;
var radius, mySize, margin;
var sizes = [];
/*
let colors = [];
let colors0 = "281914-1a1a1a-202020-242e30".split("-").map((a) => "#" + a);
let colors22 = "ffffff-171F26-4A5259-7B848C-AEB7BF".split("-").map((a) => "#" + a);
let colors23 = "D94389-4D578C-3791A6-3DF2D1-F28080".split("-").map((a) => "#" + a);
let colors24 = "F28D35-D96A29-A66641-D9B0A7-F2DAD8".split("-").map((a) => "#" + a);
let colors25 = "F2A7D8-473959-655A8C-9F8FD9-5979D9".split("-").map((a) => "#" + a);
let colors26 = "025951-012623-21BF92-73D9BC-0D0D0D".split("-").map((a) => "#" + a);
let colors7 = "fefefe-fffffb-fafdff-fef9fb-f7fcfe".split("-").map((a) => "#" + a);
let colors8 = "8c75ff-c553d2-2dfd60-2788f5-23054f-f21252-8834f1-c4dd92-184fd3-f9fee2-2E294E-541388-F1E9DA-FFD400-D90368-e9baaa-ffa07a-164555-ffe1d0-acd9e7-4596c7-6d8370-e45240-21d3a4-3303f9-cd2220-173df6-244ca8-a00360-b31016".split("-").map((a) => "#" + a);
let colors11 = "025159-3E848C-7AB8BF-C4EEF2-A67458".split("-").map((a) => "#" + a);
let colors12 = "10454F-506266-818274-A3AB78-BDE038".split("-").map((a) => "#" + a);
let colors13 = "D96690-F28DB2-F2C9E0-89C2D9-88E8F2".split("-").map((a) => "#" + a);
var color_setup1, color_setup2;
let color_bg;
let v_planet = [];
*/

void setup() {
  randomSeed(seed);
  // pixelDensity(5);
  mySize = min(windowWidth, windowHeight);
  margin = mySize / 100;
  createCanvas(windowWidth, windowHeight, WEBGL);
  color_setup1 = colors7;
  color_setup2 = random([colors22, colors23, colors24, colors25, colors26, colors11, colors12, colors13]);
  color_bg = "#202020";
  background(color_bg);
  // num = 50;
  num = int(random(30, 10));
  radius = mySize * 0.75;
  for (let a = 0; a < TAU; a += TAU / num) {
    sizes.push(random(0.1, 0.5))
  }
  t = 0;
}

void draw() {
  randomSeed(seed);
  background(color_bg);

  for (let i = 0; i < num; i++) {
    a = (TAU / num) * i;
    x = radius * sin(a + t) / random(5, 3) / 1.0;
    y = radius * cos(a + t) / random(3, 5) / 1.0;
    v_planet[i] = createVector(x, y);
  }
  push();

  for (let q = 0; q < 1 / 5; q += 2 * random(0.01, 0.02)) {
    for (let j = 0; j < 1; j++) {
      let n = noise(q*t, j*t,frameCount*0.01);
      rotateX(random(TAU)+sin(-t) / 5 + q );
      rotateY(random(TAU)+cos(t) / 5 + q );
      rotateZ(random(TAU)+sin(-t) / 5 + q );
      noStroke();
      fill(random(color_setup2));

      for (let i = 0; i < num; i += 8) {
        let d = random(radius / 2, radius / 4) / 1;
        push();
        rotateX( random(TAU)+sin(t));
        rotateY(random(TAU)+cos(-t)+n/100 );
        rotateZ( random(TAU)+2 * sin(2*t) );
        let x_plus = 1.25 * random(-d, d) / 1;
        let y_plus =  1.25 * random(-d, d) / 1;
        let z_plus =1.25 * random(-d, d) / 1;
        // circle(0,0, x_plus);
        // circle(0,0, y_plus);
        torus(z_plus,random(1),100,100);
        pop();
      }
      for (let i = 0; i < num; i += 4) {
        let d = (1.5 + sin(t)) * random(radius / 2, radius / 4);
        let x_plus = 0.5 * random(-d, d) / 1;
        let y_plus = 0.5 * random(-d, d) / 1;
        let z_plus = 0.5 * random(-d, d) / 1;
        stroke(random(color_setup2));
        strokeWeight(random(0.5));
        noFill();
        push();
        translate(v_planet[i].x + x_plus, v_planet[i].y + y_plus, z_plus);
        rotateX(random(TAU)+t);
        rotateY(random(-TAU)+t);
        rotateZ(random(PI)+t);
        sphere(random(12));
        pop();
      }
    }
  }
  pop();

  t += random(2, 1) * random(0.001, 0.005) / 1;
}


void keyTyped() {
  if (key === "s" || key === "S") {
    saveCanvas("0712_Emotional lines_12_2022", "png");
  }
}
