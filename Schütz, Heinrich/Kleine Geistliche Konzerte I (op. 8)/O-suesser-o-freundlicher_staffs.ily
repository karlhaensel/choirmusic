\version "2.24.4"

\include "O-suesser-o-freundlicher_music.ily"
\include "O-suesser-o-freundlicher_lyrics.ily"

sTenor =
  \new Staff = "zTenor"
    \with {
      vocalName =  "Tenor vel Cantus"
      shortVocalName = ""
      midiInstrument = "voice oohs"
      \consists "Merge_rests_engraver"
    }
    <<
      \new Voice = "vTenor" {\clef "treble_8" \dynamicUp \nTenor}
      \new Lyrics \lyricsto "vTenor" {\tText}
    >>
 
 sBC =
   \new Staff = "zBC"
     \with {
       instrumentName = ""
       shortInstrumentName = ""
       midiInstrument = "cello"
       \consists "Merge_rests_engraver"
     }
     <<
       \new Voice = "vBC"  {\clef bass \dynamicDown \nBC}
       \new FiguredBass {\nBCfigured}
     >>