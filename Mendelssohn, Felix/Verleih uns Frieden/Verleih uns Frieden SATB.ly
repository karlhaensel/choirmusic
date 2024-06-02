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
}

chormidi = \with {midiInstrument = "choir aahs"}

global_transpose = {
  \time 3/4
  \tempo "Andante"
  \override Score.DynamicTextSpanner.style = #'none
  \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet
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
    \override Score.RehearsalMark.font-size = #6
    \new ChoirStaff <<
      \removeWithTag #'score {\compressEmptyMeasures \sSopran}
      \removeWithTag #'score {\compressEmptyMeasures \sAlt}
      \removeWithTag #'score {\compressEmptyMeasures \sTenor}
      \removeWithTag #'score {\compressEmptyMeasures \sBass}
    >>
    >>
    \layout {
      #(layout-set-staff-size 16)
      \override Score.BarNumber.font-size = #2
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
%     \override Score.RehearsalMark.font-size = #6
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
%       \override Score.BarNumber.font-size = #2
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
    \override Score.RehearsalMark.font-size = #8
    \new StaffGroup <<
      \removeWithTag #'part \killCues \sFlI
      \removeWithTag #'part \killCues \sFlII
      \removeWithTag #'part \killCues \sKlarI
      \removeWithTag #'part \killCues \sKlarII
      \removeWithTag #'part \killCues \sFag
    >>
    \new ChoirStaff <<
      \removeWithTag #'part \killCues \sSopran
      \removeWithTag #'part \killCues \sAlt
      \removeWithTag #'part \killCues \sTenor
      \removeWithTag #'part \killCues \sBass
    >>
    \new StaffGroup <<
      \removeWithTag #'part \killCues \sVioI
      \removeWithTag #'part \killCues \sVioII
      \removeWithTag #'part \killCues \sVla
      \removeWithTag #'part \killCues \sVcI
      \removeWithTag #'part \killCues \sVcII
      \removeWithTag #'part \killCues \sCb
    >>
    >>
    \layout {
      #(layout-set-staff-size 13.8)
      \override Score.BarNumber.font-size = #3
      \context {
      }
      indent = 2.5\cm
    }
    \midi {
      \tempo 4=90
    }
  }
}

\book {
  \bookOutputSuffix "parts-flauto1"
  \header {
      instrument = "Flauto I"
    }
  \score {
    <<
      \override Score.DynamicTextSpanner.style = #'none
      \removeWithTag #'score {\compressMMRests {\sFlI}}
    >>
    \layout {
      \override Score.BarNumber.font-size = #1
    }
  }
}

\book {
  \bookOutputSuffix "parts-flauto2"
  \header {
      instrument = "Flauto II"
    }
  \score {
    <<
      \override Score.DynamicTextSpanner.style = #'none
      \removeWithTag #'score {\compressMMRests {\sFlII}}
    >>
    \layout {
      \override Score.BarNumber.font-size = #1
    }
  }
}

\book {
  \bookOutputSuffix "parts-clarinettoB1"
  \header {
      instrument = "Clarinetto in B I"
    }
  \score {
    <<
      \override Score.DynamicTextSpanner.style = #'none
      \removeWithTag #'score {\compressMMRests {\sKlarI}}
    >>
    \layout {
      \override Score.BarNumber.font-size = #1
      indent = 2.5\cm
    }
  }
}

\book {
  \bookOutputSuffix "parts-clarinettoB2"
  \header {
      instrument = "Clarinetto in B II"
    }
  \score {
    <<
      \override Score.DynamicTextSpanner.style = #'none
      \removeWithTag #'score {\compressMMRests {\sKlarII}}
    >>
    \layout {
      \override Score.BarNumber.font-size = #1
      indent = 2.5\cm
    }
  }
}

\book { % TODO: Zähler über langen Tönen
  \bookOutputSuffix "parts-fagotto1"
  \header {
      instrument = "Fagotto I"
    }
  \score {
    <<
      \override Score.DynamicTextSpanner.style = #'none
      \removeWithTag #'score {\compressMMRests {\sFagI}}
    >>
    \layout {
      \override Score.BarNumber.font-size = #1
      indent = 2\cm
    }
  }
}

\book { % TODO: Zähler über langen Tönen
  \bookOutputSuffix "parts-fagotto2"
  \header {
      instrument = "Fagotto II"
    }
  \score {
    <<
      \override Score.DynamicTextSpanner.style = #'none
      \removeWithTag #'score {\compressMMRests {\sFagII}}
    >>
    \layout {
      \override Score.BarNumber.font-size = #1
      indent = 2\cm
    }
  }
}

\book {
  \bookOutputSuffix "parts-violino1"
  \header {
      instrument = "Violino I"
    }
  \score {
    <<
      \override Score.DynamicTextSpanner.style = #'none
      \removeWithTag #'score {\compressMMRests {\sVioI}}
    >>
    \layout {
      \override Score.BarNumber.font-size = #1
    }
  }
}

\book {
  \bookOutputSuffix "parts-violino2"
  \header {
      instrument = "Violino II"
    }
  \score {
    <<
      \override Score.DynamicTextSpanner.style = #'none
      \removeWithTag #'score {\compressMMRests {\sVioII}}
    >>
    \layout {
      \override Score.BarNumber.font-size = #1
    }
  }
}

\book {
  \bookOutputSuffix "parts-viola"
  \header {
      instrument = "Viola"
    }
  \score {
    <<
      \override Score.DynamicTextSpanner.style = #'none
      \removeWithTag #'score {\compressMMRests {\sVla}}
    >>
    \layout {
      \override Score.BarNumber.font-size = #1
    }
  }
}

\book {
  \bookOutputSuffix "parts-violoncello1"
  \header {
      instrument = "Violoncello I"
    }
  \score {
    <<
      \override Score.DynamicTextSpanner.style = #'none
      \removeWithTag #'score {\compressMMRests{\sVcI}}
    >>
    \layout {
      \override Score.BarNumber.font-size = #1
      indent = 2\cm
    }
  }
}

\book {
  \bookOutputSuffix "parts-violoncello2"
  \header {
      instrument = "Violoncello II"
    }
  \score {
    <<
      \override Score.DynamicTextSpanner.style = #'none
      \removeWithTag #'score {\compressMMRests{\sVcII}}
    >>
    \layout {
      \override Score.BarNumber.font-size = #1
      indent = 2\cm
    }
  }
}

\book { % TODO: Zähler über langen Tönen
  \bookOutputSuffix "parts-basso"
  \header {
      instrument = "Basso"
    }
  \score {
    <<
      \override Score.DynamicTextSpanner.style = #'none
      \removeWithTag #'score {\compressMMRests{\sCb}}
    >>
    \layout {
      \override Score.BarNumber.font-size = #1
      indent = 2.5\cm
    }
  }
}