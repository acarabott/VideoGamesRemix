w = Window("", Rect(100, 100, 1000, 760)).front;
w.view.background_(Color.black);
m = SCMovieView(w, Rect(100,10,800, 450));
m.showControllerAndAdjustSize(false, false);
m.path_("sounds/videogames.mp4");
m.muted_(true);
m.stop;m.currentTime_(0);Tdef(\intro).stop;
~text = StaticText(w, Rect(125,460,750,100));
~text.background_(Color.black);
~text.stringColor_(Color.white);
~text.string_("");
~text.align_(\left);
~text.font_(Font("Helvetica", 40));        


~comp = CompositeView(w, Rect(50, 550, 1000, 210));
// ~comp.background_(Color.white);
~drumWidth = 340;
~drumsComp = CompositeView(~comp, Rect(570,0, ~drumWidth,140));
~drumsComp.background_(Color.black);
~drumsLabel = StaticText(~drumsComp, Rect(0,60,~drumWidth,30));
~drumsLabel.align_(\center);
~drumsLabel.font_(Font("Helvetica", 30));        
~drumsLabel.stringColor_(Color.white);
~drumsLabel.string_("Drums");

~drumAlpha = 0.3;
~kickImage = SCImage.new("/Users/arthurc/Documents/programming/computerMusic/fuckhead/images/kick.jpg");
~kickView = UserView(~drumsComp, Rect(10, 100, 75, 75)).background_(Color.white).backgroundImage_(~kickImage, alpha:0.2);
~kickOn = false;
~currentKickAmp = ~kickAmp;
~kickView.mouseDownAction_({
    var alpha;
    if(~kickOn) {
        alpha = ~drumAlpha;
        ~kickAmp = 0;
    } {
        alpha = 1;
        ~kickAmp = ~currentKickAmp;
    };
    
    ~kickOn = ~kickOn.not;
    ~kickView.backgroundImage_(~kickImage, alpha:alpha);
});

~snareImage = SCImage.new("/Users/arthurc/Documents/programming/computerMusic/fuckhead/images/snare.jpg");
~snareView = UserView(~drumsComp, Rect(95, 100, 75, 75)).background_(Color.white).backgroundImage_(~snareImage, alpha:~drumAlpha);
~snareOn = false;
~currentSnareAmp = ~snareAmp;
~snareView.mouseDownAction_({
    var alpha;
    if(~snareOn) {
        alpha = ~drumAlpha;
        ~snareAmp = 0;
    } {
        alpha = 1;
        ~snareAmp = ~currentSnareAmp;
    };
    
    ~snareOn = ~snareOn.not;
    ~snareView.backgroundImage_(~snareImage, alpha:alpha);
});

~hatsImage = SCImage.new("/Users/arthurc/Documents/programming/computerMusic/fuckhead/images/hats.jpg");
~hatsView = UserView(~drumsComp, Rect(180, 100, 75, 75)).background_(Color.white).backgroundImage_(~hatsImage, alpha:~drumAlpha);
~hatsOn = false;
~currentHatsAmp = [~pedalAmp, ~hatsAmp];
~hatsView.mouseDownAction_({
    var alpha;
    if(~hatsOn) {
        alpha = ~drumAlpha;
        ~pedalAmp = 0;
        ~hatsAmp = 0;
    } {
        alpha = 1;
        ~pedalAmp = ~currentHatsAmp[0];
        ~hatsAmp = ~currentHatsAmp[1];
    };
    
    ~hatsOn = ~hatsOn.not;
    ~hatsView.backgroundImage_(~hatsImage, alpha:alpha);
});

~brushesImage = SCImage.new("/Users/arthurc/Documents/programming/computerMusic/fuckhead/images/brushes.jpg");
~brushesView = UserView(~drumsComp, Rect(265, 100, 75, 75)).background_(Color.white).backgroundImage_(~brushesImage, alpha:~drumAlpha);
~brushesOn = false;
~currentRushAmp = ~rushAmp;
~brushesView.mouseDownAction_({
    var alpha;
    if(~brushesOn) {
        alpha = ~drumAlpha;
        ~rushAmp = 0;
    } {
        alpha = 1;
        ~rushAmp = ~currentRushAmp;
    };
    
    ~brushesOn = ~brushesOn.not;
    ~brushesView.backgroundImage_(~brushesImage, alpha:alpha);
});

~introButton = Button(~comp, Rect(0, 90, 80,80))
    .states_([
        ["Start Remix", Color.black, Color.new(0,0.7,0)],
        ["End Remix", Color.white, Color.new(0.7,0,0)]        
    ])
    .action_({|button|
        switch (button.value)
            {1}  { Tdef(\intro).play(quant:(1)) }
            {0}  { Tdef(\outro).play;Tdef(\intro).stop};
        
    });



~vocalWidth = 400;
// Color.new(0.3,0.3,0.3)
~vocalTabs = TabbedView(~comp, Rect(140, 60, ~vocalWidth, 140), colors:[Color.new(0.2,0.2,0.2)], labels:["Enter lyrics", "Generated Sentences", "Single Words"]);
~vocalTabs.stringColor_(Color.white);
~enterField = SCTextField(~vocalTabs.views[0], Rect(10, 10, ~vocalWidth-20, 40));
~enterField.font_(Font("Helvetica", 30));        
~strippedLyrics = ~lyrics.keys.collect { |item, i| 
    10.do { |j|
        item = item.asString.replace(j.asString, "")
    };
    item.asSymbol;
};

~cheatButton = Button(~vocalTabs.views[0], Rect(10, 60, 150,30))
    .states_([["Open lyrics sheet", Color.black]])
    .action_({
        ~lyricsWindow = Window("Lyrics", Rect(100, 100, 800, 250)).front;
        ~lyricsWindow.view.background_(Color.black);
        ~lyricsText = StaticText(~lyricsWindow, Rect(10,-280, 790, 600));
        // ~lyricsText.string_("hi");
        ~lyricsText.string_(~strippedLyrics.asArray.collect({|item, i| item.asString ++ "  "}).sum[2..]);
        ~lyricsText.stringColor_(Color.white);
        ~lyricsText.font_(Font("Helvetica", 20))
        
        
    });

~fieldStartButton = Button(~vocalTabs.views[0], Rect(240, 60, 150,30))
    .states_([
        ["Start", Color.black, Color.new(0,0.7,0)],
        ["Stop", Color.white, Color.new(0.7,0,0)]        
    ])
    .action_({|button|
        button.value.postln;
    });
    
~enterField.keyDownAction_({|view, char, mod, uni, key|
    var split;
    if(char == $ ) {
        split = ~enterField.string.split($ );
        split.do { |word, i|
            if(~strippedLyrics.includes(word.asSymbol).not) {
                ~enterField.stringColor_(Color.red);
            } {
                ~enterField.stringColor_(Color.black);
            };
        };
        
    };
});

~enterField.action_({|view|
    
});


~sentences = EZPopUpMenu.new(~vocalTabs.views[1],
    Rect(10, 10, ~vocalWidth-20, 30),
	"Theme: ",
	[	
		'I love...' ->{|a| ("this is item 0 of " ++ a).postln},
		'You love...' ->{|a| ("this is item 1 of " ++ a).postln},
		'Your ___ is bad' ->{|a| ("this is item 2 of " ++ a).postln},
		'You say...' ->{|a| ("this is item 2 of " ++ a).postln},
	],
	globalAction: {|a| ("this is a global action of "++a.asString ).postln},
	initVal: 1,
	initAction: false,
	labelWidth: 50,
	labelHeight: 20,
	layout: \horz,
	gap: 2@2
	);
~sentences.setColors(stringColor:Color.white, menuStringColor:Color.white);

~sentencesStartButton = Button(~vocalTabs.views[1], Rect(240, 60, 150,30))
    .states_([
        ["Start", Color.black, Color.new(0,0.7,0)],
        ["Stop", Color.white, Color.new(0.7,0,0)]        
    ])
    .action_({|button|
        button.value.postln;
    });



~speeds = [1, 0.5, 0.25, 0.125, 0.0625];
~speedSpec = ControlSpec(0, 4, \lin, 1, 1); 	// controlSpec
~speedLabel = StaticText(~vocalTabs.views[2], Rect(10,10, 150, 30))
    .string_("Speed")
    .stringColor_(Color.white)
    .font_(Font("Helvetica", 20));
~speedSlider = Slider(~vocalTabs.views[2], Rect(10, 60, 150, 30))
	.value_(0)
	.action_({|slider|
	    ~speeds[~speedSpec.map(slider.value)].postln;
	});
~speedsStartButton = Button(~vocalTabs.views[2], Rect(240, 60, 150,30))
    .states_([
        ["Start", Color.black, Color.new(0,0.7,0)],
        ["Stop", Color.white, Color.new(0.7,0,0)]        
    ])
    .action_({|button|
        button.value.postln;
    });