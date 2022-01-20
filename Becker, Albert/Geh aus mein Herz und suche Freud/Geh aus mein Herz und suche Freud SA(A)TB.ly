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
}

\layout {
  #(layout-set-staff-size 18) 
  \override Score.BarNumber.font-size = #1
  \context {
    \Voice
    \consists "Melody_engraver"
  }
}

%%% INCLUDE %%%
\include "Geh aus mein Herz und suche Freud_global.ily"
\include "Geh aus mein Herz und suche Freud_lyrics.ily"
\include "Geh aus mein Herz und suche Freud_vers01.ily"
\include "Geh aus mein Herz und suche Freud_vers09.ily"
\include "Geh aus mein Herz und suche Freud_vers11.ily"
\include "Geh aus mein Herz und suche Freud_versX_halleluja.ily"

%%% BOOK %%%
\book {
  
  \score {
    \header {
      piece = \markup{\bold \smallCaps {Vers I}}
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
  
  \pageBreak
  
  \score {
    \header {
      piece = \markup{\bold \smallCaps {Vers IX}}
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
  
  \pageBreak
  
  \score {
    \header {
      piece = \markup{\bold \smallCaps {Vers XI}}
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
  
  \pageBreak
  
  \score {
    \header {
      piece = \markup{\bold \smallCaps Halleluja}
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
