﻿/** *	Router delegates to places */package net.southernlabs.arti323.planet_oogle.controllers {		import net.southernlabs.arti323.planet_oogle.controllers.places.*;	import net.southernlabs.arti323.planet_oogle.config.GameConfig;	import net.southernlabs.arti323.controllers.Controller;		import flash.events.Event;	import flash.display.MovieClip;			public class Router extends Controller {				private var c:MovieClip;						public function Router(place:String, container:MovieClip) {			c = container;			goto(place);		}				override public function goto(place:String):void {			if(place==GameConfig.PLACE_INTRO){				trace("=> "+place+" context constructed to delegate");				scene = new Intro();				scene.setRenderContainer(c);				scene.run();			}  else if(place==GameConfig.PLACE_CRATER_GRAVE){				trace("=> "+place+" context constructed to delegate");				scene = new CraterGrave();				scene.setRenderContainer(c);				scene.run();			} else {				throw new Error(place+" had no matching implementors for delegate to assign"); 			}		}	}}