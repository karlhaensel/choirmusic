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

\include "03_staffs.ily"

scoreCommon = { 
  \override Score.DynamicTextSpanner.style = #'none
  \accidentalStyle Score.modern
}

scoreBarNumberSize = {
  \override Score.BarNumber.font-size = #2
}

\book {
  \bookOutputSuffix "score"
  \score {
    <<
    \scoreCommon
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
    \removeWithTag #'part \killCues \sPk
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
      indent = 2.5\cm
      \scoreBarNumberSize
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
    \scoreCommon
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
      \scoreBarNumberSize
    }
    \midi {
    }
  }
}

\book {
  \bookOutputSuffix "parts-coro"
  \header {
    instrument = "Coro"
  }
  \paper  {
    page-count = #4
  }
  \score {
    <<
    \scoreCommon
    \new ChoirStaff <<
      \removeWithTag #'score {\compressMMRests \sSopran}
      \removeWithTag #'score {\compressMMRests \sAlt}
      \removeWithTag #'score {\compressMMRests \sTenor}
      \removeWithTag #'score {\compressMMRests \sBass}
    >>
    >>
    \layout {
      #(layout-set-staff-size 16) 
      \scoreBarNumberSize
    }
    \midi {
    }
  }
}

partBarNumberSize = {
  \override Score.BarNumber.font-size = #1
}

\book {
  \bookOutputSuffix "parts-flauto1"
  \header {
      instrument = "Flauto I"
    }
  \score {
    <<
      \scoreCommon
      \removeWithTag #'score {\compressMMRests {\sFlI}}
    >>
    \layout {
      \partBarNumberSize
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
      \scoreCommon
      \removeWithTag #'score {\compressMMRests {\sFlII}}
    >>
    \layout {
      \partBarNumberSize
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
      \scoreCommon
      \removeWithTag #'score {\compressMMRests {\sObI}}
    >>
    \layout {
      \partBarNumberSize
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
      \scoreCommon
      \removeWithTag #'score {\compressMMRests {\sObII}}
    >>
    \layout {
      \partBarNumberSize
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
      \scoreCommon
      \removeWithTag #'score {\compressMMRests {\sKlarI}}
    >>
    \layout {
      \partBarNumberSize
      indent = 2.8\cm
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
      \scoreCommon
      \removeWithTag #'score {\compressMMRests {\sKlarII}}
    >>
    \layout {
      \partBarNumberSize
      indent = 2.8\cm
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
      \scoreCommon
      \removeWithTag #'score {\compressMMRests {\sFagI}}
    >>
    \layout {
      \partBarNumberSize
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
      \scoreCommon
      \removeWithTag #'score {\compressMMRests {\sFagII}}
    >>
    \layout {
      \partBarNumberSize
    }
  }
}

\book {
  \bookOutputSuffix "parts-cornoEs1"
  \header {
      instrument = "Corno in Es I"
    }
  \score {
    <<
      \scoreCommon
      \removeWithTag #'score {\compressMMRests {\sHrnI}}
    >>
    \layout {
      \partBarNumberSize
      indent = 2.5\cm
    }
  }
}

\book {
  \bookOutputSuffix "parts-cornoEs2"
  \header {
      instrument = "Corno in Es II"
    }
  \score {
    <<
      \scoreCommon
      \removeWithTag #'score {\compressMMRests {\sHrnII}}
    >>
    \layout {
      \partBarNumberSize
      indent = 2.5\cm
    }
  }
}

\book {
  \bookOutputSuffix "parts-tromboneA"
  \header {
      instrument = "Trombone Alto"
    }
  \score {
    <<
      \scoreCommon
      \removeWithTag #'score {\compressMMRests {\sPosA}}
    >>
    \layout {
      \partBarNumberSize
      indent = 2.8\cm
    }
  }
}

\book {
  \bookOutputSuffix "parts-tromboneT"
  \header {
      instrument = "Trombone Tenore"
    }
  \score {
    <<
      \scoreCommon
      \removeWithTag #'score {\compressMMRests {\sPosT}}
    >>
    \layout {
      \partBarNumberSize
      indent = 2.8\cm
    }
  }
}

\book {
  \bookOutputSuffix "parts-tromboneB"
  \header {
      instrument = "Trombone Basso"
    }
  \score {
    <<
      \scoreCommon
      \removeWithTag #'score {\compressMMRests {\sPosB}}
    >>
    \layout {
      \partBarNumberSize
      indent = 2.8\cm
    }
  }
}

\book {
  \bookOutputSuffix "parts-timpaniEsB"
  \header {
      instrument = "Timpani in Es.B."
    }
  \score {
    <<
      \scoreCommon
      \removeWithTag #'score {\compressMMRests {\sPk}}
    >>
    \layout {
      \partBarNumberSize
      indent = 2.8\cm
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
      \scoreCommon
      \removeWithTag #'score {\compressMMRests {\sVioI}}
    >>
    \layout {
      \partBarNumberSize
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
      \scoreCommon
      \removeWithTag #'score {\compressMMRests {\sVioII}}
    >>
    \layout {
      \partBarNumberSize
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
      \scoreCommon
      \removeWithTag #'score {\compressMMRests {\sVla}}
    >>
    \layout {
      \partBarNumberSize
    }
  }
}

\book {
  \bookOutputSuffix "parts-violoncello"
  \header {
      instrument = "Violoncello"
    }
  \score {
    <<
      \scoreCommon
      \removeWithTag #'score {\compressMMRests {\sVc}}
    >>
    \layout {
      \partBarNumberSize
    }
  }
}

\book {
  \bookOutputSuffix "parts-basso"
  \header {
      instrument = "Basso"
    }
  \score {
    <<
      \scoreCommon
      \removeWithTag #'score {\compressMMRests {\sCb}}
    >>
    \layout {
      \partBarNumberSize
    }
  }
}
