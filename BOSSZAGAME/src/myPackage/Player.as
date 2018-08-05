package myPackage 
{
	import flash.display.Sprite;
	/**
	 * ...
	 * @author BOSSZA
	 */
	public class Player extends Sprite
	{
		[Embed(source = "../../bin/PicPlayer/Idle (1).png")]
		public var BgPlayer1:Class;
		
		[Embed(source = "../../bin/PicPlayer/Walk (2).png")]
		public var BgPlayerWalk1:Class;
		
		[Embed(source = "../../bin/PicPlayer/Walk (3).png")]
		public var BgPlayerWalk2:Class;
		
		[Embed(source = "../../bin/PicPlayer/BackIdle (1).png")]
		public var BgBackPlayer1:Class;
		
		[Embed(source = "../../bin/PicPlayer/backWalk(2).png")]
		public var BgBackPlayerWalk1:Class;
		
		[Embed(source = "../../bin/PicPlayer/backWalk (3).png")]
		public var BgBackPlayerWalk2:Class;
		
		[Embed(source = "../../bin/PicPlayer/Attack (5).png")]
		public var BgAttackPlayer1:Class;
		
		[Embed(source = "../../bin/PicPlayer/Attack (6).png")]
		public var BgAttackPlayer2:Class;
		
		[Embed(source="../../bin/PicPlayer/BackAttack (5).png")]
		public var BgBackAttackPlayer1:Class;
		
		[Embed(source="../../bin/PicPlayer/BackAttack (6).png")]
		public var BgBackAttackPlayer2:Class;
		
		[Embed(source="../../bin/PicPlayer/queen.png")]
		public var BgJelly:Class;
		
		
		[Embed(source = "../../bin/PicPlayer/snowwhite-crop.png")]
		public var Snowwhite:Class;
		
		public function Player() 
		{
			
		}
		
		public function addPlayer1():void {
			addChild(new BgPlayer1);
		}
		
		public function addPlayerWalk1():void {
			addChild(new BgPlayerWalk1);
		}
		
		public function addPlayerWalk2():void {
			addChild(new BgPlayerWalk2);
		}
		
		public function addBackPlayer1():void {
			addChild(new BgBackPlayer1);
		}
		
		public function addBackPlayerWalk1():void {
			addChild(new BgBackPlayerWalk1);
		}
		
		public function addBackPlayerWalk2():void {
			addChild(new BgBackPlayerWalk2);
		}
		
		public function addBgAttackPlayer1():void {
			addChild(new BgAttackPlayer1);
		}
		
		public function addBgAttackPlayer2():void {
			addChild(new BgAttackPlayer2);
		}
		
		public function addBackBgAttackPlayer1():void {
			addChild(new BgBackAttackPlayer1);
		}
		
		public function addBackBgAttackPlayer2():void {
			addChild(new BgBackAttackPlayer2);
		}
		
		public function addBgJelly():void {
			addChild(new BgJelly);
		}
		

		
		
		
	}

}