\version "2.18.2"

\header { tagline = "" }

\score {
  \new StaffGroup {
    \time 5/8
    <<
      \new Staff {
        \relative c'' {
          \clef "treble"
          \key bes \major  
          \stemUp
          < bes d  f >4 < c  es f >4 < bes es bes'>8 |
          < c   es a >4 < a  f' a>4 < c   es f   >8 |         
          r8 < f, d' f >8 < a  c  es >8 < f bes d>4 |
          r8 < es a  c >4 < es a  c  >4|
          r8 < es a  c >8 < c' es f  >8 < bes d f >4 |
          r8  < g bes c >8 < es a c >8 <d f bes>4
        }   
      }
      \new Staff {
        \relative c { 
          \clef "bass"
          \key bes \major  
          \stemDown
            bes8[ bes'] a[ as] g16.[ ges32] |
            f8[ es] d8.[ des16] c16.[ a32] | 
            bes4  f'8 bes4 |
            r8 f8 c f,4  | 
            r8 f' a,8 bes4 | 
            r8  es8 f  bes4
          \bar "||"
        }   
      }
    >>
  }
  \layout { }
  \midi {}
}

