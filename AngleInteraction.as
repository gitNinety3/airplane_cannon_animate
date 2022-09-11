package  {
	import flash.display.*;
	import flash.events.*;
	
	public class AngleInteraction extends MovieClip {
		private var myPlane: Plane;
		private var rocketLauncher: RocketLauncher;
		
		public function AngleInteraction() {
			//ADD A ROCKET LAUNCHER TO THE STAGE
			rocketLauncher = new RocketLauncher();
			addChild(rocketLauncher);
			
			//ADD A PLANE TO THE STAGE
			addPlane();
			
			//REGISTER AN EVENT FOR FOLLOWING THE PLANE
			addEventListener(Event.ENTER_FRAME, targetPlane);

		}
		
		public function addPlane() {
			var velocity:int = 255;
			var altitude:int = 95;
			myPlane = new Plane(velocity, altitude);
			addChild(myPlane);
		}
		
		function targetPlane(event:Event) {
				rocketLauncher.updateAngle(myPlane.x, myPlane.y);
		}
	}
}
