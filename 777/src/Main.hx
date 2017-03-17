package;

import openfl.display.Sprite;
import openfl.Lib;
import flash.events.MouseEvent;

class Main extends Sprite 
{
	public static function main() {
		
		var k1:Kvadrat = new Kvadrat(50, 50, 100, 100);
		var k2:Kvadrat = new Kvadrat(50, 150, 250, 350);
		var k3:Kvadrat = new Kvadrat(200, 50, 250, 100);
		
		Lib.current.addChild(k1);
		k1.addChild(k2);
		Lib.current.addChild(k3);
	}
}
class Kvadrat extends Sprite {
	public static var counter: Int = 0;
	var number: Int;
	var x1:Int;	var y1:Int;
	var x2:Int;	var y2:Int;
	
	public function new (x1:Int, y1:Int, x2:Int, y2:Int){
		super();
		Kvadrat.counter++;
		this.number = Kvadrat.counter;
		addEventListener(MouseEvent.MOUSE_DOWN, function(e){trace(this.number); e.stopPropagation(); });
		this.x1 = x1;
		this.y1 = y1;
		this.x2 = x2;
		this.y2 = y2;
	
		graphics.beginFill(0xFFAA00);
		graphics.moveTo(x1,y1); // От куда будем рисовать ,  Левый верхний угол
		graphics.lineTo(x2,y1); // Правый верхний угол
		graphics.lineTo(x2,y2); // Правый нижний угол
		graphics.lineTo(x1,y2); // Левый нижний угол
		graphics.endFill();	
	}
}