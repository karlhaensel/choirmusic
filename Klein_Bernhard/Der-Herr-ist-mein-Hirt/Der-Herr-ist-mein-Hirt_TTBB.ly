\version "2.22.1"

\header {
  title = "Der Herr ist mein Hirt"
  subtitle = "Nach Psalm 23"
  composer = "Bernhard Klein (1793-1832)"
  opus = "op. 23, Nr. 4"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
}

\layout {
  #(layout-set-staff-size 18)
  \override Score.BarNumber.font-size = #1
}

\include "Der-Herr-ist-mein-Hirt_music.ily"
\include "Der-Herr-ist-mein-Hirt_lyrics.ily"

chormidi = \with {midiInstrument = "choir aahs"}

sTenorI = 
  \new Staff = "zTenorI"
    \with {
      instrumentName = "Tenor I"
      \chormidi
    } 
    <<
      { 
        \clef "treble_8"
        \new Voice = "vTenorI" {\nTenorI}
      }
      \new Lyrics \lyricsto "vTenorI" {\tTenorI}
    >>

sTenorII = 
  \new Staff = "zTenorII"
    \with {
      instrumentName = "Tenor II"
      \chormidi
    } 
    <<
      { <<
        \clef "treble_8"
        \new Voice = "vTenorII" {\nTenorII}
      >>
      }
      \new Lyrics \lyricsto "vTenorII" {\tTenorII}
    >>

sBassI = 
  \new Staff = "zBassI"
    \with {
      instrumentName = "Bass I"
      \chormidi
    } 
    <<
      {
        \clef bass
        \new Voice = "vBassI" {\nBassI}
      }
      \new Lyrics \lyricsto "vBassI" {\tBassI}
    >>

sBassII = 
  \new Staff = "zBassII"
    \with {
      instrumentName = "Bass II"
      \chormidi
    } 
    <<
      {      
        \clef bass
        \new Voice = "vBassII" {\nBassII}
      }
      \new Lyrics \lyricsto "vBassII" {\tBassII}
    >>

\score {
  \new ChoirStaff <<
    \accidentalStyle Score.modern % damit Erinnerungsvorzeichen nächster Takt
    \sTenorI
    \sTenorII
    \sBassI
    \sBassII
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
