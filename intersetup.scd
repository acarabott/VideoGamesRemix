TempoClock.default.tempo_(62/60);

~setVariables = {
    ~continueSentences = true;
    ~sentencePlaying = false;
    ~kickAmp = 0.85;
    ~hatsAmp = 0.2;
    ~pedalAmp = 0.45;
    ~rushAmp = 0.45;
    ~snareAmp = 0.8;
    ~kickMult = 1;
    ~snareMult = 1;
    ~hatsMult = 1;
    ~pedalMult = 1;
    ~rushMult = 1;
        
    ~wordDur = 1;
    ~noteVideo = true;
    ~noteRandom = false;
    ~backingAmp = 0.5;
    ~shiftChance = 0;
    ~voxAmp = 0.8;
    ~fastVoxAmp = 1.5;
};

~reset = {
    [\outro, \kick, \snare, \pedal, \hats, \rush].do { |item, i|
        Tdef(item).stop;
    };
    {~text.align_(\left); ~text.string_("")}.fork(AppClock);
    Tdef(\outro).stop;
    ~setVariables.();
    ~note.([3, 7.3]);
};


~setLyrics = {
    ~verse = Dictionary[];
    ~verse.add(\swinging1 ->     [1006759, 1033782]);
    ~verse.add(\in1 ->           [1033154, 1045094]);
    ~verse.add(\the1 ->          [1044876, 1055073]);
    ~verse.add(\back ->         [1055073, 1077092]);
    ~verse.add(\yard ->         [1077092, 1098964]);
    ~verse.add(\pull ->         [1102293, 1107908]);
    ~verse.add(\pull ->         [1099000, 1112300]);
    ~verse.add(\up ->           [1109682, 1118548]);
    ~verse.add(\your ->         [1128006, 1138950]);
    ~verse.add(\fast ->         [1143210, 1163973]);
    ~verse.add(\car ->          [1167001, 1185050]);
    ~verse.add(\whistling ->    [1189779, 1219700]);
    ~verse.add(\my ->           [1216231, 1228940]);
    ~verse.add(\name ->         [1228940, 1276821]);
    ~verse.add(\open ->         [1353189, 1376972]);
    ~verse.add(\up ->           [1379007, 1388164]);
    ~verse.add(\a1 ->            [1387960, 1397321]);
    ~verse.add(\beer ->         [1397321, 1423775]);
    ~verse.add(\beers ->         [1397321, 1423775]);
    ~verse.add(\get ->          [1455316, 1463862]);
    ~verse.add(\over ->         [1464269, 1482380]);
    ~verse.add(\here ->         [1486857, 1502729]);
    ~verse.add(\play1 ->         [1508834, 1523688]);
    ~verse.add(\video1 ->        [1529590, 1570898]);
    ~verse.add(\game ->         [1570898, 1685260]);
    ~verse.add(\his ->          [1713997, 1724986]);
    ~verse.add(\favourite ->    [1724986, 1741672]);
    ~verse.add(\sundress ->     [1742282, 1789085]);
    ~verse.add(\watching1 ->      [1789085, 1810452]);
    ~verse.add(\me1 ->           [1810452, 1820830]);
    ~verse.add(\get ->          [1824085, 1836295]);
    ~verse.add(\undressed ->    [1836295, 1878417]);
    ~verse.add(\take ->         [1878416, 1891034]);
    ~verse.add(\a2 ->           [1891034, 1902022]);
    ~verse.add(\body ->         [1902022, 1919929]);
    ~verse.add(\down ->         [1923389, 1942924]);
    ~verse.add(\town ->         [1942517, 2006006]);
    ~verse.add(\I1 ->            [2047518, 2057692]);
    ~verse.add(\say1 ->          [2057692, 2076000]);
    ~verse.add(\you1 ->         [2072343, 2082721]);
    ~verse.add(\the2 ->          [2082721, 2091675]);
    ~verse.add(\best ->         [2091675, 2115076]);
    ~verse.add(\bestest ->      [2091675, 2138274]);
    ~verse.add(\lean ->         [2138274, 2147024]);
    ~verse.add(\for1 ->          [2159030, 2171900]);
    ~verse.add(\big ->          [2179176, 2197693]);
    ~verse.add(\kiss ->         [2197693, 2219874]);
    ~verse.add(\favourite ->    [2242054, 2266270]);
    ~verse.add(\perfume ->      [2268915, 2312258]);
    ~verse.add(\on ->           [2314293, 2356619]);
    ~verse.add(\play2 ->         [2374933, 2389585]);
    ~verse.add(\video2 ->        [2399963, 2433945]);
    ~verse.add(\games1 ->         [2433945, 2522057]);

    ~chorus = Dictionary[];
    ~chorus.add(\its ->             [2553394, 2565400]);
    ~chorus.add(\you2 ->             [2568249, 2595720]);
    ~chorus.add(\all1 ->             [2658192, 2685459]);
    ~chorus.add(\for2 ->             [2685459, 2696855]);
    ~chorus.add(\you3 ->            [2698890, 2720000]);
    ~chorus.add(\every ->           [2742233, 2782728]);
    ~chorus.add(\everything ->       [2742233, 2813251]);
    ~chorus.add(\I2 ->               [2812437, 2826885]);
    ~chorus.add(\do1 ->              [2826071, 2850693]);
    ~chorus.add(\tell1 ->            [2866972, 2883659]);
    ~chorus.add(\you4 ->            [2883642, 2893688]);
    ~chorus.add(\all2 ->             [2891188, 2902990]);
    ~chorus.add(\the3 ->             [2902990, 2912147]);
    ~chorus.add(\time ->            [2912837, 2945000]);
    ~chorus.add(\heaven ->          [2957119, 2982962]);
    ~chorus.add(\a3 ->               [2994154, 3002700]);
    ~chorus.add(\place ->           [3002700, 3024677]);
    ~chorus.add(\on ->              [3028544, 3047875]);
    ~chorus.add(\earth ->           [3049096, 3067207]);
    ~chorus.add(\with1 ->            [3067207, 3081655]);
    ~chorus.add(\you5 ->            [3086335, 3126829]);
    ~chorus.add(\tell2 ->            [3130000, 3143923]);
    ~chorus.add(\me2 ->              [3143923, 3151452]);
    ~chorus.add(\all3 ->            [3154911, 3165289]);
    ~chorus.add(\things ->          [3175667, 3197441]);
    ~chorus.add(\want ->           [3216162, 3248517]);
    ~chorus.add(\wanna ->           [3216162, 3248517]);
    ~chorus.add(\you8 ->            [3199310, 3214078]);
    ~chorus.add(\do2 ->              [3250551, 3304031]);
    ~chorus.add(\I3 ->               [3302441, 3315668]);
    // ~chorus.add(\I ->               [~chorus[\I],[3302441, 3315668]]);
    ~chorus.add(\heard ->           [3315465, 3326860]);
    ~chorus.add(\that1 ->            [3326860, 3337442]);
    ~chorus.add(\like ->            [3346802, 3368169]);
    ~chorus.add(\the4 ->             [3367762, 3382413]);
    ~chorus.add(\bad ->             [3382413, 3410495]);
    ~chorus.add(\girls ->           [3410495, 3432472]);
    ~chorus.add(\honey ->           [3432268, 3519565]);
    ~chorus.add(\is1 ->              [3519565, 3539711]);
    ~chorus.add(\that2 ->            [3539711, 3559043]);
    ~chorus.add(\true ->            [3559043, 3603810]);
    ~chorus.add(\better ->          [3647764, 3670352]);
    ~chorus.add(\than ->            [3669933, 3681615]);
    ~chorus.add(\ever ->            [3693753, 3735062]);
    ~chorus.add(\even ->            [3737300, 3771283]);
    ~chorus.add(\knew ->            [3771283, 3807097]);
    ~chorus.add(\they ->            [3822766, 3832533]);
    ~chorus.add(\say2 ->            [3831877, 3845537]);
    ~chorus.add(\that3 ->            [3844946, 3859598]);
    ~chorus.add(\the5 ->            [3859187, 3864750]);
    ~chorus.add(\world ->           [3864481, 3890121]);
    ~chorus.add(\was ->             [3889511, 3901720]);
    ~chorus.add(\built ->           [3902534, 3929395]);
    ~chorus.add(\for3 ->             [3929395, 3944249]);
    ~chorus.add(\two ->             [3945674, 3985151]);
    ~chorus.add(\too ->             [3945674, 3985151]);
    ~chorus.add(\to ->             [3945674, 3985151]);
    ~chorus.add(\only ->            [3993291, 4024035]);
    ~chorus.add(\worth ->            [4026017, 4038325]);
    ~chorus.add(\living1 ->          [4038058, 4081198]);
    ~chorus.add(\if ->              [4081198, 4096867]);
    ~chorus.add(\some ->            [4096867, 4122710]);
    ~chorus.add(\somebody ->        [4096867, 4215705]);
    ~chorus.add(\is2 ->             [4235444, 4256403]);
    ~chorus.add(\love ->            [4257421, 4278000]);
    ~chorus.add(\loving ->          [4256403, 4301782]);
    ~chorus.add(\you6 ->            [4301557, 4338489]);
    ~chorus.add(\baby ->            [4405969, 4426114]);
    ~chorus.add(\now ->             [4426114, 4446463]);
    ~chorus.add(\you7 ->             [4449394, 4465142]);
    ~chorus.add(\do3 ->              [4463760, 4510563]);

    ~verse2 = Dictionary[];
    ~verse2.add(\singing ->         [4808635, 4834643]);
    ~verse2.add(\in2 ->              [4837673, 4846510]);
    ~verse2.add(\the6 ->             [4846510, 4855600]);
    ~verse2.add(\old ->             [4860145, 4876053]);
    ~verse2.add(\bar ->             [4878830, 4894485]);
    ~verse2.add(\are ->              [4881981, 4895969]);
    ~verse2.add(\swinging2 ->        [4898526, 4918221]);
    ~verse2.add(\with2 ->            [4918221, 4931351]);
    ~verse2.add(\the7 ->             [4931351, 4940441]);
    ~verse2.add(\stars1 ->           [4960136, 4987658]);
    ~verse2.add(\star1 ->           [4960136, 4985000]);
    ~verse2.add(\living2 ->          [4987406, 5008869]);
    ~verse2.add(\for4 ->             [5008869, 5018716]);
    ~verse2.add(\the8 ->             [5018716, 5025786]);
    ~verse2.add(\fame ->            [5029826, 5074266]);
    ~verse2.add(\kissing ->         [5158349, 5182842]);
    ~verse2.add(\in3 ->              [5182842, 5190922]);
    ~verse2.add(\the9 ->             [5190922, 5201119]);
    ~verse2.add(\blue ->            [5202790, 5218950]);
    ~verse2.add(\dark ->            [5220212, 5241422]);
    ~verse2.add(\playing1 ->         [5247735, 5267430]);
    ~verse2.add(\pool ->            [5269197, 5278288]);
    ~verse2.add(\wild ->            [5290155, 5310608]);
    ~verse2.add(\darts ->           [5310608, 5330050]);
    ~verse2.add(\video3 ->           [5334090, 5369188]);
    ~verse2.add(\game2 ->            [5375501, 5420446]);
    ~verse2.add(\heholds ->         [5495691, 5518669]);
    ~verse2.add(\me3 ->              [5518669, 5528769]);
    ~verse2.add(\arms ->            [5570179, 5591137]);
    ~verse2.add(\drunk ->           [5595429, 5608307]);
    ~verse2.add(\seeing ->          [5635072, 5653505]);
    ~verse2.add(\stars2 ->          [5654767, 5680017]);
    ~verse2.add(\star2 ->          [5654767, 5677500]);
    ~verse2.add(\think ->           [5728245, 5748950]);
    ~verse2.add(\watching2 ->        [5848941, 5872423]);
    ~verse2.add(\friends ->         [5892876, 5918126]);
    ~verse2.add(\fall ->            [5919136, 5940094]);
    ~verse2.add(\falling ->         [5919136, 5948426]);
    ~verse2.add(\Paul ->            [6000694, 6017864]);
    ~verse2.add(\this ->            [6023671, 6034024]);
    ~verse2.add(\idea ->            [6054729, 6084524]);
    ~verse2.add(\of ->              [6092604, 6109522]);
    ~verse2.add(\fun ->             [6110532, 6143105]);
    ~verse2.add(\playing2 ->        [6175425, 6197392]);
    ~verse2.add(\video4 ->          [6196536, 6234742]);
    ~verse2.add(\games2 ->          [6237975, 6309685]);

    ~lyrics = Dictionary[];
    [~verse, ~chorus, ~verse2].do { |item, i|
          item.keysValuesDo { |key, value|
            ~lyrics.add(key -> value);
        };  
    };
    
    
    ~people = ["I", "you", "they"];
    ~feelings = ["love", "like", "want", "say", "play with", "take", "kiss"];
    ~prefixs = ["my", "his", "your"];
    ~descriptions = ["big", "best", "bad", "bestest", "fast", "favourite", "swinging", "old", "blue", "wild", "drunk"];
    ~objects = ["swinging", "car", "yard", "whistling", "video", "video games", "games", "sundress", "undressed", "kiss", "perfume", "play", "everything", "heaven", "you", "honey", "world", "living", "somebody", "beer", "love", "loving", "baby", "me", "singing", "bar", "stars", "fame", "kissing", "pool", "darts", "friends", "falling", "playing", "arms", "body"];
    ~singular = ["singing", "bar", "fame", "kissing", "playing", "pool", "car", "swinging", "yard", "whistling", "sundress", "body", "kiss", "beer", "love", "loving"];
    ~plural = ["friends", "arms"];

};

~setRoutines = {
    
    Tdef(\intro, {
        {
            m.currentTime_(3);
            m.start;
        }.fork(AppClock);
        ~note.([3, 7.3]);
        4.3.wait;
        ~note.(~introNotes[0]);

        (~introNotes[0][1] - ~introNotes[0][0]).wait;

        7.do{|i|
            var count = 1;
            var note = ~introNotes.choose;

            if(0.1.coin) {
                count = 2;
            };

            if(i==2) {
                count = 2;
            };
            if(i==6) {
                count = 4;
            };
            count.do { |j|
                ~note.([note[0], (note[0] + ((note[1] - note[0]) / count))*1.01]);
                (1/count).wait;            
            };
        };

        ~note.(~introNotesEnd);
        (~introNotesEnd[1] - ~introNotesEnd[0]).wait;

        inf.do{|i|
            var count = 1;
            var note = ~introNotes2.choose;

            if(0.1.coin) {
                count = 2;

                if(0.33.coin) {
                    count = 4
                };
            };
            if(i==2) {
                count = 2;
            };
            if(i==6) {
                count = 4;
            };
            count.do { |j|
                ~note.([note[0], (note[0] + ((note[1] - note[0]) / count))*1.01]);
                (1/count).wait;            
            };

            if(i == 7) {
                ~noteRandom = true;
                Tdef(\Kick).play(quant:Quant(1));
            };

            if(i == 12) {
                Tdef(\Pedal).play(quant:Quant(1));
            };

            if(i == 16) {
                Tdef(\Snare).play(quant:Quant(4));
                Tdef(\Hats).play(quant:Quant(1));
            };
            
            if(i == 24) {
                Tdef(\SnareRush).play(quant:Quant(4));
            };
        };
    });
    
    Tdef(\outro, {
        var totalCount;
        {~text.string_("")}.fork(AppClock);
        
        ~verb.set(\amp, 0.5);
        ~verb.set(\mix, 0.5);
        ~verb.set(\room, 0.4);

        ~verbamp = 0.5;
        ~verbmix = 0.5;
        ~verbroom = 0.4;
        totalCount = ~outroNotes.size + (~outroNotes2.size*2);
        
        [~outroNotes, ~outroNotes2].do { |item, i|
            var repeats = item.size*(i+1);
            repeats.do { |j|
                var sumCount;
                var choice = item.choose;
                var times = j + 1;
                
                
                if(item == ~outroNotes) {
                    sumCount = j;
                } {
                    sumCount = ~outroNotes.size + j                    
                };

                ~kickAmp    = sumCount.linlin(0, totalCount-10, 0.85, 0);
                ~kickAmp    = sumCount.linlin(0, totalCount-10, 0.85, 0);
                ~hatsAmp    = sumCount.linlin(0, totalCount-10, 0.2;, 0);
                ~pedalAmp   = sumCount.linlin(0, totalCount-10, 0.45, 0);
                ~rushAmp    = sumCount.linlin(0, totalCount-10, 0.45, 0);
                ~snareAmp   = sumCount.linlin(0, totalCount-10, 0.8, 0);
                ~backingAmp = sumCount.linlin(0, totalCount-10, 0.5, 0);
                ~fastVoxAmp = sumCount.linlin(0, totalCount-10, 1.5, 0);

                if(item == ~outroNotes2) {
                    choice = item.wchoose([1,1,1,1,1,3,1].normalizeSum);
                    if(Tdef(\Vox).isPlaying) {
                        Tdef(\Vox).stop;
                        {~text.string_("")}.fork(AppClock);
                    };
                };
                ~verbamp = ~verbamp - 0.025;
                ~verbroom = ~verbroom + 0.025;
                ~verbmix = ~verbmix + 0.025;
                ~verb.set(\amp, ~verbamp);
                ~verb.set(\room, ~verbroom);
                ~verb.set(\mix, ~verbmix);

                times.do { |k|
                    Synth(\DelRayer, [\buf, b, \start, choice[0], \end, choice[1], \trim, 0.03, \pan, 0, \amp, 1, \out, ~verbBus]);
                    {
                        m.currentTime_(choice[0]/b.sampleRate);
                        m.start;
                    }.fork(AppClock);            
                    (1/times).wait;
                };
            };

            if(item == ~outroNotes2) {
                {
                    ~text.align_(\center); 
                    ~text.string_("www.molocollective.com");
                    m.stop;
                    1.wait;
                    m.path_("/Users/arthurc/Documents/programming/computerMusic/fuckhead/images/logo.png");
                }.fork(AppClock);
            };
            Synth(\DelRayer, [\buf, b, \start, item.last[0], \end, item.last[1], \trim, 0.03, \pan, 0, \amp, 1, \out, ~verbBus]);
            ((item.last[1] - item.last[0]) / b.sampleRate).wait;
        };
    });


    Tdef(\Kick, {
        inf.do{
            Synth(\DelDrumPlayer, [\buf, ~kick, \out, 0, \amp, ~kickAmp * ~kickMult]);
            0.5.wait;
        }
    });

    Tdef(\Pedal, {
        0.25.wait;
        inf.do{
            Synth(\DelDrumPlayer, [\buf, ~pedals.choose, \amp, ~pedalAmp * ~pedalMult, \out, 0]);        
            0.5.wait;
        }
    });

    Tdef(\Snare, {
        var offset = (0.01,0.02..0.04).choose;
        var out = ~snareBus;
        1.wait;
        inf.do{|i|
            var count = 0;
            var wait = 1;
            Synth.before(~snareVerb, \DelDrumPlayer, [\buf, ~snaresLeft[5..8].choose, \out, out, \amp, ~snareAmp * ~snareMult]);
            offset.wait;
            count = count + 1;
            Synth.before(~snareVerb, \DelDrumPlayer, [\buf, ~snaresRight[5..8].choose, \out, out, \amp, ~snareAmp * ~snareMult]);

            if(i%4 == 3 && 0.5.coin) {
                wait = 0.5;
                0.25.wait;
                Synth.before(~snareVerb, \DelDrumPlayer, [\buf, ~snaresLeft[0..7].choose, \out, out, \amp, ~snareAmp * ~snareMult]);
                0.125.wait;
                Synth.before(~snareVerb, \DelDrumPlayer, [\buf, ~snaresRight[0..7].choose, \out, out, \amp, ~snareAmp * ~snareMult]);
                0.125.wait;
            };

            (wait-(offset*count)).wait;
        }
    });

    Tdef(\Hats, {
        0.375.wait;
        inf.do {
            var choice = ~hats.choose;
            Synth(\DelDrumPlayer, [\buf, choice, \amp, ~hatsAmp * ~hatsMult, \out, 0]);
            0.5.wait;
        }
    });

    Tdef(\SnareRush, {
        var amps = (0.05, 0.1..0.5) ++ (0.5, 0.45..0.1);
        var amp;
        inf.do {|i|
            var collection;
            amp = amps.wrapAt(i);
            if(i.asInteger.even) {
                collection = ~snaresRight[0..4];
            } {
                collection = ~snaresLeft[0..4];
            };
            Synth(\DelDrumPlayer, [\buf, collection.choose, \amp, amp*~rushAmp * ~rushMult, \out, 0]);
            0.125.wait;
        }
    });
    
    Tdef(\Vox, {
        {~text.string_(""); ~text.align_(\center);}.fork(AppClock);

        inf.do {
            var symbol = ~lyrics.keys.choose;
            var choice = ~lyrics[symbol];
            var wait;
            var dur;
            var word;

            dur = ~wordDur;
            wait = dur;
            if(dur >= 1) {
                dur = dur/2;
            };
            if(choice[0].isArray) {
                choice = choice.choose;
            };


            {
                word = symbol.asString;
                10.do { |i|
                    word = word.replace(i.asString, "");
                };
                m.currentTime_(choice[0] / b.sampleRate);
                m.start;
                ~text.string_(word);

            }.fork(AppClock);

            if(~shiftChance.coin) {
                Synth.before(~shift, \DelRayer, [\buf, b, \start, choice[0], \end, choice[0] + (dur * b.sampleRate), \trim, 0.03, \pan, [1, -1].choose, \amp, 1.5, \out, ~shiftBus]);            
            } {
                Synth(\DelRayer, [\buf, b, \start, choice[0], \end, choice[0] + (dur * b.sampleRate), \trim, 0.03, \pan, [1, -1].choose, \amp, ~fastVoxAmp]);

            };


            // if(0.5.coin) {
            //     Synth(\DelRayer, [\buf, b, \start, choice[0], \end, choice[0] + (dur * b.sampleRate), \trim, 0.03, \pan, [1, -1].choose, \amp, 1.5]);
            // } {
            //     Synth(\DelRayer, [\buf, b, \start, choice[0], \end, choice[0] + (dur * b.sampleRate), \trim, 0.03, \pan, [1, -1].choose, \amp, 1.5, \out, ~shiftBus]);            
            // };

            wait.wait;
        }
    });    
};

~setGUI = {{
    w = Window("", Rect(100, 100, 1280, 760)).front;
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
    ~text.font_(Font("Helvetica", 30));        

    ~lyricsComp = CompositeView(w, Rect(1000, 0, 280,760));
    ~lyricsLabelFont = Font("Helvetica", 15);
    ~lyricsTextFont = Font("Helvetica", 15);

    ~peopleString = "I  you  your  they  friends  me  my  his  girls  Paul";
    
    ~peopleLabel = SCStaticText(~lyricsComp, Rect(10, 5, 49, 19)).string_("People:").font_(~lyricsLabelFont);
    ~peopleLabel.stringColor_(Color(0.8,0.8,0));

    ~peopleText = StaticText(~lyricsComp, Rect(20, 4, 260, 60))
        .string_(~peopleString)
        .font_(~lyricsTextFont)
        .stringColor_(Color.white);

    ~actionsString = "say  think  knew  heard  fall  kissing  falling  seeing  swinging  pull  whistling  watching  play  playing  living  singing  loving  tell  pull  lean";
    ~actionsLabel = StaticText(~lyricsComp, Rect(10, 63, 53, 19)).string_("Actions:").font_(~lyricsLabelFont);
    ~actionsLabel.stringColor_(Color(0.8,0.8,0));

    ~actionsText = StaticText(~lyricsComp, Rect(20, 25, 260, 140))
        .string_(~actionsString)
        .font_(~lyricsTextFont)
        .stringColor_(Color.white);

    ~thingsString = "earth  car  yard  video  games  sundress  kiss  perfume  everything  heaven  honey  world  somebody  beer beers  love  baby  bar  stars  fame  pool  darts  arms  body  star  town";
    ~thingsLabel = StaticText(~lyricsComp, Rect(10, 167, 48, 19)).string_("Things:").font_(~lyricsLabelFont);
    ~thingsLabel.stringColor_(Color(0.8,0.8,0));

    ~thingsText = StaticText(~lyricsComp, Rect(20, 110, 260, 180))
        .string_(~thingsString)
        .font_(~lyricsTextFont)
        .stringColor_(Color.white);

    ~descriptionsString = "fun  better  big  best  bad  bestest  fast  favourite  old  blue  wild  drunk  dark";
    ~descriptionsLabel = StaticText(~lyricsComp, Rect(10, 286, 86, 19)).string_("Descriptions:").font_(~lyricsLabelFont);
    ~descriptionsLabel.stringColor_(Color(0.8,0.8,0));

    ~descriptionsText = StaticText(~lyricsComp, Rect(20, 290, 260, 60))
        .string_(~descriptionsString)
        .font_(~lyricsTextFont)
        .stringColor_(Color.white);

    ~feelingsString = "love  like  want  say  play  with  take  kiss";
    ~feelingsLabel = StaticText(~lyricsComp, Rect(10,350, 260, 19)).string_("Feelings:").font_(~lyricsLabelFont);
    ~feelingsLabel.stringColor_(Color(0.8,0.8,0));
    ~feelingsText = StaticText(~lyricsComp, Rect(20, 355, 260, 56))
        .string_(~feelingsString)
        .font_(~lyricsTextFont)
        .stringColor_(Color.white);

    ~miscString = "its    on    the    are    too    to  on  a  of  in  if  do  for  is  all  time  worth  ever  things  that  than  built  now  name up  game undressed  true  over  down  wanna  here  open  was  every  get  even  heholds  some  idea back  two  only  this  place";        
    ~miscLabel = StaticText(~lyricsComp, Rect(10, 411, 260, 19)).string_("Misc:").font_(~lyricsLabelFont);
    ~miscLabel.stringColor_(Color(0.8,0.8,0));

    ~miscText = StaticText(~lyricsComp, Rect(20, 320, 260, 250))
        .string_(~miscString)
        .font_(~lyricsTextFont)
        .stringColor_(Color.white);
    
    ~logoImage = SCImage.new("/Users/arthurc/Documents/programming/computerMusic/fuckhead/images/logocrop.png");
    ~logoView = UserView(~lyricsComp, Rect(75, 580, 130, 130))
        .backgroundImage_(~logoImage);

    ~linkText = StaticText(~lyricsComp, Rect(30, 600, 260, 260))
        .string_("www.molocollective.com")
        .font_(Font("Helvetica", 20))
        .stringColor_(Color.white);
    
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
    ~kickView = UserView(~drumsComp, Rect(10, 100, 75, 75)).background_(Color.white).backgroundImage_(~kickImage);
    ~kickOn = true;
    
    ~kickView.mouseDownAction_({
        var alpha;
        if(~kickOn) {
            alpha = ~drumAlpha;
            ~kickMult = 0;
        } {
            alpha = 1;
            ~kickMult = 1;
        };

        ~kickOn = ~kickOn.not;
        ~kickView.backgroundImage_(~kickImage, alpha:alpha);
    });

    ~snareImage = SCImage.new("/Users/arthurc/Documents/programming/computerMusic/fuckhead/images/snare.jpg");
    ~snareView = UserView(~drumsComp, Rect(95, 100, 75, 75)).background_(Color.white).backgroundImage_(~snareImage);
    ~snareOn = true;
    ~snareView.mouseDownAction_({
        var alpha;
        if(~snareOn) {
            alpha = ~drumAlpha;
            ~snareMult = 0;
        } {
            alpha = 1;
            ~snareMult = 1;
        };

        ~snareOn = ~snareOn.not;
        ~snareView.backgroundImage_(~snareImage, alpha:alpha);
    });

    ~hatsImage = SCImage.new("/Users/arthurc/Documents/programming/computerMusic/fuckhead/images/hats.jpg");
    ~hatsView = UserView(~drumsComp, Rect(180, 100, 75, 75)).background_(Color.white).backgroundImage_(~hatsImage);
    ~hatsOn = true;
    ~hatsView.mouseDownAction_({
        var alpha;
        if(~hatsOn) {
            alpha = ~drumAlpha;
            ~pedalMult = 0;
            ~hatsMult = 0;
        } {
            alpha = 1;
            ~pedalMult = 1;
            ~hatsMult = 1;
        };

        ~hatsOn = ~hatsOn.not;
        ~hatsView.backgroundImage_(~hatsImage, alpha:alpha);
    });

    ~brushesImage = SCImage.new("/Users/arthurc/Documents/programming/computerMusic/fuckhead/images/brushes.jpg");
    ~brushesView = UserView(~drumsComp, Rect(265, 100, 75, 75)).background_(Color.white).backgroundImage_(~brushesImage);
    ~brushesOn = true;
    ~brushesView.mouseDownAction_({
        var alpha;
        if(~brushesOn) {
            alpha = ~drumAlpha;
            ~rushMult = 0;
        } {
            alpha = 1;
            ~rushMult = 1;
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
    ~enterField = TextField(~vocalTabs.views[0], Rect(10, 10, ~vocalWidth-20, 40));
    ~enterField.font_(Font("Helvetica", 30));        
    ~enterField.string_("enter words from the list");
    ~strippedLyrics = ~lyrics.keys.collect { |item, i| 
        10.do { |j|
            item = item.asString.replace(j.asString, "")
        };
        item.asSymbol;
    };

    ~fieldStartButton = Button(~vocalTabs.views[0], Rect(240, 60, 150,30))
        .states_([
            ["Sing it!", Color.black, Color.new(0,0.7,0)],
            ["Stop singing!", Color.white, Color.new(0.7, 0, 0)]
        ])
        .action_({|button|
            switch (button.value)
                {1}  {
                    var func = {{~shitvox.(~enterField.value, callback:func)}.fork(AppClock)};
                    ~continueSentences = true;
                    
                    ~shitvox.(~enterField.value, callback:func);
                }
                {0}  {
                    ~continueSentences = false;
                };
            
        });
    
    ~enterField.keyDownAction_({|view, char, mod, uni, key|
        var split;
        if(char == $ ) {
            split = ~enterField.string.split($ );
            if(split.every { |item, i| ~strippedLyrics.includes(item.asSymbol)}.not) {
                ~enterField.stringColor_(Color.red);
            } {
                ~enterField.stringColor_(Color.black);
            };
            
        };
    });

    ~enterField.action_({|view|
        ~shitvox.(view.value);
    });

    ~currentSentence = nil;

    ~sentencesStartButton = Button(~vocalTabs.views[1], Rect(240, 60, 150,30))
        .states_([
            ["Start", Color.black, Color.new(0,0.7,0)],
            ["Stop", Color.white, Color.new(0.7,0,0)]        
        ])
        .action_({|button|
            switch (button.value)
                {1}  {
                    if(~sentencePlaying.not) {
                        ~currentSentence.();
                        ~continueSentences = true;
                    } {
                        
                        ~sentencesStartButton.valueAction_(0);
                    };
                }
                {0}  {
                    ~continueSentences = false;
                };
        });
    
    ~sentences = EZPopUpMenu.new(~vocalTabs.views[1],
        Rect(10, 10, ~vocalWidth-20, 30),
    	"Theme: ",
    	[	
    		'I love...'         ->  {|a| ~currentSentence = ~iLove},
    		'Your ___ is bad'   ->  {|a| ~currentSentence = ~isBad},
    		'You think...'      ->  {|a| ~currentSentence = ~youThink}
    	],
    	globalAction: {|a| ~sentencesStartButton.valueAction_(0); },
    	initVal: 1,
    	initAction: true,
    	labelWidth: 50,
    	labelHeight: 20,
    	layout: \horz,
    	gap: 2@2
    	);
    	
    ~sentences.setColors(stringColor:Color.white, menuStringColor:Color.white);

    ~speeds = [1, 0.5, 0.25, 0.125, 0.0625];
    ~speedSpec = ControlSpec(0, 4, \lin, 1, 1); 	// controlSpec
    ~speedLabel = StaticText(~vocalTabs.views[2], Rect(10,10, 150, 30))
        .string_("Speed")
        .stringColor_(Color.white)
        .font_(Font("Helvetica", 20));
        
    ~slowLabel = StaticText(~vocalTabs.views[2], Rect(10, 65, 30, 20))
        .string_("Slow")
        .font_(Font("Helvetica", 12))
        .stringColor_(Color.white);
    ~speedSlider = Slider(~vocalTabs.views[2], Rect(40, 60, 150, 30))
    	.value_(0)
    	.action_({|slider|
    	    ~wordDur = ~speeds[~speedSpec.map(slider.value)];
    	});
	~fastLabel = StaticText(~vocalTabs.views[2], Rect(195, 65, 30, 20))
        .string_("Fast")
        .font_(Font("Helvetica", 12))
        .stringColor_(Color.white);
        
    ~speedsStartButton = Button(~vocalTabs.views[2], Rect(240, 60, 150,30))
        .states_([
            ["Start", Color.black, Color.new(0,0.7,0)],
            ["Stop", Color.white, Color.new(0.7,0,0)]        
        ])
        .action_({|button|
            switch (button.value)
                {1}  {
                    Tdef(\Vox).play(quant:Quant(1));
                }
                {0}  {
                    Tdef(\Vox).stop;
                };
            
        });
    
}.fork(AppClock)
};


~setFunctions = {    
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
        
        ~shitvox.(choice, callback:~iLove);
    };

    ~isBad = {
        ~shitvox.("your" + (["body", "body"] ++ ~singular).choose + "is1 bad", 0.25, callback:~isBad);
    };

    ~youThink = {
        ~shitvox.("you1 think your" + ["my big love", "big", "the best", "best", "fast", "swinging", "wild", "honey", "loving", "a star"].choose, 0.25, callback:~youThink) 
        
    };
    
    ~shitvox = {|words, quant=1, min=0.25, callback|{
        var wordsplit = words.split($ );
        ~sentencePlaying = true;
        wordsplit.do { |item, i|
            var word;
            var dur;
            var symbol;
            var split, numbers, integers, choice;
            var string = "";
            
            item = item.replace("?", "");
            if(item.includes($[)) {
                split = item.split($[);
                numbers = split[1].tr($], '');
                numbers = numbers.split($-);
                integers = Array.newClear(2);
                numbers.do { |item, i|
                    if(item.isString) {
                        integers[i] = item.asInteger;
                    } {
                        integers[i] = item.digit;
                    };            
                };
                choice = (integers[0]..integers[1]).choose;
                // "choice: ".post; (choice).postln;
                symbol = split[0] ++ choice;
                symbol = symbol.asSymbol;
            } {
                symbol = item.asSymbol;        
            };
            // "symbol: ".post; (symbol).postln;
            word = ~lyrics[symbol];
            if(word.isNil) {
                word = List[];
                10.do { |i|
                    var attempt = ~lyrics[(symbol ++ (10-i)).asSymbol];
                    if(attempt.notNil) {
                        word.add(attempt);
                    };
                };
                if(word.size >= 1) {
                    word = word.choose;
                } {
                    word = nil;
                };
            };
            // "word: ".post; (word).postln;
            // item.postln;

            if(~text.notNil) {
                {
                    wordsplit[0..i].do { |jtem, j|
                        var rep = jtem;
                        10.do { |i|
                            rep = rep.replace(i.asString, "");
                        };

                        rep = rep.replace("[", "");
                        rep = rep.replace("]", "");
                        rep = rep.replace("-", "");
                        if(rep == "its") {
                            rep = "it's";
                        };

                        string = string + rep;
                    };
                    ~text.string_(string);

                }.fork(AppClock);
            };

            if(word[0].isArray) {
                word = word.choose;
            };

            if(word[0] >= 2553394 && (word[0] <= 4463760)) {
                if((1/3).coin) {
                    word = word + 3801194;
                } {
                    if((1/3).coin) {
                        word = word + 6391691;
                    };                
                };
            };

            Synth.before(~verb, \DelRayer, [\buf, b, \start, word[0], \end, word[1], \trim, 0.03, \pan, 0, \out, ~verbBus, \amp, ~voxAmp]);
            // Synth(\DelRayer, [\buf, b, \start, word[0], \end, word[1], \trim, 0.03, \pan, 0]);
            dur = ((word[1] - word[0]) / b.sampleRate).round(min).max(min);
            // dur = (((word[1] - word[0]) / b.sampleRate) * 4).ceil / 4;

            // if(symbol == \beer) {
            //     dur = 0.75;
            // };
            // dur = ((word[1] - word[0]) / b.sampleRate);
            if(m.notNil) {
                {
                    m.currentTime_(word[0]/b.sampleRate);
                    m.start;
                }.fork(AppClock);
            };
            dur.wait;
            // 1.wait;
        };
        
        if(~continueSentences) {
            callback.();
        };
        ~sentencePlaying = false;
        
    }.fork(quant:Quant(quant));
    };
    
    ~note = {|times|
        var vTime;
        Synth(\DelRayer, [\buf, b, \start, times[0]*b.sampleRate, \end, times[1]*b.sampleRate, \trim, 0.03, \pan, 0, \amp, ~backingAmp, \out, 0]);
        if(~noteVideo) {
            if(~noteRandom) {
                vTime = b.duration.rand;
            } {
                vTime = times[0]
            };

            {
                m.currentTime_(vTime);
                m.start;
            }.fork(AppClock);
        };
    };
};

~setIntroOutroNotes = {
    ~introNotes = [
        [7.3, 8.3],
        [8.3, 9.25],
        [9.25, 10.25],
        [10.25, 11.2],
        [11.2, 12.2],
        // [12.2, 13.2]
        [12.2, 15.13]
    ];

    ~introNotesEnd = [13.2, 15.13];

    ~introNotes2 = [
        [15.15, 16.15],
        [16.15, 17.15],
        [17.15, 18.2],
        [18.2, 19.2],
        [19.2, 20.15],
        [20.15, 21.2],
        [21.2, 22.2],
    ];

    ~outroNotes = [
        [11553732, 11597444],
        [11598173, 11639699],
        [11640427, 11684073],
        [11684073, 11726283],
        [11726853, 11769633],
        [11769633, 11899686]
    ];

    ~outroNotes2 = [
        [11899686, 11942466],
        [11942466, 11985246],
        [11986387, 12028027],
        [12028597, 12071948],
        [12072518, 12116439],
        [12116439, 12158649],
        [12158649, b.numFrames]
    ];
};

~loadBuffers = {
    b = Buffer.read(s, "sounds/videogames.wav");
    ~kick = Buffer.read(s, "sounds/brushKit/a01_cakbasdrm_11.wav");
    ~pedals = nil!4;
    4.do { |i|
        ~pedals[i] = Buffer.read(s, "sounds/brushKit/a05_cak_ped_0"++(i+1)++".wav");
    };
    ~snares = [Buffer.read(s, "sounds/brushKit/jkbsnr_opn_r18.wav"), Buffer.read(s, "sounds/brushKit/jkbsnr_opn_l18.wav")];

    ~hatsList = "sounds/brushKit/jkbhht_cls_*".pathMatch;
    ~hats = nil!4;

    ~hats.size.do { |i|
        ~hats[i] = Buffer.read(s, ~hatsList[i]);
    };

    ~snareLeftList = "sounds/brushKit/jkbsnr_opn_l*".pathMatch;
    ~snaresLeft = nil!~snareLeftList.size;
    ~snareRightList = "sounds/brushKit/jkbsnr_opn_r*".pathMatch;
    ~snaresRight = nil!~snareRightList.size;
    ~snareLeftList.do { |item, i|
        ~snaresLeft[i] = Buffer.read(s, item);
    };
    ~snareRightList.do { |item, i|
        ~snaresRight[i] = Buffer.read(s, item);
    };

    
};

~setSynths = {
    ~snareVerb = Synth(\SnareVerb, [\in, ~snareBus]);
    ~verb = Synth(\DelVerb, [\in, ~verbBus, \amp, 0.5, \mix, 0.5, \room, 0.4]);
    ~shift = Synth(\VocalShift, [\in, ~shiftBus, \pitch, 2, \amp, 1.5]);
};

~addSynthDefs = {
    SynthDef(\DelRayer) { |buf=0, out=0, start=0, end=0, rate=1, pan=0, trim=0.05, amp=1|
        var phase = Phasor.ar(0, BufRateScale.kr(buf)*rate, start, end);
        var sig = BufRd.ar(2, buf, phase, 0, 4);
        var env = EnvGen.ar(Env.linen(trim, (((end-start)/BufSampleRate.kr(buf))/rate) - (trim*2), trim, amp), doneAction: 2);

        Out.ar(out,
            Pan2.ar(sig*env, pan);
        );
    }.add;

    SynthDef(\DelDrumPlayer) { |out=0, buf=0, amp=0.5, pan=0|
        var sig = PlayBuf.ar(2, buf, BufRateScale.kr(buf), doneAction:2);

        Out.ar(out,
            Pan2.ar(sig * amp, 0);
        );
    }.add;

    SynthDef(\DelVerb) { |in=0, out=0, mix=0.5, room=0.8, damp=0.1, amp=1|
        var sig = In.ar(in, 2);
        var verb = FreeVerb2.ar(sig[0], sig[1], mix, room, damp);

        Out.ar(out,
            Mix.ar([sig*amp, verb])
        );

    }.add;

    SynthDef(\VocalShift) { |in=0, out=0, pitch=0.5, amp=1, td=0.004|
        var sig = In.ar(in);
        var shift = PitchShift.ar(sig, 0.1, pitch, 0, td);

        Out.ar(out,
            Pan2.ar(shift*amp, 0);
        );
    }.add;

    SynthDef(\SnareVerb) { |in=0, out=0, del=0.96774193548387096774, mix=0.6, room=0.4, damp=0.8, amp=1|
        var sig = In.ar(in, 2);
        var verb = FreeVerb2.ar(sig[0], sig[1], mix, room, damp);

        Out.ar(out,
            Mix.ar([sig*amp, verb])
        );
    }.add;
       
};

s.waitForBoot {{
    ~addSynthDefs.();
    s.sync;
    ~loadBuffers.();    
    s.sync;
    ~setFunctions.();
    ~setVariables.();
    ~setGUI.();
    ~setRoutines.();
    ~setLyrics.();
    ~verbBus = Bus.audio(s, 2);
    ~snareBus = Bus.audio(s, 2);
    ~shiftBus = Bus.audio(s, 2);
    
    s.sync;
    ~setSynths.();
    
    ~setIntroOutroNotes.()
    
}.fork
};
