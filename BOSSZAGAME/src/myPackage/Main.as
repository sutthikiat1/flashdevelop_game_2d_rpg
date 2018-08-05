package myPackage
{
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.events.TimerEvent;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.utils.Timer;
	import mx.core.FlexMovieClip;
	
	/**
	 * ...
	 * @author BOSSZA
	 */
	public class Main extends Sprite 
	{
		public var BG:Backgroud = new Backgroud();
		public var textureBG1:Backgroud = new Backgroud();
		public var textureBG2:Backgroud = new Backgroud();
		public var textureBG3:Backgroud = new Backgroud();
		public var textureBG4:Backgroud = new Backgroud();
		public var textureBG5:Backgroud = new Backgroud();
		public var textureBG6:Backgroud = new Backgroud();
		public var textureBG7:Backgroud = new Backgroud();
		public var textureBgGameOver:Backgroud = new Backgroud();
		
		public var Player1:Player = new Player();
		public var Player2:Player = new Player();
		public var Player3:Player = new Player();
		
		public var Playerattack1:Player = new Player();
		public var Playerattack2:Player = new Player();
		
		public var BackPlayer1:Player = new Player();
		public var BackPlayer2:Player = new Player();
		public var BackPlayer3:Player = new Player();
		
		public var BackAttack1:Player = new Player();
		public var BackAttack2:Player = new Player();
		
		public var jelly:Player = new Player();
		
		public var  Monster1:Monster = new Monster();
		public var  Monster2:Monster;
		
		public var DeathMonster1:Monster = new Monster();
		public var DeathMonster2:Monster = new Monster();
		
		public var BossMonster:Monster = new Monster();
		public var BossMonster2:Monster = new Monster();
		public var BossMonsterDeath1:Monster = new Monster();
		public var BossMonsterDeath2:Monster = new Monster();
		
		public var time:Timer = new Timer(500);
		public var check:int = 0;
		public var checkA:int = 0;
		public var checkSpaceX:int = 0;
		public var checkSpaceZ:int = 0;
		public var keyA:Boolean = false;
		public var keyD:Boolean = false;
		public var checkwalk:int = 0;
		public var checkwalkBoss:int = 600;
		public var PlayerArry:Array = [] ;
		public var BossArry:Array = [] ;
		public var jump:Boolean = false;
		public var speed:Number;
		public var spacebar:Boolean = false;
		public var numtime1:Number = 0;
		public var numtime2:Number = 0;
		public var numtime3:Number = 0;
		public var statusAttack:Boolean = false;
		public var checkplayer:Boolean = false;
		public var checkBackplayer:Boolean = false;
		public var hpbar:TextField = new TextField();
		public var numboss:Number = 0;
		public var checkBoss:Number = 0;
		public var statusBoss:Number = 0;
		public var checkAttackBoss:Number = 0;
		public var checkDamageBoss:Number = 0;
		public var checkDeathBoss:Number = 0;
		public var AttackBoss:Boolean = false;
		public var BossDeath:Boolean = false;
		public var stop:Boolean = false;
		
		
		public function Main() 
		{
			BG.addBg();
			
			addChild(BG);
			
			textureBG1.y = 500;
			textureBG1.addBg1();
			textureBG2.y = 500;
			textureBG2.x = 100;
			textureBG2.addBg1();
			textureBG3.y = 500;
			textureBG3.x = 200;
			textureBG3.addBg1();
			textureBG4.y = 500;
			textureBG4.x = 570;
			textureBG4.addBg1();
			textureBG5.y = 500;
			textureBG5.x = 680;
			textureBG5.addBg1()
			
			textureBG6.y = 500;
			textureBG6.x = 325;
			textureBG6.addBg1();
			textureBG7.y = 500;
			textureBG7.x = 450;
			textureBG7.addBg1();
			
			addChild(jelly);
			jelly.addBgJelly();
			jelly.x = 350;
			jelly.y = 387;
			
			Player1.y = 388;
			Player1.x = 10;
			Player1.addPlayer1();
			PlayerArry.push(Player1);
						
			Player2.y = Player1.y;
			Player2.x = Player2.x;
			Player2.addPlayerWalk1();
			
			Player3.y = Player2.y;
			Player3.x = Player2.x;
			Player3.addPlayerWalk2();
			
			BackPlayer1.y = Player1.y;
			BackPlayer1.x = Player1.x;
			BackPlayer1.addBackPlayer1();
			
			BackPlayer2.y = BackPlayer1.y;
			BackPlayer2.x = BackPlayer1.x;
			BackPlayer2.addBackPlayerWalk1();
			
			BackPlayer3.y = BackPlayer2.y;
			BackPlayer3.x = BackPlayer2.x;
			BackPlayer3.addBackPlayerWalk2();
			
			Playerattack1.y = Player1.y;
			Playerattack1.x = Player1.x;
			Playerattack1.addBgAttackPlayer1();
			
			Playerattack2.y = Player1.y;
			Playerattack2.x = Player1.x;
			Playerattack2.addBgAttackPlayer2();
			
			BackAttack1.y = Player1.y;
			BackAttack1.x = Player1.x;
			BackAttack1.addBackBgAttackPlayer1();
			
			BackAttack2.y = BackAttack1.y;
			BackAttack2.x = BackAttack1.x;
			BackAttack2.addBackBgAttackPlayer2();
			
			BossMonster.x = checkwalkBoss;
			BossMonster.y = 390;
			BossMonster.addBossMonster();
			
			BossMonster2.x = BossMonster.x;
			BossMonster2.y = BossMonster.y;
			BossMonster2.addBossMonster1();
			
			BossMonsterDeath1.x = BossMonster2.x;
			BossMonsterDeath1.y = BossMonster2.y + 10;
			BossMonsterDeath1.addBossMonsterDeath1();
			
			BossMonsterDeath2.x = BossMonsterDeath1.x;
			BossMonsterDeath2.y = BossMonsterDeath1.y - 10;
			BossMonsterDeath2.addBossMonsterDeath2();
			

			
			hpbar.width = 100;
			hpbar.height = 15;
			hpbar.border = true;
			hpbar.borderColor = 000000;
			hpbar.background = true;
			hpbar.backgroundColor = 0xFF99FF;
			hpbar.x = 330;
			hpbar.y = 360;

			addChild(hpbar);

			
			addChild(Player1);
			addChild(textureBG1);
			addChild(textureBG2);
			addChild(textureBG3);
			addChild(textureBG4);
			addChild(textureBG5);
			addChild(textureBG7);
			addChild(textureBG6);
			
			time.addEventListener(TimerEvent.TIMER, timeStar);
			time.start();
			
			stage.addEventListener(KeyboardEvent.KEY_DOWN, keyDown);
			stage.addEventListener(KeyboardEvent.KEY_UP, keyUp);
			stage.addEventListener(Event.ENTER_FRAME, onloop);
		}
		
		public function timeStar(event:TimerEvent):void {
			if (numboss >= 8 && checkBoss == 0) {
				if (statusBoss == 1) {
					removeChild(BossArry[0]);
					BossArry.pop();
					BossArry.push(BossMonster);
					addChild(BossMonster);
					BossMonster.x = checkwalkBoss -8;
					checkwalkBoss = BossMonster.x ;
				} else {
					numtime2 = 0;
					BossArry.push(BossMonster);
					addChild(BossMonster);
					BossMonster.x = checkwalkBoss -8;
					checkwalkBoss = BossMonster.x ;
				}
				if (BossMonster.x  <= 360) {
					BossMonster.x = 360;
				}
				if (BossMonster.hitTestObject(jelly)){
					if (parent.contains(jelly)){
						hpbar.width = hpbar.width -20;
						if (hpbar.width <= 0) {
							removeChildren();
							addChild(textureBgGameOver);
							textureBgGameOver.addBgGameOver();
							stop = true;
							time.stop();
						}
						
					}
				} else if (BossMonster.hitTestObject(Playerattack2)  && statusAttack == true) {
					if (parent.contains(Playerattack2)) {
						removeChild(BossArry[0]);
						BossArry.pop();
						BossArry.push(BossMonsterDeath1);
						addChild(BossMonsterDeath1);
						BossMonsterDeath1.x = BossMonster.x;
						BossMonsterDeath1.x = BossMonsterDeath1.x +	60;
						statusAttack = false;
						checkDamageBoss++;
						AttackBoss = true;
					}
				} else if (BossMonster.hitTestObject(BackAttack2)  && statusAttack == true) {
					if (parent.contains(BackAttack2)) {
						removeChild(BossArry[0]);
						BossArry.pop();
						BossArry.push(BossMonsterDeath1);
						addChild(BossMonsterDeath1);
						BossMonsterDeath1.x = BossMonster.x;
						BossMonsterDeath1.x = BossMonsterDeath1.x +60;
						statusAttack = false;
						checkDamageBoss++;
						AttackBoss = true;
					}
				}
				if (checkDamageBoss >= 3 && checkDeathBoss == 0 && AttackBoss == true) { //บอสตาย
					removeChild(BossArry[0]);
					BossArry.pop();
					BossArry.push(BossMonsterDeath2);
					addChild(BossMonsterDeath2);
					checkDeathBoss = 1;
				} else if (checkDamageBoss >= 3 && checkDeathBoss == 1 && AttackBoss == true ) {
					removeChild(BossArry[0]);
					BossArry.pop();
					time.stop();
					checkDeathBoss = 0;
					checkDamageBoss = 0;
					AttackBoss = false;
					numboss = 0;
				}
				checkBoss = 1 ;
			} else if (numboss >= 8 && checkBoss == 1) {
				numtime2 = 0;
				removeChild(BossArry[0]);
				BossArry.pop();
				BossArry.push(BossMonster2);
				addChild(BossMonster2);
				BossMonster2.x = checkwalkBoss -5;
				checkwalkBoss = BossMonster2.x;
				if (BossMonster2.x <= 360) {
					BossMonster2.x = 360;
				}
				if (BossMonster2.hitTestObject(jelly)){
					if (parent.contains(jelly)){
						hpbar.width = hpbar.width -20;
						if (hpbar.width <= 0) {
							removeChildren();
							addChild(textureBgGameOver);
							textureBgGameOver.addBgGameOver();
							stop = true;
							time.stop();
						}
					}
				} else if (BossMonster2.hitTestObject(Playerattack2)) {
					if (parent.contains(Playerattack2) && statusAttack == true) {
						removeChild(BossArry[0]);
						BossArry.pop();
						BossArry.push(BossMonsterDeath1);
						addChild(BossMonsterDeath1);
						BossMonsterDeath1.x = BossMonster.x;
						BossMonsterDeath1.x = BossMonsterDeath1.x +60;
						statusAttack = false;
						checkDamageBoss++;
						AttackBoss = true;
					}
				} else if (BossMonster2.hitTestObject(BackAttack2)) {
					if (parent.contains(BackAttack2)  && statusAttack == true) {
						removeChild(BossArry[0]);
						BossArry.pop();
						BossArry.push(BossMonsterDeath1);
						addChild(BossMonsterDeath1);
						BossMonsterDeath1.x = BossMonster.x;
						BossMonsterDeath1.x = BossMonsterDeath1.x +60;
						statusAttack = false;
						checkDamageBoss++;
						AttackBoss = true;
					}
				}
				checkBoss = 0;
				statusBoss = 1;
			}
		}
		
		public function onloop(e:Event):void {
			numtime1++;
			numtime2++;
			if (numtime1 == 170 && stop == false) {
				numtime1 = 0;
				Monster1 = new Monster();
				Monster1.addMonster1();
				stage.addChild(Monster1);
				Monster1.x = Math.random()*(200-20)+20;
				Monster1.y = 50;
				Monster1.addEventListener(Event.ENTER_FRAME, moveL);
				numtime1 = 0;
			} 
			if (numtime2 == 200 && stop == false) {
				numtime2 = 0;
				Monster2 = new Monster();
				Monster2.addMonster2();
				stage.addChild(Monster2);
				Monster2.x = Math.random()*(1+800-400)+400;
				Monster2.y = 50;
				Monster2.addEventListener(Event.ENTER_FRAME, moveR);
			}
		}
		
		public function moveR(e:Event):void {
			Monster1 = Monster(e.currentTarget);
			Monster1.y += 5;
			if (Monster1.y >= 420) {
				Monster1.y = 420;
				Monster1.x -= 2;
				if (Monster1.x <= 360) {
					Monster1.x = 360;
				}
				if (Playerattack2.hitTestObject(Monster1)) {
					if (parent.contains(Monster1) && statusAttack == true && checkwalk == Playerattack2.x) {
						stage.removeChild(Monster1);
						DeathMonster1.y = Monster1.y;
						DeathMonster1.x = Monster1.x;
						Monster1.x = Monster1.x + 9999;
						stage.addChild(DeathMonster1);
						DeathMonster1.addDeathMonster1();
						statusAttack = false;
						numboss++;
					}
				} else if (BackAttack2.hitTestObject(Monster1)) {
					if (parent.contains(Monster1) && statusAttack == true && checkwalk == BackAttack2.x) {
						stage.removeChild(Monster1);
						DeathMonster1.y = Monster1.y;
						DeathMonster1.x = Monster1.x;
						Monster1.x = Monster1.x + 9999;
						stage.addChild(DeathMonster1);
						DeathMonster1.addDeathMonster1();
						statusAttack = false;
						numboss++;
					}
				} if (Monster1.hitTestObject(jelly)) {
					if (parent.contains(jelly)) {
						hpbar.width = hpbar.width - 0.10;
						if (hpbar.width <= 0) {
							removeChildren();
							addChild(textureBgGameOver);
							textureBgGameOver.addBgGameOver();
							stop = true;
							time.stop();
						}
					}
				}
			}
		}
		
		
		public function moveL(e:Event):void {
			Monster2 = Monster(e.currentTarget);
			Monster2.y += 10;
			if (Monster2.y >= 420) {
				Monster2.y = 420;
				Monster2.x += 2;
				if (Monster2.x >= 360) {
					Monster2.x = 360;
				}
				if (Playerattack2.hitTestObject(Monster2)) {
					if (parent.contains(Monster2) && statusAttack == true && checkwalk == Playerattack2.x) {
						stage.removeChild(Monster2);
						DeathMonster2.y = Monster2.y;
						DeathMonster2.x = Monster2.x;
						Monster2.x = Monster2.x - 9999;
						stage.addChild(DeathMonster2);
						DeathMonster2.addDeathMonster2();
						statusAttack = false;
						numboss++;
					}
				} else if (BackAttack2.hitTestObject(Monster2)) {
					if (parent.contains(Monster2) && statusAttack == true  && checkwalk == BackAttack2.x) {
						stage.removeChild(Monster2);
						DeathMonster2.y = Monster2.y;
						DeathMonster2.x = Monster2.x;
						Monster2.x = Monster2.x - 9999;
						stage.addChild(DeathMonster2);
						DeathMonster2.addDeathMonster2();
						statusAttack = false;
						numboss++;
					}
				}
				if (Monster2.hitTestObject(jelly)) {
					if (parent.contains(jelly)) {
						hpbar.width = hpbar.width - 0.10;
						if (hpbar.width <= 0) {
							removeChildren();
							addChild(textureBgGameOver);
							textureBgGameOver.addBgGameOver();
							stop = true;
							time.stop();
						}
					}
				}
			}
		}
		
		public function keyDown(e:KeyboardEvent):void {
			if (e.keyCode == 39 && check == 0) { //key D
				keyD = true;
				removeChild(PlayerArry[0]);
				PlayerArry.pop();
				addChild(Player2);
				PlayerArry.push(Player2);
				Player2.x = checkwalk +25;
				checkwalk = Player2.x;
				if (checkwalk > 700) {
					checkwalk -= 25;
				}
				check = 1;
				checkA = 0;	
				statusAttack = false;
			}  else if (e.keyCode == 39 && check == 1) {
				keyD = true;
				removeChild(PlayerArry[0]);
				PlayerArry.pop();
				addChild(Player3);
				PlayerArry.push(Player3);
				Player3.x = checkwalk +25;
				checkwalk = Player3.x;
				if (checkwalk > 700) {
					checkwalk -= 25;
				}
				check = 3;
				checkA = 0;
				statusAttack = false;
			} else if (e.keyCode == 39 && check == 3) {
				keyD = true;
				removeChild(PlayerArry[0]);
				PlayerArry.pop();
				addChild(Player1);
				PlayerArry.push(Player1);
				Player1.x = checkwalk;
				checkwalk = Player1.x;
				if (checkwalk > 700) {
					checkwalk -= 25;
				}
				check = 0;
				checkA = 0;
				statusAttack = false;
			} else if (e.keyCode == 37 && checkA == 0) { //key A
				removeChild(PlayerArry[0]);
				PlayerArry.pop();
				addChild(BackPlayer1);
				PlayerArry.push(BackPlayer1);
				BackPlayer1.x = checkwalk;
				checkwalk = BackPlayer1.x;
				if (checkwalk < 10) {
					checkwalk += 25;
				}
				checkA = 1;
				check = 3;
				statusAttack = false;
			} else if (e.keyCode == 37 && checkA == 1) {
				keyA = true;
				removeChild(PlayerArry[0]);
				PlayerArry.pop();
				addChild(BackPlayer2);
				PlayerArry.push(BackPlayer2);
				BackPlayer2.x = checkwalk -25;
				checkwalk = BackPlayer2.x;
				if (checkwalk < 10) {
					checkwalk += 25;
				}
				checkA = 2;
				check = 3;
				statusAttack = false;
			} else if (e.keyCode == 37 && checkA == 2) {
				keyA = true;
				removeChild(PlayerArry[0]);
				PlayerArry.pop();
				addChild(BackPlayer3);
				PlayerArry.push(BackPlayer3);
				BackPlayer3.x = checkwalk -25;
				checkwalk = BackPlayer3.x;
				if (checkwalk < 10) {
					checkwalk += 25;
				}
				checkA = 0;
				check = 3;
				statusAttack = false;
			} else if (e.keyCode == 88 && checkSpaceX == 0) { //X
				removeChild(PlayerArry[0]);
				PlayerArry.pop();
				addChild(Playerattack1);
				PlayerArry.push(Playerattack1);
				Playerattack1.x = checkwalk;
				checkwalk = Playerattack1.x;
				checkSpaceX = 1;
				statusAttack = false;
			} else if (e.keyCode == 88 && checkSpaceX == 1) {
				removeChild(PlayerArry[0]);
				PlayerArry.pop();
				addChild(Playerattack2);
				PlayerArry.push(Playerattack2);
				Playerattack2.x = checkwalk;
				checkwalk = Playerattack2.x;
				checkSpaceX = 0;
				statusAttack = true;
				checkplayer = true;
			} else if (e.keyCode == 90 && checkSpaceZ == 0) { //Z
				removeChild(PlayerArry[0]);
				PlayerArry.pop();
				addChild(BackAttack1);
				PlayerArry.push(BackAttack1);
				BackAttack1.x = checkwalk;
				checkwalk = BackAttack1.x;
				checkSpaceZ = 1;
				statusAttack = false;
			} else if (e.keyCode == 90 && checkSpaceZ == 1) {
				removeChild(PlayerArry[0]);
				PlayerArry.pop();
				addChild(BackAttack2);
				PlayerArry.push(BackAttack2);
				BackAttack2.x = checkwalk;
				checkwalk = BackAttack2.x;
				checkSpaceZ = 0;
				statusAttack = true;
				checkBackplayer = true;
			}
		}
		
		public function keyUp(e:KeyboardEvent):void {
			if (checkplayer == true){
				removeChild(PlayerArry[0]);
				PlayerArry.pop();
				addChild(Player1);
				PlayerArry.push(Player1);
				Player1.x = checkwalk;
				checkwalk = Player1.x;
				checkplayer = false;
			} else if (checkBackplayer == true) {
				removeChild(PlayerArry[0]);
				PlayerArry.pop();
				addChild(BackPlayer1);
				PlayerArry.push(BackPlayer1);
				BackPlayer1.x = checkwalk;
				checkwalk = BackPlayer1.x;
				checkBackplayer = false;
			}
		}
	}
	
}