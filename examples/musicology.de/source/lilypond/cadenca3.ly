\version "2.18.2"
\header { tagline = "" }
\include "inc.hanalysis.ly"
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
            bes8[ ^\markup { \hf T } bes']
            a[    ^\markup { \hfiTwo D \line{"3-3"\flat} "7" "8" } as] 
            g16.[ ^\markup { \hfi S \line{"3-3"\flat}  } ges32] |
            f8[   ^\markup { \hfiOne D \line{"8-7"} "7" } es] 
            d8.[  ^\markup { \hfi Dp \line{"3-3"\flat}  } des16] 
            c16.[ ^\markup { \hfiOne D \line{"5-3"} "7" } a32] | 
            bes4  ^\markup { \hf T } f'8 ^\markup { \hfOne D "7" } bes4 ^\markup { \hf T } |
            r8 f8 ^\markup { \hfOne D "7" } c f,4  | 
            r8 f' ^\markup { \hfOne D "7" } a,8 ^\markup { \hfiOne D \line{"3"} "7" } bes4 ^\markup { \hf T } | 
            r8  es8 ^\markup { \hfTwo S "5" "6" } f ^\markup { \hfOne D "7" } bes4 ^\markup { \hf T }
          \bar "||"
        }   
      }
    >>
  }
}

