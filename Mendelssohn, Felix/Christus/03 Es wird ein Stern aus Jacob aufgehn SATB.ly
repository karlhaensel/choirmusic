\version "2.22.00"

\header {
  title = "Es wird ein Stern aus Jacob aufgehn"
  composer = "Felix Mendelssohn (1809-1847)"
  poet = "aus dem Oratorium \"Christus\""
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
}

\layout {
}

chormidi = \with {
  midiInstrument = "choir aahs"
}

global_transpose = {
  \time 4/4
  \tempo "Allegro moderato"
  \dynamicDown
}

global = {
  \key es \major
  \global_transpose
}

global_voice = {
  \dynamicUp
  \autoBeamOff
}

\include "03 Es wird ein Stern aus Jacob aufgehn_staffs.ily"


\book {
  \bookOutputSuffix "score"
  \score {
    <<
    \accidentalStyle Score.modern % damit Erinnerungsvorzeichen nächster Takt
    \override Score.DynamicTextSpanner.style = #'none % keine Striche/Punkt o.ä. nach cresc./dim. als Text
    \new StaffGroup <<
      \removeWithTag #'part \killCues \sFl
      \removeWithTag #'part \killCues \sOb
      \removeWithTag #'part \killCues \sKlar
      \removeWithTag #'part \killCues \sFag
    >>
    \new StaffGroup <<
      \removeWithTag #'part \killCues \sHrn
      \new GrandStaff <<
        \removeWithTag #'part \killCues \sPosAT
        \removeWithTag #'part \killCues \sPosB
      >>
    >>
    \sPk
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
      \removeWithTag #'part \killCues \sVc
      \removeWithTag #'part \killCues \sCb
    >>
    >>
    \layout {
      #(layout-set-staff-size 13) 
      \override Score.BarNumber.font-size = #2
    }
    \midi {
      \tempo 4=124
    }
  }
}

\book {
  \bookOutputSuffix "vocalScore"
  \score {
    <<
    \accidentalStyle Score.modern % damit Erinnerungsvorzeichen nächster Takt
    \override Score.DynamicTextSpanner.style = #'none % keine Striche/Punkt o.ä. nach cresc./dim. als Text
    \new ChoirStaff <<
      \sSopran
      \sAlt
      \sTenor
      \sBass
    >>
    \new PianoStaff
    <<
      \sRechts
      \dKlavierauszug
      \sLinks
    >>
    >>
    \layout {
      #(layout-set-staff-size 13) 
      \override Score.BarNumber.font-size = #2
    }
    \midi {
      \tempo 4=124
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
  \bookOutputSuffix "parts-oboe1"
  \header {
      instrument = "Oboe I"
    }
  \score {
    <<
      \override Score.DynamicTextSpanner.style = #'none
      \removeWithTag #'score {\compressMMRests {\sObI}}
    >>
    \layout {
      \override Score.BarNumber.font-size = #1
    }
  }
}

\book {
  \bookOutputSuffix "parts-oboe2"
  \header {
      instrument = "Oboe II"
    }
  \score {
    <<
      \override Score.DynamicTextSpanner.style = #'none
      \removeWithTag #'score {\compressMMRests {\sObII}}
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

\book {
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
    }
  }
}

\book {
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
    }
  }
}
