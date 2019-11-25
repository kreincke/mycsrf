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

    bes,8 ^"T"   bes8    a8 ^"D7"   aes8    g16. ^"S"   ges32    \bar "|"   f8 
^"D7"   ees8    d8. ^"Dp"   des16    c16. ^"D7"   a,32    \bar "|"   bes,4 ^"T" 
  f8 ^"D"   bes4 ^"T"   \bar "|"     r8   f8 ^"D7"   c8    f,4    \bar "|"   r8 
  f8 ^"D7"   a,8 ^"D7"   bes,4 ^"T"   \bar "|"   
}
voicedefault =  {
\set Score.defaultBarType = ""

% %score 1 2
 \tempo  8=90
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
