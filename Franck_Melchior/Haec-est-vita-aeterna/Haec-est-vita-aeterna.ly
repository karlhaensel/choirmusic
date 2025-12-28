\version "2.22.1"

\header {
  title = "Haec est vita aeterna"
  composer = "Melchior Franck (um 1580-1639)"
  poet = "Johannes 17,3"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
}

\layout {
  #(layout-set-staff-size 14.5) 
  \override Score.BarNumber.font-size = #1
}

chormidi = \with {midiInstrument = "choir aahs"}

ficta = { \once \set suggestAccidentals = ##t }

\include "Haec-est-vita-aeterna_lyrics.ily"
\include "Haec-est-vita-aeterna_music.ily"


\book {
  \bookOutputSuffix "SSATB-transposed-F"
  \score {
    \new ChoirStaff <<
      \accidentalStyle Score.modern
      \sSopranI
      \sSopranII
      \sAlt
      \sTenor
      \sBass
    >>
    \layout { }
    \midi {
      \tempo 2=102
    }
  }
  \markup{\italic Übersetzung:}
  \markup{\wordwrap{Das ist aber das ewige Leben, dass sie dich, der du allein wahrer Gott bist, und den du gesandt hast, Jesum Christum, erkennen.}}
}

\book {
  \bookOutputSuffix "SSATB-original-G"
  \score {
    \new ChoirStaff <<
      \accidentalStyle Score.modern
      \transpose f g \sSopranI
      \transpose f g \sSopranII
      \transpose f g \sAlt
      \transpose f g \sTenor
      \transpose f g \sBass
    >>
    \layout { }
    \midi {
      \tempo 2=102
    }
  }
    \markup{\italic Übersetzung:}
  \markup{\wordwrap{Das ist aber das ewige Leben, dass sie dich, der du allein wahrer Gott bist, und den du gesandt hast, Jesum Christum, erkennen.}}
}