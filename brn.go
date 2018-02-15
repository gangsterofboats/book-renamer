package main

import (
	"fmt"
	"os"
	"io/ioutil"
)
	
func main() {
	bd, _ := os.Getwd()
	dirs, _ := ioutil.ReadDir(bd)
	for _, dir := range dirs {
		prnt := dir.Name()
		files, _ := ioutil.ReadDir(prnt)
		for _, file := range files {
			oname := file.Name()
			nname := prnt + " - " + oname
			fop := fmt.Sprintf("%s/%s/%s", bd, prnt, oname)
			fnp := fmt.Sprintf("%s/%s", bd, nname)
			os.Rename(fop, fnp)
		}
	}
}
