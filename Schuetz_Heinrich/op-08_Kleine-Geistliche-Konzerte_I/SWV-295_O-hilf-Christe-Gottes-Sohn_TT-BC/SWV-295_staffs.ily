\version "2.24.4"

\include "SWV-295_music.ily"
\include "SWV-295_lyrics.ily"

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
      \new Lyrics \with {  \override LyricText.font-shape = #'italic } \lyricsto "vTenorI" {\keepWithTag #'I \tVerba}
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
      \new Lyrics \with {  \override LyricText.font-shape = #'italic } \lyricsto "vTenorII" {\keepWithTag #'II \tVerba}
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