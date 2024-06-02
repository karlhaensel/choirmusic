\version "2.22.1"

\header {
  title = "Geh aus, mein Herz, und suche Freud"
  composer = "Melodie & Satz: August Harder (1775-1813)"
  poet = "Text: Paul Gerhardt (1607-1676)"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
}

\layout {
  #(layout-set-staff-size 16)
  \override Score.BarNumber.font-size = #1
}

\include "Geh aus mein Herz_music.ily"
\include "Geh aus mein Herz_lyrics.ily"

%%%%%% ZWEIZEILIGE NOTATION %%%%%%%%

choirmidi = \with { midiInstrument = "choir aahs" }

sOben = \new Staff \with {
  \choirmidi
} { <<
      \new Voice = "vSopran" {\voiceOne \nSopran}
      \new Voice = "vAlt" {\voiceTwo \nAlt}
      \new Lyrics \lyricsto "vSopran" {\tEins}
    >> }


sUnten = \new Staff \with {
  \choirmidi
} { \clef bass <<
      \new Voice = "vTenor" {\voiceOne \nTenor}
      \new Voice = "vBAss" {\voiceTwo \nBass}
      \new Lyrics \lyricsto "vTenor" {\tEins}
    >> }

\score {
  \new ChoirStaff \with {instrumentName = "Chor"}<<
    \accidentalStyle Score.modern % damit Erinnerungsvorzeichen nächster Takt
    \sOben
    \sUnten
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }


}
