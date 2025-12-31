\version "2.24.4"

\header {
  title = "O Jesu, nomen dulce (SWV 285)"
  composer = "Heinrich Schütz (1585-1672)"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
}

\layout {
  \override Score.BarNumber.font-size = #1
  \override Score.DynamicTextSpanner.style = #'none
  \set Score.tempoHideNote = ##t
  indent = 20\mm
  short-indent = 0\mm
}

\include "SWV-308_staffs.ily"
 
%#(set-global-staff-size 14.14)
#(set-global-staff-size 15.87)
%#(set-global-staff-size 17.82)

\book {
  \score {  
   <<
     \sTenor
     \sBC
   >>
    \layout { }
    \midi {
      \tempo 2=52
    }
  }
}