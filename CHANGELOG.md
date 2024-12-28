# CHANGES
Main changes come between v1 and v2. The v2 follows Pd Vanilla development, the v1 was based on Pd-extended which is obsolete.

## Issues
- Gem + Mac OS : 
	- [gemmacoswindow] failed to init GLEW: your system only supports openGL-1.0
	- dans [gemwin] > [pd window] > [gemdefaultwindow], remplacer gemmacoswindow par gemglutwindow (sierra/el capitan) ou gemglfw3window (big sur)
- [pix_video] on Windows 10 [source](https://lists.puredata.info/pipermail/pd-list/2017-09/120360.html) and on Mac OS X
- Arduino Firmata with Arduino Micro on Mac OS X
- [pix_snap]: "GEM: Someone sent a bogus pointer to copy2Image"
- [pix_video] on Xubuntu: error "v4l2: VIDIOC_S_FMT(fmt): Invalid argument"
- [pix_record]: "[schroenc] Warning: Discarding redundant sequence end code" + "intel_do_flush_locked failed: Invalid argument" + "Erreur de segmentation (core dumped)"
- [pix_record] on Xubuntu: [mjpeg] Warning: Encoding progressive video as interlaced. Motion JPEG-A is not suitable for progressive video.
- Arduino error : "arduino comport UNKNOWN_INPUT_COMMAND: 0 28672"


## v2.1 (2020.01)
- Pd.0.50.2 compatibility
- Updates dependencies
- Updates BrutBox patches and BrutBox presets

## v2 (2018.09)
- New website
- New architecture : soft, ide, abs, docs, hw
- New organisation : master, data, files (local paths management with [tof/path])
- Pd.0.48.2 compatibility
- Dependencies : list of dependencies and replacements if possible.
- Newest libraries : cyclone, pduino
- BrutBox project inside Malinette
- New BrutBox set of abstractions and projects with presets memorisation.
- New preset feature with "@" argument
- Few [arduino-master] objects can be in the same patch
- New abstractions : midi-pad, serializer, ...
- Debugs : cross-platform keycodes, initbang (new behavior since pd.0.47), dmx, [cyclone/gate] instead of [gate]
- Homogeneisation : audio-formant sounds, "on" messages
- Less graphics for simplest abstractions (rand, etc.)

## v1 (2017.09) 
- New folder organisation
- Coding factorisation : _mem, _count, ... to make modular code
- Traduction system (thanks to andrès claiman for ES traduction)
- GUI : some adjustments (delete outlets, expert button, font, ...), tclplugin EDIT MODE. 
- Script to change name of abstractions
- Updates : taptempo, g + [_mem] arguments, mouse with Gem, mem  : float > int, synth-drums/hat volume message, rand-sel : route bang, rand-del right inlet : list, min, delta, onoff inlet 1 float, audio-master limiter, audio-reverb : default value, audio-pitch : default value, synth-bass : argument, matrix sequencer : route list, gem-master, video-red-blob for MAC, script make_help.sh, chance 1 / 1000 (second argument)
- Debugs : hat volume, video-sampler recording time, track-area tracking separator
- Renaming : video-in > video-camera
- Presets [mem]
- Docs : OVERVIEW.html
- New : track-fiducials, ...

## v0.9 (2015.10.15)
- Add preferences files
- New: seq16-pulse, bang-line, hat2, examples BASICS, video-areas
- Debugs: video flip/rotate + tracking, audio-sampler phasor, video-sampler open, audio-delay4 route feedback, audio-xylo, audio-out rec, rotate video-in, seq16 toggle, presets for synth-bass and synth, avoid divided by 0 for track-areas, ...
- Udpates: kick, examples, sequencers, joystick, video-graph, video-rec+video-sampler, audio-sampler pitch mode + fade, update synth-wobble + synth, data-sampler let pass data, bang without sel 0, ....
- GUI: colors, flags, expert mode, m-patch 
- Renaming : synth-moog > audio-moog, audio-scratch (without adc~!) > audio-sampler-scratch, synth-wobblebass > synth-bass, synth-pluck > synth-string, audio-decimate > audio-lowfi

## v0.9 (2014/11/06)
* DEBUG : out/synth-wobblebass, gem-master debug [s $0-onoff-in], delete splitfilename in RECORD > S REC_FILE (bug if no extension)
* DEBUG for Mac OSX : [pix_rgba] inside [video-red-blob] (YUV error) and inside [video-halftone], automatic connection of Arduino when it is not Firmata inside (Bluetooth connection)
* NEW : website http://malinette.info with a lot of documentation !
* NEW : support English and French for Helps and Examples
* NEW : the [abstractions/include] abstraction to hold paths of abstractions
* NEW : the [docs/abs-template] abstraction to explain how to add abstractions to the Malinette
* NEW : synth-bassdrum help, between-help, synth-wobblebass-help, audio-ducker
* UPDATE : Be careful of new folders names. More simple : in, numbers, audio, video, out
* UPDATE : "_xp" folder to put experimental things : seq-counter2 bug, kinect,  ...
* UPDATE : other/scripts/make_help.sh to build OVERVIEW.html and menutree.txt (tclplugin) and add some CSS to print the .html
* UPDATE : mouse without "x-y", 3d-transform-help without colors commands, osc-in-touchosc > osc-in-phone, rec-data > data-sampler, synth-bassdrum
* UDPATE : logo
* HARDWARE : wood box update

## v0.88 (2014/06/20)
* NEW : oscillator, osc-in, audio-pitchdelay
* NEW : manual in french
* UPDATE : audio-cutoff (numbers limits 0-127 and 0-1)
* UPDATE : rec-data + help
* UPDATE : audio-freeze
* UPDATE : comment “installer osc-p5” + "andOSC" in processing examples
* UPDATE : video-in argument
* UPDATE : arduino-master test pin 13, arduino-analog-in and arduino-analog-out colors
* UPDATE : video-fx corrections (video-colors + video-colors-help + video-multifx-help)
* DEBUG : audio-sampler, osc-out
* HARDWARE : box minimalinette + webcam clamps

## v0.87 (2014/02/10)
* MAIN : resize canvas for Windows users (other/scripts/resize_canvas.sh)
* MALINETTE.pd : new layout, delete "your folders" + "update" + "about", update folders when you click on menus (examples, projects)
* FOLDERS : add a projects folder (for user patchs), reorganize examples, new absatractions/_xp for untested abstractions in development
* FX-VIDEO : add video-colors (car 2 colors = 1 qui ne marche pas)
* MASTER : debug pmenu : delete "$0-bang" > open twice
* MASTER : add menu instead of all buttons : delete size arguments replaced by argument (patchs or objects for the hcs/folder_list)
* HELP : some modifications
* WEBSITE : clarify the download page (windows XP driver, XQuarks for Mac OSX)
* 3d-object : delete moonlib/absolutepath ( ... couldn't create on Windows XP, Windows 8) : instead tof/path current
* copy of vera.tff in abstractions/out/ (text3d: cannot find font-file on Windows 8) and abstractions/in
* INCLUDE : save as feature ok with [iemguts/receivecanvas 1] - [route savefile]
* oscilloscope et oscilloscope~ - pas de resize, pas d'affichage du graph en dehors de l'abstraction
* gem-camera > video-camera
* MASTER :audio-master, gem-master + gem-options (debug quite video-record), arduino-master (send reset to arduino's objects + TO-ARDUINO, FROM-ARDUINO uppercase messages + debug - arduino: ERROR: unknown pinMode: none)
* analog-in : ui, bang reset, vu-meter -toggle
* delete seq-sliders8
* rec-data > rec-numbers
* audio-3q, audio-attackdecay, audio-volume harmonized
* video-crop help
* midi-hz > converter
* Processing skectches harmonized + add [osc-out]
* tclplugin updated
* multimeter > ohmeter

## v0.86 (2013/10)

* debug most of bugs known on Mac OS X
* substitute main.pd to MALINETTE.pd
* add script "./other/scripts/make_helps.pd" to make a single htlm page with all abstractions
* update "docs/OVERVIEW.html", the list of abstractions + css
* debug [audio-sampler] : problem with id-rec initiliazed to 0 instead of 1
* fill some helps
* MASTER : debug [arduino-master] >[comport] and Mac OS X. On Linux and MS Windows, the Arduino is connected automatically, on Mac OS X, you need to specify the port number and switch on.
* MASTER : new features in [gem-master] with "advanced" button: dimensions, offset and record a video (.mov only)
* MASTER : [audio-master], [line~] instead of [vline~]
* FILTER : add [notescale], [between]
* FX-VIDEO : add [video-stopmotion]
* OUT : [synth-pluck], [video-record]

## v0.85 (2013/06/02)
* new organisations of folders : examples (instead of presets), abstractions (fx-video, fx-audio), lib
* new main for all platform (substitue [tof/menubutton] with [tof/pmenu])
* new GUI button objects for menu in main.pd ([pbutton-menu], [pf])
* add helps for beginners in the main
* add helps for abstractions
* script in ./other/scripts to resize all examples and the main and save patch in ./png (with scrot program in Linux)
* tcplugins in ./other/tclplugins
* update processing-pd codes
* substitute the tmp.mov with a better video (crossplatform)
* add an icon in ./data
* update README.txt
* fix some bugs (seq-counters, media paths, synth-fm argument, audio-out argument, ...)
* IN : add key-makeymakey
* MASTER : arduino-master find the last serial port automatically, audio-master with rec file, gem-master label is SCREEN
* OUT : update arduino-out (remove gif numbers)
* OUT : add 3d-physics, audio-sampler, synth-bassdrum, synth-vowel
* TOOLS : add ohmmeter
* FX-AUDIO : add effects (compressor, 3eq, volume)
* test media paths in examples

## v0.84 (2012/12/30)

## v0.83 (2012/11/04)

## v0.82 (2012/10/12)
* chemins ../data à changer dans tous les patchs
* vérifier existence médias (violin.aif n'y est plus par exemple)
* synth-fm arguments, disposition
* audio-out argument
* button-folder à tester
* rec-number.pd a revoir

## v0.81 (2012/10/07)
* faire le ménage ? : oui (pas balafon.aiff, violin.aif, voice2.wav)
* Renommer les presets en examples ? : non
* Gérer les droits des fichiers. Certains non modifiables comme le main et preset-00-new.pd : non
* faire le ménage ! mettre que ce qui semble intéressant à réutiliser pour la suite : oui
* fond des presets : oui
* objets-master : afficher les noms des abstractions ou les renommer : non
* test l'objet [gamme] , renommer ? non
* oscilloscope.pd       ajouter la possibilité de visualisation de l'audio
* synth : meme interface que 3d-object : non
* objets gem : renommer les objets video 3d en gem ? : non
* video-multiimage.pd  renommer en gem-multiimage ? : non
* mettre à jour le README.txt (dates, dépendances, coding rules, etc.)
* mettre à jour [pd infos] dans le main ou bien lecture d'un fichier texte INFOS.txt : non
