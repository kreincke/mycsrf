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

  bes,8    bes8    a8    aes8    g16.    ges32    \bar "|"   f8    ees8    d8.  
  des16    c16.    a,32    \bar "|"   bes,4    f8    bes4    \bar "|"   r8   f8 
   c8    f,4    \bar "|"   r8   f8    a,8    bes,4    \bar "|"     r8   ees8    
f8    bes4    \bar "|"   
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
