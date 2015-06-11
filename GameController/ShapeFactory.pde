class ShapeFactory {
  PShape basicBullet;
  PShape basicPlayer;
  PShape basicEnemy;
  PShape enemyTwo;

  int basicBulletRadius;
  int basicEnemyRadius;
  int basicPlayerRadius;
  int EnemyTwoRadius;

  ShapeFactory() {
    noStroke();
    buildBasicBullet();
    buildBasicPlayer();
    buildBasicEnemy();
  }

  PShape getBasicPlayer() {
    return basicPlayer;
  }
  PShape getbasicEnemy() {
    return basicEnemy;
  }

  void buildBasicPlayer() {
    basicPlayer=createShape(GROUP);
    PShape chassis=createShape();
    chassis.beginShape();
    chassis.fill(140, 20, 20);
    chassis.vertex(0, -75);
    chassis.vertex(10, -50);
    chassis.vertex(20, -50);
    chassis.vertex(20, 30);
    chassis.vertex(10, 30);
    chassis.vertex(10, 20);
    chassis.vertex(-10, 20);
    chassis.vertex(-10, 30);
    chassis.vertex(-20, 30);
    chassis.vertex(-20, -50);
    chassis.vertex(-10, -50);
    chassis.vertex(0, -75);
    chassis.endShape();
    PShape cockpit=createShape(ELLIPSE, -10, -15, 20, 30);
    basicPlayer.addChild(chassis);
    basicPlayer.addChild(cockpit);
  }

  void buildBasicEnemy() {
    basicEnemy=createShape(GROUP);
    PShape chassis=createShape();
    chassis.beginShape();
    chassis.fill(45, 77, 43);
    chassis.vertex(0, 30);
    chassis.vertex(30, 0);
    chassis.vertex(-30, 0);
    chassis.vertex(0, 30);
    chassis.endShape();
    basicEnemy.addChild(chassis);
  }

  void buildBasicBullet() {
    basicBullet=createShape(GROUP);
    PShape chassis=createShape();
    chassis.beginShape();
    chassis.fill(255, 255, 254);
    chassis.vertex(0, 0);
    chassis.vertex(0, -30);
    chassis.vertex(30, -30);
    chassis.vertex(-30, -30);
    chassis.vertex(0, 0);
  }

  void buildEnemyTwo() {
    enemyTwo=createShape(GROUP);
    PShape chassis=createShape();
    chassis.beginShape();
    chassis.fill(45, 77, 43);
    chassis.vertex(0, 30);
    chassis.vertex(30, 0);
    chassis.vertex(-30, 0);
    chassis.vertex(0, 30);
    chassis.endShape();
    enemyTwo.addChild(chassis);
  }
}



