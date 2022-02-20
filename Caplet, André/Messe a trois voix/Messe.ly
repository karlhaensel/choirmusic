\version "2.22.1"

%%%%% TODO: Übersetzungen für französische Begriffe? %%%%%%%

\paper {
  #(set-paper-size "a4")
  scoreTitleMarkup = \markup {
    \fill-line {
      \null
      \fontsize #3 \bold \fromproperty #'header:piece
      \null
    }
  }
}

\layout {
  #(layout-set-staff-size 18) 
  \override Score.BarNumber.font-size = #1
  \context {
    \Voice
    \consists "Melody_engraver"
  }
}

chormidi = \with {midiInstrument = "choir aahs"}

global = {
  \dynamicUp
  \autoBeamOff
  \set Score.markFormatter = #format-mark-box-numbers
  \override DynamicTextSpanner.style = #'none
  \numericTimeSignature
}

\include "Messe_1_Kyrie.ily"
\include "Messe_2_Gloria.ily"
\include "Messe_3_Sanctus.ily"
\include "Messe_4_AgnusDei.ily"
\include "Messe_5_OSalutaris.ily"
\include "Messe_Men.ily"
    
\book {
  \bookOutputSuffix "original-SMA"
  \header {
    title = \markup{\fontsize #5 \smallCaps "Messe a trois voix"}
    subtitle = "für Sopran, Mezzosopran und Alt"
    composer = "André Caplet (1878-1925)"
    tagline = ##f
  }
  \score {
    \header {
      piece = \markup{\smallCaps "Kyrie eleison"}
    }
    \new ChoirStaff <<
      \accidentalStyle Score.modern
      \sKSopran
      \sKMezzo
      \sKAlt
    >>
    \layout { }
    \midi {
      \tempo 4=100
    }
  }
  \pageBreak
  \score {
    \header {
      title = ""
      subtitle = ""
      piece = \markup{\smallCaps "Gloria in excelsis Deo"}
      composer = ""
    }
    \new ChoirStaff <<
      \accidentalStyle Score.modern
      \sGSopran
      \sGMezzo
      \sGAlt
    >>
    \layout { }
    \midi {
      \tempo 4=100
    }
  }
  \pageBreak
  \score {
    \header {
      title = ""
      subtitle = ""
      piece = \markup{\smallCaps "Sanctus"}
      composer = ""
    }
    \new ChoirStaff <<
      \accidentalStyle Score.modern
      \sSSopran
      \sSMezzo
      \sSAlt
    >>
    \layout { }
    \midi {
      \tempo 4=76
    }
  }
  \pageBreak
  \score {
    \header {
      title = ""
      subtitle = ""
      piece = \markup{\smallCaps "Agnus Dei"}
      composer = ""
    }
    \new ChoirStaff <<
      \accidentalStyle Score.modern
      \sASopran
      \sAMezzo
      \sAAlt
    >>
    \layout { }
    \midi {
      \tempo 4=86
    }
  }
  \pageBreak
  \score {
    \header {
      title = ""
      subtitle = ""
      piece = \markup{\smallCaps "O salutaris"}
      composer = ""
    }
    \new ChoirStaff <<
      \accidentalStyle Score.modern
      \sOSopran
      \sOMezzo
      \sOAlt
    >>
    \layout { }
    \midi {
      \tempo 2=62
    }
  }
}

\book {
  \bookOutputSuffix "TTB"
  \header {
    title = \markup{\fontsize #5 \smallCaps "Messe a trois voix"}
    subtitle = "für zwei Tenöre und Bass"
    subsubtitle = "(original für Frauenchor)"
    composer = "André Caplet (1878-1925)"
    tagline = ##f
  }
  \score {
    \header {
      piece = \markup{\smallCaps "Kyrie eleison"}
    }
    \new ChoirStaff <<
      \accidentalStyle Score.modern
      \sKTenorI
      \sKTenorII
      \sKBass
    >>
    \layout { }
    \midi {
      \tempo 4=100
    }
  }
  \pageBreak
  \score {
    \header {
      title = ""
      subtitle = ""
      piece = \markup{\smallCaps "Gloria in excelsis Deo"}
      composer = ""
    }
    \new ChoirStaff <<
      \accidentalStyle Score.modern
      \sGTenorI
      \sGTenorII
      \sGBass
    >>
    \layout { }
    \midi {
      \tempo 4=100
    }
  }
  \pageBreak
  \score {
    \header {
      title = ""
      subtitle = ""
      piece = \markup{\smallCaps "Sanctus"}
      composer = ""
    }
    \new ChoirStaff <<
      \accidentalStyle Score.modern
      \sSTenorI
      \sSTenorII
      \sSBass
    >>
    \layout { }
    \midi {
      \tempo 4=76
    }
  }
  \pageBreak
  \score {
    \header {
      title = ""
      subtitle = ""
      piece = \markup{\smallCaps "Agnus Dei"}
      composer = ""
    }
    \new ChoirStaff <<
      \accidentalStyle Score.modern
      \sATenorI
      \sATenorII
      \sABass
    >>
    \layout { }
    \midi {
      \tempo 4=86
    }
  }
  \pageBreak
  \score {
    \header {
      title = ""
      subtitle = ""
      piece = \markup{\smallCaps "O salutaris"}
      composer = ""
    }
    \new ChoirStaff <<
      \accidentalStyle Score.modern
      \sOTenorI
      \sOTenorII
      \sOBass
    >>
    \layout { }
    \midi {
      \tempo 2=62
    }
  }
}

\book {
  \bookOutputSuffix "TBarB"
  \header {
    title = \markup{\fontsize #5 \smallCaps "Messe a trois voix"}
    subtitle = "für Tenor, Bariton und Bass"
    subsubtitle = "(original für Frauenchor)"
    composer = "André Caplet (1878-1925)"
    tagline = ##f
  }
  \score {
    \header {
      piece = \markup{\smallCaps "Kyrie eleison"}
    }
    \new ChoirStaff <<
      \accidentalStyle Score.modern
      \sKTenor
      \sKBariton
      \sKBass
    >>
    \layout { }
    \midi {
      \tempo 4=100
    }
  }
  \pageBreak
  \score {
    \header {
      title = ""
      subtitle = ""
      piece = \markup{\smallCaps "Gloria in excelsis Deo"}
      composer = ""
    }
    \new ChoirStaff <<
      \accidentalStyle Score.modern
      \sGTenor
      \sGBariton
      \sGBass
    >>
    \layout { }
    \midi {
      \tempo 4=100
    }
  }
  \pageBreak
  \score {
    \header {
      title = ""
      subtitle = ""
      piece = \markup{\smallCaps "Sanctus"}
      composer = ""
    }
    \new ChoirStaff <<
      \accidentalStyle Score.modern
      \sSTenor
      \sSBariton
      \sSBass
    >>
    \layout { }
    \midi {
      \tempo 4=76
    }
  }
  \pageBreak
  \score {
    \header {
      title = ""
      subtitle = ""
      piece = \markup{\smallCaps "Agnus Dei"}
      composer = ""
    }
    \new ChoirStaff <<
      \accidentalStyle Score.modern
      \sATenor
      \sABariton
      \sABass
    >>
    \layout { }
    \midi {
      \tempo 4=86
    }
  }
  \pageBreak
  \score {
    \header {
      title = ""
      subtitle = ""
      piece = \markup{\smallCaps "O salutaris"}
      composer = ""
    }
    \new ChoirStaff <<
      \accidentalStyle Score.modern
      \sOTenor
      \sOBariton
      \sOBass
    >>
    \layout { }
    \midi {
      \tempo 2=62
    }
  }
}
