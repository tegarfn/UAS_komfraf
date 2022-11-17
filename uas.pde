float r;

void setup() {
    size(1000, 1000);
    rectMode(CENTER);
}

void draw() {
    background(209, 244, 250);
    town();
    noFill();
    translate(width/2, height/2);

    stroke(0);
    pushMatrix();
        rotate(radians(r));
        for(int i = 0; i <= 2; i++){
            cart(1,60*i);
            cart(-1,60*i);
            rotate(radians(60));
        }
    popMatrix();

    pushMatrix();
        root();
    popMatrix();

    strokeWeight(7);
    stroke(25,40,150);
    for(int i = 100; i <= 700; i += 300){
        circle(0,0,i);
    }

    noFill();
    strokeWeight(20);
    strokeJoin(ROUND);
    stroke(5,20,80);
    triangle(0,0,-250,500,250,500);

    noStroke();
    fill(100,70,50);
    rect(0,480,550,100,20,20,0,0);
    strokeWeight(7);
    stroke(50,30,20);
    for(int i = -250; i <= 250; i += 25){
        line(i,400,i,430);
    }


    r += 0.2;
}

void cart(int loc, int rot){
    pushMatrix();
        translate(350*loc,0);
        rotate(radians(-rot));
        strokeWeight(2);
        circle(0,0,15);
        rotate(radians(-r));
        fill(200,0,0);
        rect(0, 37.5, 120, 75, 30,30,20,20);
        fill(25,150,250);
        rect(0, 27.5, 100, 30,15,15,0,0);
        noFill();
        rect(0, 42.5, 30, 62.5);
    popMatrix();
}

void root(){
    int i = 0;
    rotate(radians(r));
    while (i <= 360) {
        rotate(radians(30));
        line(-350, 0, 350, 0);
        i += 30;
    }
}

void town(){
    noStroke();
    fill(83, 205, 226);
    beginShape();
    vertex(0,1000);
    vertex(0,800);
    vertex(100,800);
    vertex(100,880);
    vertex(150,880);
    vertex(150,780);
    vertex(180,780);
    vertex(180,610);
    vertex(250,610);
    vertex(250,625);
    vertex(350,625);
    vertex(350,700);
    vertex(425,700);
    vertex(425,500);
    vertex(500,600);
    vertex(500,650);
    vertex(575,650);
    vertex(575,620);
    vertex(625,620);
    vertex(625,680);
    vertex(750,680);
    vertex(750,800);
    vertex(800,800);
    vertex(800,770);
    vertex(850,770);
    vertex(850,760);
    vertex(900,760);
    vertex(900,850);
    vertex(900,650);
    vertex(920,650);
    vertex(920,700);
    vertex(950,700);
    vertex(950,800);
    vertex(1000,800);
    vertex(1000,1000);
    endShape(CLOSE);
}


