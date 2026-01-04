\version "2.24.4"

\header {
  title = "Die Furcht des Herren ist der Weisheit Anfang (SWV 318)"
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

\include "SWV-318_staffs.ily"

%#(set-global-staff-size 14.14)  % very small
%#(set-global-staff-size 15.87)  % small
#(set-global-staff-size 17.82)  % "normal"

\book {
  \score {  
   <<
     \new ChoirStaff 
     <<
       \sTenorI
       \sTenorII
     >>
     \sBC
   >>
    \layout {}
    \midi {
      \tempo 2=100
    }
  }
}