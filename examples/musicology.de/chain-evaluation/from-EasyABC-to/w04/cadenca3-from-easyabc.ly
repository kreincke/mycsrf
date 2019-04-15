\version "2.7.40"
\header {
	crossRefNumber = "3"
	footnotes = ""
	tagline = "Lily was here 2.18.2 -- automatically converted from ABC"
	title = "Title"
}
voiceB =  {
\set Score.defaultBarType = ""

<<   bes'8    d''8    f''8   >>     r8 <<   ees'8    a'8    c''8   >> <<   c''8 
   ees''8    f''8   >> <<   bes'8    d''8    f''8   >>   
}
voiceC =  {
\set Score.defaultBarType = ""

    bes,8 ^"CT"   bes8    a8 ^"D7"   aes8    g16. ^"CS"   ges32    \bar "|"   
f8 ^"D7"   ees8    d8. ^"Dother"   des16    c16. ^"D7"   a,32    \bar "|"   
bes,4 ^"CT"   f8 ^"D"   bes4 ^"CT"   \bar "|"     r8   f8 ^"D7"   c8    f,4    
\bar "|"   r8   f8 ^"D7"   a,8 ^"D7"   bes,4 ^"CT"   \bar "|"   
}
voicedefault =  {
\set Score.defaultBarType = ""

% %score 1 2
 \tempo  4=45
 \time 5/8 \key bes \major 
}

\score{
    <<

	\context Staff="1"
	{
	    \voicedefault
	    \voiceB 
	}

	\context Staff="2"
	{
	    \voicedefault
	    \voiceC 
	}

    >>
	\layout {
	}
	\midi {}
}
