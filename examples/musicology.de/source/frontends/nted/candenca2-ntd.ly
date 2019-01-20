\header {
}

#(set-default-paper-size "a4")
StaffAVoiceA = \relative c' {
	 < fis d' >2  < fis dis' >  < b e >  < b f > | % 2
	 < b fis' >  < e g >  < e a >  < fis a > 
	\bar "|."
	
}

StaffALyricsA = \lyricmode{
	"T" "(D7)" "Sp7" "D79" " "" "" "" "
}
StaffA = \new Staff \relative c' {\clef treble\key d \major \time 4/2
	<<
		\new Voice = "one" { \StaffAVoiceA } 
	>>

}

StaffBVoiceA = \relative c' {
	 < d, a' >2  < b a' >  < d g >  < cis g' > | % 2
	 < d fis >^\markup {Tp }  < b d >^\markup {DD7 }  < a d >4 ( ^\markup {D4-3 }  < a cis > )   < d, d' >2^\markup {T } 
	\bar "|."
	
}

StaffB = \new Staff \relative c' {\clef bass\key d \major \time 4/2
	<<
		\new Voice = "one" { \StaffBVoiceA } 
	>>

}

\score {
	<<
	\new PianoStaff <<
		\StaffA
		\new Lyrics \lyricsto "one" { \StaffALyricsA }
	>>
	\StaffB
>>
	>>
	\layout { }
}
