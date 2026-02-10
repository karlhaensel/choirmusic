\version "2.24.4"

\include "Der-130-Psalm_voices.ily"
    

%#(set-global-staff-size 14.14)  % very small
#(set-global-staff-size 15.87)  % small
%#(set-global-staff-size 17.82)  % "normal"


\book {
  \header {
  title = "Der 130. Psalm"
  composer = "Heinrich Kaminski (1886-1946)" 
  opus = "op. 1a"
  tagline = ##f
  }
  \paper {
    #(set-paper-size "a4")
    scoreTitleMarkup = \markup \fill-line {
      \null
      \fontsize #5 \bold \fromproperty #'header:piece
      \null
    }  % piece mittig und fett gedruckt
  }
  \score {
    \header {
    piece = "I"
    }
    \new ChoirStaff <<
      \accidentalStyle Score.modern
      \sISopran
      \sIAlt
      \sITenor
      \sIBass
    >>
    \layout {
      \override Score.BarNumber.font-size = #1
    }
    \midi { }
  }
  \score {
    \header {
    piece = "II"
    }
    <<
      \sIISolo
    \new ChoirStaff <<
      \accidentalStyle Score.modern
      \sIISopran
      \sIIAlt
      \sIITenor
      \sIIBass
    >>
    >>
    \layout {
      \override Score.BarNumber.font-size = #1
    }
    \midi { }
  }
  \score {
    \header {
    piece = "III"
    }
    \new ChoirStaff <<
      \accidentalStyle Score.modern
      \sIIISopran
      \sIIIAlt
      \sIIITenor
      \sIIIBass
    >>
    \layout {
      \override Score.BarNumber.font-size = #1
    }
    \midi { }
  }
}