package ;

//import cs.internal.Function;
import flash.events.MouseEvent;
import openfl.display.Sprite;
import openfl.Lib;

class Main extends Sprite 
{
	static function main() {
		draw();
		
		var mc:flash.display.MovieClip = flash.Lib.current;
		mc.addEventListener(MouseEvent.MOUSE_DOWN,function(e){trace(e);});
        mc.graphics.beginFill(0xFF0000);
        mc.graphics.moveTo(50,50);
        mc.graphics.lineTo(100,50);
        mc.graphics.lineTo(100,100);
        mc.graphics.lineTo(50,100);
        mc.graphics.endFill();
	}

	static function draw() {
		var ctx = flash.Lib.current.graphics;
		for (part in graphic) {
			ctx.beginFill(Std.parseInt('0x${part.color}'));
			for (i in 0...part.path.length) {
				var point = part.path[i];
				if (i == 0) {
					ctx.moveTo(point.x, point.y);
				} else {
					ctx.lineTo(point.x, point.y);
				}
			}
		}
	}

	static var graphic = [{"color":"f68712", 
						   "path":[{"x":45, "y":45}, 
						           {"x":45, "y":100}, 
								   {"x":100, "y":100},
								   {"x":100, "y":45}
								    ]},
							{"color":"f55712", 
						   "path":[{"x":105, "y":105}, 
						           {"x":105, "y":155}, 
								   {"x":155, "y":155},
								   {"x":155, "y":105}
								    ]},
							{"color":"f44712", 
						   "path":[{"x":245, "y":245}, 
						           {"x":245, "y":300}, 
								   {"x":300, "y":300},
								   {"x":300, "y":245}
								    ]}
							
						 ];
}
