(
w = Window("mov", Rect(100, 100, 1000, 660)).front;
w.view.background_(Color.black);
m = SCMovieView(w, Rect(100,10,800, 450));
m.showControllerAndAdjustSize(false, false);
c = CompositeView(w, Rect(0,100,800, 460));
c.background = Color.black;
m.path_("sounds/videogames.mp4");
m.muted_(true);	// thank god
~text = StaticText(w, Rect(125,450,750,200));
~text.background_(Color.black);
~text.stringColor_(Color.white);
~text.string_("");
~text.align_(\left);
~text.font_(Font("Josefin Sans", 50));
)


chr
x = {
    inf.do {
        m.currentTime_(0);
        0.125.wait;
    }
}.fork(AppClock);


		// not there yet, but would be nice to have:
		// startFrame, length
m.setSelection_(20, 15);

		
m.frame_(frame);	// jump to frame
m.frame.postln;	// poll current frame pos


~controls.view.mouseDownAction_({
    "hi".postln;
})
~controls = Window("Controls", Rect(100, 100, 400, 300)).front;
~control1 = UserView(~controls, Rect(20, 20, 200, 136));
~original = SCImage.new("/Users/arthurc/Downloads/delrey1.jpg");
~fx = ~original.applyFilters(g = SCImageFilter.new(\CIPixellate));
~control1.backgroundImage_(~fx);

~control1.mouseDownAction_({
    ~control1.backgroundImage_(i);
})


w = Window("test", Rect(100, 100, 400, 300)).front;
w.view.enabled = true;
w.view.keyDownAction_({|view, char, mod, uni, key|
    "hi".postln;
})
w.view.mouseDownAction_({
    
    "hi".postln;
})
i.plot