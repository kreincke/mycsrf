\version "2.18.2"

\header { tagline = "" }

\score {
  \new StaffGroup {
    \time 4/2
    <<
      \new Staff {
        \relative d' {
          \clef "treble"
          \key d \major  
          \stemUp
          < fis  d'>2 
          < fis  dis'>2 
          < b  e>2 
          < b  e>2
          |
          < b fis'>2 
          < e gis >2 
          < e a >2
          < a fis>2       
          \bar "||"
        }   
      }
      \new Staff {
        \relative d { 
          \clef "bass"
          \key d \major  
          \stemDown
          < d a'>2 ^\markup {T}
          < b a'>2 ^\markup {(D7)}
          < d g>2 ^\markup {Sp7}
          < cis g'>2 ^\markup {D79}
          |
          < d fis>2 ^\markup {Tp}
          < b d>2  ^\markup {DD7}
          <<
            { a2 ^\markup {D4>3}}
            { d4( cis4) }
          >> 
          < d, d'>2 ^\markup {T}      
          \bar "||"
        }   
      }
    >>
  }
  \layout { }
  \midi {}
}

