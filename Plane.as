package {
	import flash.display.*;
	import flash.events.*;
	import flash.utils.getTimer;

	public class Plane extends MovieClip {
		// DATA MEMBERS
		public var vx: Number;
		public var lastTime: int;

		// CONSTRUCTOR
		public function Plane(velocity: Number, altitude: Number) {
			// TASK 1: INITALIZE THE PLANE PROPERTIES FOR LOCATION, VELOCITY, AND DIRECTION (scaleX)
			this.x = -10; // start to the left
			this.y = altitude;
			vx = velocity // fly left to right
			this.scaleX = -1; //reverse orientation

			// TASK 2: SET THE TIME, TO BE USED IN ANIMATION
			lastTime = getTimer();

			// TASK 3: ADD A GAME LOOP, THE ENTER_FRAME LISTENER EVENT
			addEventListener(Event.ENTER_FRAME, movePlane);
		}

		// MOVEPLANE METHOD
		public function movePlane(event: Event) {
			// TASK 1: COMPUTE THE ELAPSED TIME
			var timePassed: int = getTimer() - lastTime;
			lastTime += timePassed;
			trace(lastTime);

			// TASK 2: POSITION THE PLANE BASED ON TIME
			this.x += vx * timePassed / 1000;

			// TASK 3: REVERSE PLANE IF IT FLIES OFF THE SCREEN
			if (this.x < -50) {
				vx *= -1;
				this.scaleX *= -1;
			} else if (this.x > 650) {
				vx *= -1;
				this.scaleX *= -1;
			}
		}
	}
}