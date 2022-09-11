﻿package  {
			var dX: Number = targetX - this.x;
			var dY: Number = targetY - this.y;
			//var distance:Number = Math.sqrt(dX*dX + dY * dY);

			// COMPUTE THE ANGLE TO THE TARGET
			var angleRadians: Number = Math.atan2(dY, dX);
			
			// CONVERT TO RADIANS
			var rotationDegrees: Number = angleRadians * 180 / Math.PI;
			this.rotation = rotationDegrees;