package myPackage 
{
	import flash.display.MovieClip;
	import flash.display.Sprite;
	/**
	 * ...
	 * @author BOSSZA
	 */
	public class Backgroud extends Sprite
	{
		[Embed(source="../../bin/PicBG/BG.png")]
		public var BG:Class;
		
		[Embed(source="../../bin/PicBG/2.png")]
		public var BG1:Class;
		
		[Embed(source = "../../bin/PicBG/17.png")]
		public var water:Class;
		
		[Embed(source="../../bin/PicBG/13.png")]
		public var BGfly1:Class;
		
		[Embed(source="../../bin/PicBG/15.png")]
		public var BGfly2:Class;
		
		[Embed(source = "../../bin/PicBG/BgGameOver.jpg")]
		public var BgGameOver:Class;
		
		
		public function Backgroud() 
		{
			
		}
		
		public function addBg():void {
			addChild(new BG);
		}
		
		public function addBg1():void {
			addChild(new BG1);
		}
		
		public function addBgfly1():void {
			addChild(new BGfly1);
		}
		
		public function addBgfly2():void {
			addChild(new BGfly2);
		}
		
		public function addWater():void {
			addChild(new water);
		}
		
		public function addBgGameOver():void {
			addChild(new BgGameOver);
		}

	}

}