\version "2.24.4"

\include "SWV-294_music.ily"
\include "SWV-294_lyrics.ily"

sTenorI =
  \new Staff = "zTenorI"
    \with {
      vocalName =  "Tenor I"
      shortVocalName = ""
      midiInstrument = "voice oohs"
      \consists "Merge_rests_engraver"
    }
    <<
      \new Voice = "vTenorI" {\clef "treble_8" \dynamicUp \nTenorI}
      \new Lyrics \lyricsto "vTenorI" {\keepWithTag #'I \tText}
    >>

sTenorII =
  \new Staff = "zTenorII"
    \with {
      vocalName =  "Tenor II"
      shortVocalName = ""
      midiInstrument = "voice oohs"
      \consists "Merge_rests_engraver"
    }
    <<
      \new Voice = "vTenorII" {\clef "treble_8" \dynamicUp \nTenorII}
      \new Lyrics \lyricsto "vTenorII" {\keepWithTag #'II \tText}
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