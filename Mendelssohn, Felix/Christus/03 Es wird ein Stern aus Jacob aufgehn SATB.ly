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
  #(layout-set-staff-size 13) 
  \override Score.BarNumber.font-size = #2
  \context {
    \Voice
    \consists "Melody_engraver"
  }
}

chormidi = \with {midiInstrument = "choir aahs"}

global = {
  \key es \major
  \time 4/4
  \tempo "Allegro moderato"
  \set Score.markFormatter = #format-mark-box-alphabet % Umrandung Studierzeichen
  \override DynamicTextSpanner.style = #'none % keine Striche/Punkt o.ä. nach cresc./dim. als Text
}

global_voice = {
  \dynamicUp % wenn nur Chor, mit Instrumentalbegleitung in die Noten verschieben!
  \autoBeamOff % außer viele Melismen/Kolloraturen
  \override DynamicTextSpanner.style = #'none  
}

\include "03 Es wird ein Stern aus Jacob aufgehn_staffs.ily"

\book {
  \bookOutputSuffix "vocalScore"
  \score {
    <<
    \new ChoirStaff <<
      \accidentalStyle Score.modern % damit Erinnerungsvorzeichen nächster Takt
      \sSopran
      \sAlt
      \sTenor
      \sBass
    >>
    \new PianoStaff
    <<
      \accidentalStyle Score.modern % damit Erinnerungsvorzeichen nächster Takt
      \sRechts
      \dKlavierauszug
      \sLinks
    >>
    >>
    \layout {
      \context {
      }
    }
    \midi {
      \tempo 4=124
    }
  }
}
