#!/usr/bin/tclsh
set bd [pwd]
set dirs [glob *]
foreach dir $dirs {
    set files [glob -dir $dir *]
    foreach file $files {
        set oname [file tail $file]
        set fop "$bd/$dir/$oname"
        set fnp "$bd/$dir - $oname"
        file rename $fop $fnp
    }
}
