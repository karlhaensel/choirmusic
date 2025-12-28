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

\include "Gloria-Patri_lyrics.ily"
\include "Gloria-Patri_choir1.ily"
\include "Gloria-Patri_choir2.ily"


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
\markup{\italic Übersetzung:}
\markup{\wordwrap{Ehre sei dem Vater, der uns erschaffen, Ehre dem Sohn, der uns erlöst, Ehre dem Heiligen Geist, der uns geheiligt hat. Ehre der höchsten und unteilbaren Dreieinigkeit, deren Werke untrennbar sind, deren Herrschaft ohn Ende ist. Dir gebührt Ruhm und Preis, dir alle Ehre, Lobpreis und Glanz, Kraft und Stärke, (dir) unserm Gott von Ewigkeit zu Ewigkeit. Amen.}}

