package myPackage 
{
	import flash.display.Sprite;
	/**
	 * ...
	 * @author ...
	 */
	public class Monster extends Sprite 
	{
		
		[Embed(source="../../bin/PicPlayer/Monster1.png")]
		public var Monster1:Class;
		
		[Embed(source="../../bin/PicPlayer/Monster2.png")]
		public var Monster2:Class;
		
		[Embed(source = "../../bin/PicPlayer/Monsterdeath1.png")]
		public var DeathMonster1:Class;
		
		[Embed(source = "../../bin/PicPlayer/Monsterdeath2.png")]
		public var DeathMonster2:Class;
		
		[Embed(source = "../../bin/PicPlayer/chase_0.png")]
		public var BossMonster:Class;
		
		[Embed(source = "../../bin/PicPlayer/chase_1.png")]
		public var BossMonster1:Class;
		
		[Embed(source="../../bin/PicPlayer/die1_4.png")]
		public var BgBossMonsterDeath1:Class;
		
		[Embed(source = "../../bin/PicPlayer/die1_7.png")]
		public var BgBossMonsterDeath2:Class;

		public function Monster() 
		{
			
		}
		
		public function addMonster1():void {
			addChild(new Monster1);
		}
		
		public function addMonster2():void {
			addChild(new Monster2);
		}
		
		public function addDeathMonster1():void {
			addChild(new DeathMonster1);
		}
		
		public function addDeathMonster2():void {
			addChild(new DeathMonster2);
		}
		
		public function addBossMonster():void {
			addChild(new BossMonster);
		}
		
		public function addBossMonster1(): void {
			addChild(new BossMonster1);
		}
		
		public function addBossMonsterDeath1():void {
			addChild(new BgBossMonsterDeath1);
		}
		
		public function addBossMonsterDeath2():void {
			addChild(new BgBossMonsterDeath2);
		}
		
	}

}