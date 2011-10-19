+ OSXPlatform {

	startupFiles {
//		var filename = "startup.rtf";
//		^[this.systemAppSupportDir +/+ filename, this.userAppSupportDir +/+ filename];
			// look for startup files inside the app Contents directory
		var filename = "startup.*";
		^(String.scDir +/+ filename).pathMatch;
	}

	startup {
		Document.implementationClass.startup;
		// make a server window for the internal if you like
        // Server.internal.makeWindow;
//		Server.local.makeWindow;
		// uncomment if you use a startup file
//		this.loadStartupFiles;
		// uncomment if you have multiple help files
//		Help.addToMenu;
	}
}

+ Main {
	startup {
		platform = this.platformClass.new;
		platform.initPlatform;

		super.startup;

		GUI.fromID( this.platform.defaultGUIScheme );
		GeneralHID.fromID( this.platform.defaultHIDScheme );

		// Set Server.default and the 's' interpreter variable to the internal server.
		// You should use the internal server for standalone applications --
		// otherwise, if your application has a problem, the user will
		// be stuck with a process, possibly making sound, that he won't know
		// how to kill.
		Server.default = Server.internal;
		interpreter.s = Server.default;

			// some folder paths that should point inside the app's Contents folder
		SynthDef.synthDefDir = String.scDir +/+ "synthdefs/";
		Archive.archiveDir = String.scDir;

		this.platform.startup;

		// from here on, you should customize what should happen...

		StartUp.run;

		// One can boot the server, then use .load to evaluate a file
		// OR - put things into a class... like the SCSA_Demo

        // Server.default.boot;
        {
            ~loadingWindow = Window("", Rect(100, 100, 1280, 760)).front;
            ~loadingWindow.view.background_(Color.black);
            ~loadingLanaImage = SCImage(String.scDir ++ "/DelRay/images/coverLarge.jpg");
            ~loadingLanaView = UserView(~loadingWindow, Rect(20, 174, 413, 413));
            ~loadingLanaView.backgroundImage_(~loadingLanaImage);
            ~loadingText = StaticText(~loadingWindow, Rect(440,0, 400, ~loadingWindow.bounds.height))
                .string_("Loading...")
                .stringColor_(Color.white)
                .align_(\center)
                .font_(Font("Lucida Grande", 40));
            ~loadingMoloImage = SCImage(String.scDir ++ "/DelRay/images/logoStart.png");
            ~loadingMoloView = UserView(~loadingWindow, Rect(847, 174, 413, 413));
            ~loadingMoloView.backgroundImage_(~loadingMoloImage);
            
        }.fork(AppClock);
        
        MP3.lamepath = String.scDir ++ "/DelRay/lame";
        MP3.curlpath = String.scDir ++ "/DelRay/curl";
        Server.default.options = Server.default.options.memSize_(2**16);
		Server.default.waitForBoot({
            (String.scDir ++ "/DelRay/intersetup.scd").load;
            Server.default.sync;
            {~loadingWindow.close}.fork(AppClock);
		});
        // close post window if user should not have it
        Document.listener.close
	}

}
