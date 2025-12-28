\version "2.22.1"

%%%%% TODO: Übersetzungen für französische Begriffe? %%%%%%%
%%%%% TODO: Vorzeichen für Transposition anpassen? Transposition für Stücke unterschiedlich? %%%%%%%

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

\book {
  \bookOutputSuffix "TBarB-transposed"
  \header {
    title = \markup{\fontsize #5 \smallCaps "Messe a trois voix"}
    subtitle = "für Tenor, Bariton und Bass"
    subsubtitle = "(original für Frauenchor und Tonart eine kleine Terz höher)"
    composer = "André Caplet (1878-1925)"
    tagline = ##f
  }
  \score {
    \header {
      piece = \markup{\smallCaps "Kyrie eleison"}
    }
    \new ChoirStaff <<
      \accidentalStyle Score.modern
      \transpose es c \sKTenor
      \transpose es c \sKBariton
      \transpose es c \sKBass
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
      \transpose des bes, \sGTenor
      \transpose des bes, \sGBariton
      \transpose des bes, \sGBass
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
      \transpose e des \sSTenor
      \transpose e des \sSBariton
      \transpose e des \sSBass
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
      \transpose as f \sATenor
      \transpose as f \sABariton
      \transpose as f \sABass
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
      \transpose f d \sOTenor
      \transpose f d \sOBariton
      \transpose f d \sOBass
    >>
    \layout { }
    \midi {
      \tempo 2=62
    }
  }
}