"~/Documents/programming/computerMusic/fuckhead/fuckheadsetup.scd".standardizePath.loadPath

Tdef(\intro).play(quant:(1));
Tdef(\SnareRush).play(quant:Quant(4));

~noteVideo = false;
~shitvox.("swinging1 in1 the1 back yard pull up in1 your fast car whistling for1 beer");

~shitvox.("open up the6 beer say[1-2] I")
~shitvox.("I")

~shitvox.("I2 say1 I2 love you2 you1 say1 you1 love beer");
~shitvox.("I2 say1 I2 love you3 you1 say1 you1 love video1 games1");

~shitvox.("I2 think your bad");
~shitvox.("bad bad bad bad");

// ~shitvox.("I1 like beer two");
// ~shitvox.("you[1-5] say[1-2] pull up the1 back yard its beer time");
~shitvox.("I3 like a[1-3] kiss");
~shitvox.("you[1-5] say[1-2] a[1-3] kiss is[1-2] bad");

~shitvox.("I2 love the4 world");
~shitvox.("you1 love beer");
~shitvox.("I3 love a1 big kiss");
~shitvox.("you1 love swinging1");
~shitvox.("I3 love your big kiss better than your fast car");
~shitvox.("you1 love your fast car better than my body");
~shitvox.("you1 love my body");
~shitvox.("you1 love girls");
~shitvox.("you1 love your beer better than my loving");
~shitvox.("you1 like the[1-8] bad girls");
~shitvox.("you1 love beer");
~shitvox.("beer girls beer girls beer beer beer girls");
// ~shitvox.("you1 think I3 like a[1-3] bad time");
~shitvox.("I2 say1 do1 you1 think this is1 fun for[1-4] me[1-3]");
~shitvox.("you1 say1 its fun time");
~shitvox.("I2 say1 its a1 bad bad bad time");

~shitvox.("your car is1 bad", 0.25);
~shitvox.("your body is1 bad", 0.25);
~shitvox.("your kiss is1 bad", 0.25);
~shitvox.("your loving is1 bad", 0.25);
~shitvox.("bad bad bad bad", 0.25);
~shitvox.("I[1-3 think you3 like bad video1 games2");

~shitvox.("I3 love you1 honey");
~shitvox.("I3 love my baby");
~shitvox.("I3 love my body");
~shitvox.("I3 love two get undressed");
~shitvox.("I3 love girls better than beer");
~shitvox.("I3 love you4");
~shitvox.("I3 love bad girls");
~shitvox.("I3 love living[1-2]");
~shitvox.("I3 love loving");
~shitvox.("I3 love heaven");
~shitvox.("I3 love perfume");
~shitvox.("I3 love town");
~shitvox.("I3 love swinging[1-2]");
~shitvox.("I3 love your fast car");
~shitvox.("I3 love play[1-2]");
~shitvox.("I3 love all[1-3] things fast");
~shitvox.("I3 love the[1-8] best beer");
~shitvox.("I3 love the[1-8] best video[1-3] games[1-3]");
~shitvox.("I3 love video[1-3] games[1-3]");
~shitvox.("I3 love a[1-3] bad time");
~shitvox.("I3 love a[1-3] bad kiss");
~shitvox.("I3 love a[1-3] big body");
~shitvox.("I3 love bad beer");
~shitvox.("I3 love the[1-8] best time");
~shitvox.("I3 love a[1-3] big kiss");
~shitvox.("I3 love a[1-3] kiss kiss");
~shitvox.("kiss kiss kiss kiss");
~shitvox.("I3 love your body");
~shitvox.("I3 love your kiss");
~shitvox.("I3 love you[1-5] watching[1-2] me[1-3] get undressed");
~shitvox.("I3 love his fast car");
~shitvox.("I3 love your big car");
~shitvox.("I3 love your fast loving");
~shitvox.("I3 want his fast car");
~shitvox.("I3 want your big kiss");
~shitvox.("I3 want your bad loving");
~shitvox.("I3 love your bad loving");
~shitvox.("I3 play[1-2] with[1-2] your fast car");
~shitvox.("I3 play[1-2] with[1-2] your body");
~shitvox.("I3 want your best beer");
~shitvox.("I3 want your best kiss");
~shitvox.("they want your best beer");
~shitvox.("you[1-5] love my bad body");
~shitvox.("you[1-5] love my bad car");

~shitvox.("you[1-5] love your fast car better than my body");
~shitvox.("I[1-3] love your fast car better than your body");
~shitvox.("I[1-3] love your body better than your fast car");

~shitvox.("I[1-3] I[1-3] I[1-3] I[1-3]");

~shitvox.("its you its you its all for yo");

~people = ["I", "you", "they"];
~feelings = ["love", "like", "want", "say", "play with", "take"];
~prefixs = ["my", "his", "your"];

~descriptions = ["big", "best", "bad", "bestest", "fast", "favourite", "swinging"];


~objects = ["swinging", "car", "yard", "whistling", "video", "video games", "games", "sundress", "undressed", "kiss", "perfume", "play1", "play2", "everything", "heaven", "you", "honey", "the[1-8] world", "living", "somebody", "beer", "love", "loving", "baby", "me"];

~people = ["I1", "I2", "I3", "you1", "you2", "you3", "you4", "you5", "they", "Paul"];
~feelings = ["love", "like", "want", "say", "play1 with1", "play2 with2", "take", "kiss"];
~prefixs = ["my", "his", "your"];
~objects = ["everything", "singing", "bar", "stars1", "stars2", "fame", "kissing", "playing2", "pool", "darts", "friends", "falling", "playing3", "arms", "friends"];

~descriptions = ["old", "blue", "dark", "wild", "drunk", "falling", "fun"];

~shitvox.(~people.choose + ~feelings.choose + ~prefixs.choose + ~descriptions.choose + ~objects.choose)

~singular = ["singing", "bar", "fame", "kissing", "playing[1-2]", "pool", "car", "swinging[1-2]", "yard", "whistling", "sundress", "body", "kiss", "beer", "love", "loving", "I[1-3]"];
~plural = ["friends", "arms"];
~shitvox.("you[1-5] say[1-2] my" + ~descriptions.choose + ~plural.choose + "are bad");
~shitvox.(["I[1-3]", "you[1-5]"].choose + ["say", "think"].choose + "my" + ~descriptions.choose + ~singular.choose + "is[1-2]" + ["best", "bad", "fast", "best", "big"].choose, 0.25);


~shitvox.([["you[1-5]", "I[1-3]"].choose + ["say", "think"].choose + "my" + ~singular.choose + "is[1-2] wild", "you[1-5] say[1-2] my" + ~plural.choose + "are" + ["wild", "bad", "best", "fun"].choose].choose)

~shitvox.("I[1-3] think my blue sundress is[1-2] best");
~shitvox.("you[1-5] say[1-2] my drunk loving is[1-2] best");
~shitvox.("you[1-5] say[1-2] my drunk singing is[1-2] bad");
~shitvox.("you[1-5] say[1-2] my dark friends are bad");
~shitvox.("you[1-5] say[1-2] my kissing is[1-2] bad");
~shitvox.("you[1-5] say[1-2] my loving is[1-2] bad");
~shitvox.("you[1-5] say[1-2] my big kiss is[1-2] bad");

~shitvox.("you[1-5] are bad body");
~shitvox.("you[1-5] love my body");
"you1 love my dark friends"
"I2 like your wild friends"
"you like your blue friends"
"Paul like my fun body"
~shitvox.("Paul kiss my blue body");
~shitvox.("I1 love your wild kissing");
~shitvox.("you[1-5] say[1-2] my playing[1-3] is[1-2] bad")
~shitvox.("you[1-5] say[1-2] my singing is[1-2] bad")

~shitvox.("falling")

~shitvox.("you1 like your bad friends seeing my body", 0.25);

~shitvox.("its you2 its you2 its all1 for2 you3 everything I2 do1", min:0.5);
~shitvox.("tell1 you9 all2 the3 time", min:0.125);
~shitvox.("heaven is1 a3 place on earth with1 you5", min:0.25);
~shitvox.("tell1 me[1-3] all[1-2] the[1-8] things you9 wanna do[1-2]");
~shitvox.("I3 heard that2 you[1-5] like the4 bad girls honey");

~shitvox.("is1 that[1-2] true");
~shitvox.("better than I3 ever even knew");
~shitvox.("they say[1-2] that[2-3] the5 world was built for[1-2] two");
~shitvox.("only worth living1 if somebody is2 loving you6");
~shitvox.("baby now you7 do3");
~shitvox.("for4");


~shitvox.("swinging1 in1 the1 back yard pull up in1 your fast car whistling for1 beer", quant:1, min:0.25);


Tdef(\Kick).play(quant:Quant(4)); Tdef(\Pedal).play(quant:Quant(4)); Tdef(\Snare).play(quant:Quant(4)); Tdef(\Hats).play(quant:Quant(4)); Tdef(\SnareRush).play(quant:Quant(4));

~snareAmp = 0;
~getDur = { [1].wchoose([1].normalizeSum); };
~backingAmp = 0.5;

Tdef(\Kick).stop; 
Tdef(\Kick).stop; 
Tdef(\Pedal).stop

play(quant:Quant(1));
Tdef(\Snare).play; 
Tdef(\Hats).stop; 
Tdef(\SnareRush).stop;

Synth(\DelRayer, [\buf, b, \start, 8949117, \end, b.numFrames, \trim, 0.03, \pan, 0]);
b.numFrames
Synth(\DelRayer, [\buf, b, \start, 8949117, \end, b.numFrames, \trim, 0.03, \pan, 0]);
[Tdef(\Vox), Tdef(\Kick), Tdef(\Pedal), Tdef(\Snare), Tdef(\SnareRush), Tdef(\Hats)].do { |item, i|
    item.stop;
};
m.currentTime_(8949117/b.sampleRate);
Tdef(\intro).stop

Tdef(\Kick).stop; 




Tdef(\Vox).stop

Tdef(\Kick).stop; Tdef(\Pedal).stop; Tdef(\Snare).stop; Tdef(\Hats).stop; Tdef(\SnareRush).stop;

d = Buffer.alloc(s, 1024, 2);
SynthDef(\DelFreezeInput, {|in=0, out=0, fbuf=0|
	var sig, dry, verb, chain;
	var key = KeyState.kr(49, 0, 1);
	var lagkey = Lag.kr(key, 1);
    sig = In.ar(in);
    chain = FFT(fbuf, in);
    chain = PV_Freeze(chain, key > 0.5 ); 
    dry = IFFT(chain);
    verb = FreeVerb.ar(dry, 0.5, 0.8, 0.1);
	Out.ar(out, 
        Mix.ar([dry * (lagkey-1).abs, (verb*2) * lagkey])
	);
}).add;

~another = Synth(\DelFreezeInput, [\in, ~anotherBus, \fbuf, d]);
~another.free

d = Buffer.alloc(s, 1024, 1);
e = Buffer.alloc(s, 1024, 1);
SynthDef(\DelFreeze, {|out=0, lbuf=0, rbuf=1, buf=0, add=441000, start=0, end=0, trim=0.03|
	var in, lchain, rchain;
	var lsig, rsig;
	var verb;
	var env;
	var dur;
	var key = KeyState.kr(49, 0, 1);
	var lagkey = Lag.kr(key, 1);
	var phase = Phasor.ar(0, (key-1).abs.round, start, end);
	var delphase = Delay1.ar(phase);
    var phase2 = Phasor.ar(0, key, delphase, delphase+add);
    var sel = Select.ar(key.round, [phase, phase2]);

    // in = PlayBuf.ar(2, soundBufnum, BufRateScale.kr(soundBufnum), startPos:15*b.sampleRate, loop: 1);
    in = BufRd.ar(2, buf, sel, 0, 4) * Lag.ar(K2A.ar((key-1)).abs, 0.05);
    dur = (end - start) / BufSampleRate.kr(buf);
    dur.poll;
    env = EnvGen.ar(Env.new([0, 1], [trim]), Impulse.kr(dur));
    
    in = in * env;
    lchain = FFT(lbuf, in[0]);
    rchain = FFT(rbuf, in[1]);
    
	// uncomment the line below to compare while ...
    // chain = PV_MagFreeze(chain, key > 0.5 ); 
	// commenting the line below 
    lchain = PV_Freeze(lchain, key > 0.5 ); 
    rchain = PV_Freeze(rchain, key > 0.5 ); 
    lsig = IFFT(lchain);
    rsig = IFFT(rchain);
    
    verb = FreeVerb2.ar(lsig*key, rsig*key, 0.5, 0.8, 0.1);
	Out.ar(out, 
        // Mix.ar([sig * (lagkey-1).abs, (verb*2) * lagkey])
        [Mix.ar([lsig * (lagkey-1).abs, verb[0] * 2 * lagkey]), Mix.ar([rsig * (lagkey-1).abs, verb[1] * 2 * lagkey])]
        // in
	);
}).add;

x.free
x = Synth(\DelFreeze, [\out, 0, \lbuf, d, \rbuf, e, \buf, b.bufnum, \add, 441000, \start, ~introNotes[5][0]*b.sampleRate, \end, ~introNotes[5][1]*b.sampleRate, \trim, 0.08]);
x.set(\trim, 0.005);
x.free
[7.3, 8.3]
x.free
s.record
s.stopRecording

SynthDef(\DelFreeze2, {|out=0, fbuf=0, buf=0, start=0, end=0, lag|
	var in, chain;
	var sig;
	var verb;
	var key = KeyState.kr(49, 0, 1);
	var lagkey = Lag.kr(key, lag);
	var phase = Phasor.ar(0, BufRateScale.kr(buf), start, end);

    // in = PlayBuf.ar(2, soundBufnum, BufRateScale.kr(soundBufnum), startPos:15*b.sampleRate, loop: 1);
    in = BufRd.ar(2, buf, phase, 0, 4);
    chain = FFT(fbuf, in);
	// uncomment the line below to compare while ...
    // chain = PV_MagFreeze(chain, key > 0.5 ); 
	// commenting the line below 
    chain = PV_Freeze(chain, key > 0.5 ); 
    sig = IFFT(chain);
    verb = FreeVerb2.ar(sig[0], sig[1], 0.7, lagkey, 0.1);
	Out.ar(out, 
        Mix.ar([in, (verb*2) * lagkey])
	);
}).add;
x.free
x = Synth(\DelFreeze2, [\out, 0, \fbuf, d, \buf, b.bufnum, \start, 30*b.sampleRate, \end, 50*b.sampleRate]);
x.set(\lag, 3);


SynthDef(\DelShift) { |buf=0, out=0, start=0, end=0, rate=1, pan=0, trim=0.05, amp=1, samp=1, s2amp=1|
    var phase = Phasor.ar(0, BufRateScale.kr(buf)*rate, start, end);
    var sig = BufRd.ar(2, buf, phase, 0, 4);
    var env = EnvGen.ar(Env.linen(trim, (((end-start)/BufSampleRate.kr(buf))/rate) - (trim*2), trim), doneAction: 2);
    var shift = PitchShift.ar(sig, 0.1, 0.5, 0, 0.004);
    var shift2 = PitchShift.ar(sig, 0.1, 2, 0, 0.004);
    var verbed = FreeVerb2.ar(shift2[0], shift2[1], 0.5, 0.8, 0.1);
    var mix = Mix.ar([sig*amp, shift*samp, verbed*s2amp]);
    Out.ar(out,
        Pan2.ar(mix*env, pan);
    );
}.add;
x.free
x = Synth(\DelShift, [\buf, b, \start, 7.3*b.sampleRate, \end, b.numFrames]);

x.set(\amp, 1);
x.set(\samp, 0);
x.set(\s2amp, 0);

