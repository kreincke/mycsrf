\header {
}

#(set-default-paper-size "a4")
StaffAVoiceA = \relative c' {
	 < fis d' >2  < fis dis' >  < b e >  < b f > | % 2
	 < b fis' >  < e g >  < e a >  < fis a > 
	\bar "|."
	
}

StaffA = \new Staff \relative c' {\clef treble\key d \major \time 4/2
	<<
		\new Voice = "one" { \StaffAVoiceA } 
	>>

}

StaffBVoiceA = \relative c' {
	 < d, a' >2  < b a' >  < d g >  < cis g' > | % 2
	 < d fis >  < b d >  < a d >4 (   < a cis > )   < d, d' >2 
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
	>>
	\StaffB
>>
	>>
	\layout { }
}
