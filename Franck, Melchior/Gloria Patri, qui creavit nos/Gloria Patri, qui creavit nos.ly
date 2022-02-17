\version "2.22.1"

\header {
  title = "Gloria Patri, qui creavit nos"
  composer = "Melchior Franck (um 1580-1639)"
  poet = "Text unbekannter Herkunft"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
}

\layout {
  #(layout-set-staff-size 14.6) 
  \override Score.BarNumber.font-size = #1
  \context {
    \Voice
    \consists "Melody_engraver"
  }
}

chormidi = \with {midiInstrument = "choir aahs"}

ficta = { \once \set suggestAccidentals = ##t }

global = {
  \key g \dorian
  \time 4/2
  \autoBeamOff
  \numericTimeSignature
}

Dreier = { \bar "||" \time 3/2 }
Vierer = { \bar "||" \time 4/2 }

\include "Gloria Patri, qui creavit nos_lyrics.ily"
\include "Gloria Patri, qui creavit nos_choir1.ily"
\include "Gloria Patri, qui creavit nos_choir2.ily"


\score {
  <<
    \new ChoirStaff <<
      \accidentalStyle Score.modern
      \sISopranI
      \sISopranII
      \sIAlt
      \sIBass
    >>
    \new ChoirStaff <<
      \accidentalStyle Score.modern
      \sIISopran
      \sIIAlt
      \sIITenorI
      \sIITenorII
      \sIIBass
    >>
  >>
  \layout { }
  \midi {
    \tempo 2=108
  }
}
