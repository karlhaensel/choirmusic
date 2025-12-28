\version "2.22.1"

%%% Editionshinweis: original doppelte Notenwerte

\header {
  title = "Allein Gott in der Höh sei Ehr"
  subtitle = "Musae Sioniae, Teil V, Nr. 22"
  composer = "Michael Praetorius (1571-1621)"
  poet = "Nikolaus Decius, 1525"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
}

\layout {
  #(layout-set-staff-size 18) 
  \override Score.BarNumber.font-size = #1
}

\include "Allein-Gott_music.ily"
\include "Allein-Gott_lyrics.ily"
\include "Allein-Gott_voices.ily"

\book {
  \bookOutputSuffix "SATTB-original-F"
  \score {
    \new ChoirStaff <<
      \accidentalStyle Score.modern
      \soSopran
      \soAlt
      \soTenorI
      \soTenorII
      \soBass
    >>
    \layout { }
    \midi {
      \tempo 2=128
    }
  }
}

\book {
  \bookOutputSuffix "SSATB-transposed-G"
  \score {
    \new ChoirStaff <<
      \accidentalStyle Score.modern
      \transpose f g \stSopranI
      \transpose f g \stSopranII
      \transpose f g \stAlt
      \transpose f g \stTenor
      \transpose f g \stBass
    >>
    \layout { }
    \midi {
      \tempo 2=128
    }
  }
}
