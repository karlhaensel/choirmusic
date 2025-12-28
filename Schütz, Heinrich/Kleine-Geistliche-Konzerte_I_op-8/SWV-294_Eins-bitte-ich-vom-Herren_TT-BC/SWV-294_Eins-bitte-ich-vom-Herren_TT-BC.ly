\version "2.24.4"

\header {
  title = "Schaffe in mir, Gott, ein reines Herz (SWV 291)"
  composer = "Heinrich Schütz (1585-1672)"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
}

\layout {
  #(layout-set-staff-size 14.7) 
  \override Score.BarNumber.font-size = #1
  \override Score.DynamicTextSpanner.style = #'none
  \set Score.tempoHideNote = ##t
  indent = 20\mm
  short-indent = 0\mm
}

\include "SWV-291_staffs.ily"

\book {
  \score {  
   <<
     \new StaffGroup 
     <<
       \sSopran
       \sTenor
     >>
     \sBC
   >>
    \layout { }
    \midi {
      \tempo 2=72
    }
  }
}