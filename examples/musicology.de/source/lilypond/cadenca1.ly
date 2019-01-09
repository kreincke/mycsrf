\version "2.18.2"

\header { tagline = "" }

\score {
  \new Staff {
    \relative c' { 
      \time 3/1
      <c  e g>1 _\markup {I} ^\markup {T}
      <f a c>  _\markup {IV} ^\markup {S}
      <g b d>  _\markup {V} ^\markup {D}
      |
      <a, c e> _"I"         ^"T"
      <d f a>  _"IV"        ^"S"
      <e gis b> _"V"        ^"D"
      \bar "||"
    }   
  }
  
  \layout {
    \context {
      \Staff
        \remove Time_signature_engraver
    }
  }
  \midi {}
}

