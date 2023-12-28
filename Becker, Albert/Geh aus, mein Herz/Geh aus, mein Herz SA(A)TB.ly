\version "2.22.1"

\header {
  title = "Geh aus, mein Herz"
  subtitle = "Choral-Motette"
  composer = "Albert Becker (1834-1899), op. 84/3"
  arranger = "Melodie: Bolko Graf von Hochberg (1843-1926)"
  poet = "Text: Paul Gerhardt (1607-1676)}"
  % Voreingestellte LilyPond-Tagline entfernen
  tagline = ##f
}

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
  \override Score.BarNumber.font-size = #1
}

%%% INCLUDE %%%
\include "Geh aus, mein Herz_global.ily"
\include "Geh aus, mein Herz_lyrics.ily"
\include "Geh aus, mein Herz_vers01.ily"
\include "Geh aus, mein Herz_vers09.ily"
\include "Geh aus, mein Herz_vers11.ily"
\include "Geh aus, mein Herz_versX_halleluja.ily"

%%% BOOK %%%
\book {
  
  \score {
    \header {
      piece = \markup{\smallCaps {Vers I}}
    }
    
    \new ChoirStaff <<
      \accidentalStyle Score.modern % damit Erinnerungsvorzeichen nächster Takt
      \sISopran
      \sIAlt
      \sITenor
      \sIBass
    >>
    \layout { }
    \midi {
      \tempo 2=76
    }
  }
  
  
  \score {
    \header {
      piece = \markup{\smallCaps {Vers IX}}
    }
    
    \new ChoirStaff <<
      \accidentalStyle Score.modern % damit Erinnerungsvorzeichen nächster Takt
      \sIXSopran
      \sIXAlt
      \sIXTenor
      \sIXBass
    >>
    \layout { }
    \midi {
      \tempo 4=124
    }
  }
  
  
  \score {
    \header {
      piece = \markup{\smallCaps {Vers XI}}
    }
    
    \new ChoirStaff <<
      \accidentalStyle Score.modern % damit Erinnerungsvorzeichen nächster Takt
      \sXISopran
      \sXIAltI
      \sXIAltII
      \sXITenor
      \sXIBass
    >>
    \layout { }
    \midi {
      \tempo 2=76
    }
  }
  
  
  \score {
    \header {
      piece = \markup{\smallCaps Halleluja}
    }
    
    \new ChoirStaff <<
      \accidentalStyle Score.modern % damit Erinnerungsvorzeichen nächster Takt
      \sHSopran
      \sHAlt
      \sHTenor
      \sHBass
    >>
    \layout { }
    \midi {
      \tempo 2=96
    }
  }
  
}
