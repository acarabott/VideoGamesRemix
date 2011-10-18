"~/Documents/programming/computerMusic/fuckhead/fuckheadsetup.scd".standardizePath.loadPath

Tdef(\intro).play(quant:(1));

~people = ["I", "you", "they"];
~feelings = ["love", "like", "want", "say", "play with", "take", "kiss"];
~prefixs = ["my", "his", "your"];
~descriptions = ["big", "best", "bad", "bestest", "fast", "favourite", "swinging", "old", "blue", "wild", "drunk"];
~objects = ["swinging", "car", "yard", "whistling", "video", "video games", "games", "sundress", "undressed", "kiss", "perfume", "play", "everything", "heaven", "you", "honey", "world", "living", "somebody", "beer", "love", "loving", "baby", "me", "singing", "bar", "stars", "fame", "kissing", "pool", "darts", "friends", "falling", "playing", "arms", "body"];

~singular = ["singing", "bar", "fame", "kissing", "playing", "pool", "car", "swinging", "yard", "whistling", "sundress", "body", "kiss", "beer", "love", "loving"];
~plural = ["friends", "arms"];


~noteVideo = false;
~shitvox.("swinging1 in1 the1 back yard pull up in1 your fast car whistling for1 beer", 0.5);
// ~shitvox.("open up the beer say get two beers for[1-2] my friends", 0.5);
~shitvox.("I say I want beer too", 0.5);
~shitvox.("you say beer is bad for[1-2] me1", 0.5);
~shitvox.("I say do1 you1 think this is1 fun for[1-4] me[1-3]?", 0.5);
~shitvox.("you1 say1 its a fun time", 0.25);
~shitvox.("I2 think its a1 bad time", 0.25);
~shitvox.("a1 bad bad bad bad time", 0.25);
~shitvox.("I2 say1 I2 love you3 you1 say1 you1 love video1 games1");
~text.string_("");
Tdef(\SnareRush).play(quant:Quant(4));

~youThink = { ~shitvox.("you1 think your" + ["my big love", "big", "the best", "best", "fast", "swinging", "wild", "honey", "loving", "a star"].choose, 0.25, callback:~youThink) };
~youThink.();
~youThink = {};
~shitvox.("I2 think your bad bad bad bad");
~shitvox.("you are like a bad video game");

~text.string_("");
~noteVideo = true;

~snareAmp = 0;
~getDur = { [0.125, 1].wchoose([4, 1].normalizeSum); };
~backingAmp = 0.5;

Tdef(\Vox).play(quant:Quant(1));~text.align_(\center);
Tdef(\Vox).stop();~shitvox.("video games", 0.25);
~text.string_("");~text.align_(\left);
~snareAmp = 1;

~iLove = { 
    var choices;
    var choice;
    choices = [
        "my" + ~singular.choose,
        "my" + ~descriptions.choose + ~singular.choose,
        "your" + ~singular.choose,
        "your" + ~descriptions.choose + ~singular.choose,
        "my" + ~descriptions.choose + ~singular.choose + "better than your" + ~descriptions.choose + ~singular.choose,
        "your" + ~descriptions.choose + ~singular.choose + "better than my" + ~descriptions.choose + ~singular.choose,
    ];
    
    choice = "I love" + choices.wchoose([1,1,1,1,3,1.5].normalizeSum);
    choice.postln;
    ~shitvox.(choice, callback:~iLove)
    
};

~iLove.();
~iLove = {};

// ~shitvox.("I1 love your wild kissing");
~shitvox.("I3 love your big kiss better than your fast car");
~shitvox.("you say everything I love is bad bad bad bad");
~shitvox.("I think you only love video games")

~isBad = {
    ~shitvox.("your" + (["body", "body"] ++ ~singular).choose + "is1 bad", 0.25, callback:~isBad)
};

~isBad.();
~isBad = {};
~shitvox.("your loving is1 bad bad bad bad", 0.25);
~shitvox.("you3 like bad video1 games2", 0.25);

~voxAmp = 0.7;

~gogo = {~shitvox.(["I[1-3]", "you[1-5]"].choose + ["say", "think"].choose + "my" + ~descriptions.choose + ~singular.choose + "is[1-2]" + ["best", "bad", "best", "big"].choose, 0.5, callback:~gogo)};
~gogo.();
~gogo = {};

~shitvox.("you3 say my drunk loving is[1-2] bad");
~shitvox.("you3 say my kissing is[1-2] bad");
~shitvox.("you3 say my drunk singing is[1-2] bad");
~shitvox.("you3 say my loving is[1-2] bad");
~shitvox.("you[1-5] say[1-2] my playing[1-3] is[1-2] bad")
~shitvox.("you[1-5] say[1-2] my singing is[1-2] bad")


~shitvox.("its you2 its you2 its all1 for2 you3 everything I2 do1", min:0.5);
~shitvox.("tell1 you all the time", min:0.125);
~shitvox.("heaven is1 a3 place on earth with1 you5", min:0.25);
~shitvox.("tell1 me[1-3] all[1-2] the things you wanna do[1-2]");
~shitvox.("I3 heard that2 you[1-5] like the4 bad girls honey is1 that[1-2] true?");
~shitvox.("better than I3 ever even knew");
~shitvox.("they say[1-2] that[2-3] the5 world was built for[1-2] two");
~shitvox.("only worth living1 if somebody is2 loving you6");
~shitvox.("baby now you7 do3");


~backingAmp = 0.5;

Tdef(\Kick).play(quant:Quant(4)); Tdef(\Pedal).play(quant:Quant(4)); Tdef(\Snare).play(quant:Quant(4)); Tdef(\Hats).play(quant:Quant(4)); Tdef(\SnareRush).play(quant:Quant(4));

Tdef(\SnareRush).play(quant:Quant(4));
~rushAmp = 0.2;
~pedalAmp = 0.4
~hatsAmp = 0.5;
~snareAmp = 0.8;
~getDur = { [0.25].wchoose([1].normalizeSum); };
~getDur = { [0.125].wchoose([1].normalizeSum); };
~getDur = { [0.0625].wchoose([1].normalizeSum); };
~backingAmp = 0.8;
Tdef(\Vox).play(quant:Quant(1));~text.align_(\center);

Tdef(\Kick).stop; 
Tdef(\Kick).stop; 
Tdef(\Pedal).play(quant:Quant(1));
Tdef(\Snare).play(quant:Quant(4));
Tdef(\Hats).play(quant:Quant(1));
Tdef(\SnareRush).play(quant:Quant(4));
Tdef(\Vox).stop
~kickAmp

Tdef(\outro).play;Tdef(\intro).stop;
Tdef(\intro).stop
Tdef(\Kick).stop; 

Synth(\DelRayer, [\buf, b, \start, 5654767, \end, 5677500, \trim, 0.03, \pan, 0, \amp, 1, \out, ~verbBus]);

5654767, 5677500



Tdef(\Kick).stop; Tdef(\Pedal).stop; Tdef(\Snare).stop; Tdef(\Hats).stop; Tdef(\SnareRush).stop;

