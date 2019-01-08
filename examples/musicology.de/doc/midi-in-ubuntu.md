# Was ich zur Nutzung von midi haben tun müssen:

Protokoll

* sudo apt-get install freepats
* gunzip /usr/share/doc/texlive-doc/latex/latex4wp/midifile.mid.gz
* sudo apt-get install timidity
* timidity midifile.mid (Soound ?)
* sudo apt-get install fluid-soundfont-gm
* sudo apt-get install fluid-soundfont-gs
* vi /etc/timidity/timidity.cfg
* replace source /etc/timidity/freepats.cfg _(erbärmlicher sound)_ 
  - by source /etc/timidity/fluidr3\_gm.cfg **(besser!!)** 
  - or source /etc/timidity/fluidr3\_gs.cfg _(falsche zuordnung)_ 
* sudo apt-get install timidity-interfaces-extra
* timidity -ig (abspielen über graphisches Interface

