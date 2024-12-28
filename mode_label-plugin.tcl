# META NAME mode label
# META DESCRIPTION show label mode (edit or action) on canvas
# META AUTHOR Jerome Abel + ?
# META VERSION 0.1
# META LICENSE public domain

namespace eval ::modelabel:: { }

proc ::modelabel::show_hide {mytoplevel} {

    if {$mytoplevel eq ".pdwindow"} {return}
    if { ! [winfo exists $mytoplevel] } {return}
    set tkcanvas [tkcanvas_name $mytoplevel]
    #if {$tkcanvas eq "MALINETTE.pd"} {return}
    #pdtk_post $mytoplevel

    set labelId $mytoplevel.modelabel

    if { ! [winfo exists $labelId]} {
        $tkcanvas create text 8 12 -tags $labelId -font "arial 8 normal" -fill "#666666" -width 100 -anchor w
    }

    if {$::editmode($mytoplevel)} {
        $tkcanvas itemconfig $labelId -text "\[EDIT\]"
    } else {
        $tkcanvas itemconfig $labelId -text "\[ACTION\]"
     }
}

bind PatchWindow <<EditMode>> {+::modelabel::show_hide %W}
bind PatchWindow <<Loaded>> {+::modelabel::show_hide %W}
