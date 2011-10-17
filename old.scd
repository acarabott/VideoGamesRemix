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

