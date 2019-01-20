# Was ich zur Nutzung von midi habe tun müssen:

1. gunzip /usr/share/doc/texlive-doc/latex/latex4wp/midifile.mid.gz
  test file
2. sudo apt-get install timidity
3. sudo apt-get install fluid-soundfont-gm
4. sudo apt-get install fluid-soundfont-gs
5. vi /etc/timidity/timidity.cfg
  * replace source /etc/timidity/freepats.cfg
  * by source /etc/timidity/fluidr3_gm.cfg
  * or source /etc/timidity/fluidr3_gs.cfg
6. sudo apt-get install timidity-interfaces-extra
7. > timidity -ig # (abspielen über graphisches Interface)

