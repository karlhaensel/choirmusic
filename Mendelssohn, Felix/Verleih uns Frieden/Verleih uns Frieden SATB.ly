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
  #(layout-set-staff-size 16) 
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
  \override DynamicTextSpanner.style = #'none % keine Striche/Punkt o.ä. nach cresc./dim. als Text
}

global = {
  \key es \major
  \global_transpose
}

global_voice = {
  \dynamicUp
  \autoBeamOff
  \override DynamicTextSpanner.style = #'none  
}

\include "Verleih uns Frieden_staffs.ily"


\book {
  \bookOutputSuffix "choirScore"
  \score {
    <<
    \accidentalStyle Score.modern % damit Erinnerungsvorzeichen nächster Takt
    \override Score.DynamicTextSpanner.style = #'none
    \new ChoirStaff <<
      \compressEmptyMeasures \sSopran
      \compressEmptyMeasures \sAlt
      \compressEmptyMeasures \sTenor
      \compressEmptyMeasures \sBass
    >>
    >>
    \layout {
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
%     \new ChoirStaff <<
%       \sSopran
%       \sAlt
%       \sTenor
%       \sBass
%     >>
%     \new PianoStaff
%     <<
%       \sRechts
%       \dKlavierauszug
%       \sLinks
%     >>
%     >>
%     \layout {
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
      \sSopran
      \sAlt
      \sTenor
      \sBass
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
      \context {
      }
      indent = 2.5\cm
    }
    \midi {
      \tempo 4=90
    }
  }
}
