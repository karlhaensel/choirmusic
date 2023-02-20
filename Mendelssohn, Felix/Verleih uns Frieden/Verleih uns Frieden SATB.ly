\version "2.24.00"

\header {
  title = "Verleih uns Frieden"
  composer = "Felix Mendelssohn Bartholdy (1809-1847)"
  poet = "Martin Luther (1483-1546)"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
}

\layout { 
  \override Score.BarNumber.font-size = #2
  \context {
    \Voice
    \consists "Melody_engraver"
  }
}

chormidi = \with {midiInstrument = "choir aahs"}

global_transpose = {
  \time 3/4
  \tempo "Andante"
}

global = {
  \key es \major
  \global_transpose
}

global_voice = {
  \dynamicUp
  \autoBeamOff
}

\include "Verleih uns Frieden_staffs.ily"


\book {
  \bookOutputSuffix "choirScore"
  \score {
    <<
    \accidentalStyle Score.modern % damit Erinnerungsvorzeichen nächster Takt
    \override Score.DynamicTextSpanner.style = #'none
    \new ChoirStaff <<
      \removeWithTag #'score {\compressEmptyMeasures \sSopran}
      \removeWithTag #'score {\compressEmptyMeasures \sAlt}
      \removeWithTag #'score {\compressEmptyMeasures \sTenor}
      \removeWithTag #'score {\compressEmptyMeasures \sBass}
    >>
    >>
    \layout {
      #(layout-set-staff-size 16.7)
      \context {
        \Staff \RemoveEmptyStaves
      }
    }
    \midi {
      \tempo 4=90
    }
  }
}


% \book {
%   \bookOutputSuffix "vocalScore"
%   \score {
%     <<
%     \accidentalStyle Score.modern % damit Erinnerungsvorzeichen nächster Takt
%     \override Score.DynamicTextSpanner.style = #'none
%     \new ChoirStaff <<
%       \removeWithTag #'part \killCues \sSopran
%       \removeWithTag #'part \killCues \sAlt
%       \removeWithTag #'part \killCues \sTenor
%       \removeWithTag #'part \killCues \sBass
%     >>
%     \new PianoStaff
%     <<
%       \sRechts
%       \dKlavierauszug
%       \sLinks
%     >>
%     >>
%     \layout {
%       #(layout-set-staff-size 16)
%       \context {
%       }
%     }
%     \midi {
%       \tempo 4=90
%     }
%   }
% }


\book {
  \bookOutputSuffix "Score"
  \score {
    <<
    \accidentalStyle Score.modern % damit Erinnerungsvorzeichen nächster Takt
    \override Score.DynamicTextSpanner.style = #'none
    \new StaffGroup <<
      \sFlI
      \sFlII
      \sKlarI
      \sKlarII
      \sFag
    >>
    \new ChoirStaff <<
      \removeWithTag #'part \killCues \sSopran
      \removeWithTag #'part \killCues \sAlt
      \removeWithTag #'part \killCues \sTenor
      \removeWithTag #'part \killCues \sBass
    >>
    \new StaffGroup <<
      \sVioI
      \sVioII
      \sVla
      \sVcI
      \sVcII
      \sCb
    >>
    >>
    \layout {
      #(layout-set-staff-size 13.8)
      \context {
      }
      indent = 2.5\cm
    }
    \midi {
      \tempo 4=90
    }
  }
}
