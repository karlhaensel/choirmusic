\version "2.27.2"

\header {
  title = "Ist Gott für uns (SWV 329)"
  composer = "Heinrich Schütz (1585-1672)"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  page-count = 4
}

\layout {
  \override Score.BarNumber.font-size = #1
  \override Score.DynamicTextSpanner.style = #'none
  \set Score.tempoHideNote = ##t
  indent = 20\mm
  short-indent = 0\mm
}

\include "SWV-329_staffs.ily"

%#(set-global-staff-size 14.14)  % very small
#(set-global-staff-size 15.87)  % small
%#(set-global-staff-size 17.82)  % "normal"

\book {
  \score {  
   <<
     \new ChoirStaff 
     <<
      \sSopran
       \sAlt
       \sTenor
       \sBass
     >>
     \sBC
   >>
    \layout {}
    \midi {}
  }
}