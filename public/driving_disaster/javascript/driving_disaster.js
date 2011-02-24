$(document).ready(function() {
	//init Crafty with FPS of 50 and create the canvas element
	Crafty.init(50);
	Crafty.canvas();
	
	//preload the needed assets
	Crafty.load(["images/sprite.png", "images/bg.png"], function() {
		//splice the spritemap
		Crafty.sprite(0, "images/sprite.png", {truck: [0,0]});
		
		//start the main scene when loaded
		Crafty.scene("main");
	});
	
	Crafty.scene("main", function() {
		Crafty.background("url('images/bg.png')");
		
		var player = Crafty.e("2D, canvas, image")
		         .attr({x: Crafty.viewport.width / 2, y: Crafty.viewport.height / 2, w:30, h:100})
		         .origin("center").image("images/sprite.png","no-repeat");
	  player.addComponent("controls");
	  player.attr({move: {left: false, right: false, up: false, down: false}, xspeed: 0, yspeed: 0, decay: 0.99});
	  
	  player.bind("keydown", function(e) {
			//on keydown, set the move booleans
			if(e.keyCode === Crafty.keys.RA) {
				this.move.right = true;
			} else if(e.keyCode === Crafty.keys.LA) {
				this.move.left = true;
			} else if(e.keyCode === Crafty.keys.UA) {
				this.move.up = true;
			}
		});
		
		player.bind("keyup", function(e) {
			//on key up, set the move booleans to false
			if(e.keyCode === Crafty.keys.RA) {
				this.move.right = false;
			} else if(e.keyCode === Crafty.keys.LA) {
				this.move.left = false;
			} else if(e.keyCode === Crafty.keys.UA) {
				this.move.up = false;
			}
		});
		
		player.bind("enterframe",function(e){
		  if(this.move.right) this.rotation += 5;
			if(this.move.left) this.rotation -= 5;
			
			var vx = Math.sin(this._rotation * Math.PI / 180) * 0.3,
				vy = Math.cos(this._rotation * Math.PI / 180) * 0.3;
			
			//if the move up is true, increment the y/xspeeds
			if(this.move.up) {
				this.yspeed -= vy;
				this.xspeed += vx;
			} else {
				//if released, slow down the ship
				this.xspeed *= this.decay;
				this.yspeed *= this.decay;
			}
			
			//move the ship by the x and y speeds or movement vector
			this.x += this.xspeed;
			this.y += this.yspeed;
			
			if(this._x > Crafty.viewport.width) {
				this.x = -64;
			}
			if(this._x < -64) {
				this.x =  Crafty.viewport.width;
			}
			if(this._y > Crafty.viewport.height) {
				this.y = -64;
			}
			if(this._y < -64) {
				this.y = Crafty.viewport.height;
			}
		});
		
		player.draw();
	});
});