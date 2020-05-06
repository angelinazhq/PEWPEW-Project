class Player extends GameObject {

  Player() {
    super(width/2, height/2, 20, 1, yellow);
  }

  // void show and boolean isDead is in the superclass, GameObject

  void act() {// override
    super.act();
    //respond to key presses
    if (wkey) vy = -4;
    if (akey) vx = -4;
    if (skey) vy = 4;
    if (dkey) vx = 4;
    //stop if player lets go of keys
    if (!wkey && !skey) vy = 0;
    if (!akey && !dkey) vx = 0;
    //keep pkayer on screen
    if (x < 0) x = 0;
    if (x > width) x = width;
    if (y < 0) y = 0;
    if (y > height) y = height;
    //shooting
    shoot();
  }

  void shoot () {
    if(mousePressed) {
      objects.add(new Bullet());
  }
}
}
