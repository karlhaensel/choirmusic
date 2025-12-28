\version "2.22.1"

\header {
  title = "Deduc me, Domine"
  composer = "Melchior Franck (um 1580-1639)"
  poet = "Psalm 86,11"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
}

\layout {
  #(layout-set-staff-size 17) 
  \override Score.BarNumber.font-size = #1
}

chormidi = \with {midiInstrument = "choir aahs"}

ficta = { \once \set suggestAccidentals = ##t }

\include "Deduc-me-Domine_lyrics.ily"
\include "Deduc-me-Domine_music.ily"


\book {
  \bookOutputSuffix "SSATB-original-E"
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
  \markup{\wordwrap{Weise mir, Herr, deinen Weg, dass ich wandle in deiner Wahrheit; erhalte mein Herz bei dem einen, dass ich deinen Namen fürchte.}}
}

\book {
  \bookOutputSuffix "SSATB-transposed-G"
  \score {
    \new ChoirStaff <<
      \accidentalStyle Score.modern
      \transpose e g \sSopranI
      \transpose e g \sSopranII
      \transpose e g \sAlt
      \transpose e g \sTenor
      \transpose e g \sBass
    >>
    \layout { }
    \midi {
      \tempo 2=102
    }
  }
  \markup{\italic Übersetzung:}
  \markup{\wordwrap{Weise mir, Herr, deinen Weg, dass ich wandle in deiner Wahrheit; erhalte mein Herz bei dem einen, dass ich deinen Namen fürchte.}}
}
