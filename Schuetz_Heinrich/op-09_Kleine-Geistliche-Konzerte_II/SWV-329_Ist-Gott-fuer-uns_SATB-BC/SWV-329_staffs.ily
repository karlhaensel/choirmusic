\version "2.27.2"

\include "SWV-329_music.ily"
\include "SWV-329_lyrics.ily"

sSopran =
  \new Staff = "zSopran"
    \with {
      vocalName =  "Sopran"
      shortVocalName = ""
      midiInstrument = "voice oohs"
      \consists "Merge_rests_engraver"
    }
    <<
      \new Voice = "vSopran" {\clef treble \dynamicUp \nSopran}
      \new Lyrics \lyricsto "vSopran" {\keepWithTag #'s \tText}
    >>

sAlt =
  \new Staff = "zAlt"
    \with {
      vocalName =  "Alt"
      shortVocalName = ""
      midiInstrument = "voice oohs"
      \consists "Merge_rests_engraver"
    }
    <<
      \new Voice = "vAlt" {\clef treble \dynamicUp \nAlt}
      \new Lyrics \lyricsto "vAlt" {\keepWithTag #'a \tText}
    >>

sTenor =
  \new Staff = "zTenor"
    \with {
      vocalName =  "Tenor"
      shortVocalName = ""
      midiInstrument = "voice oohs"
      \consists "Merge_rests_engraver"
    }
    <<
      \new Voice = "vTenor" {\clef "treble_8" \dynamicUp \nTenor}
      \new Lyrics \lyricsto "vTenor" {\keepWithTag #'t \tText}
    >>

sBass =
  \new Staff = "zBass"
    \with {
      vocalName =  "Bass"
      shortVocalName = ""
      midiInstrument = "voice oohs"
      \consists "Merge_rests_engraver"
    }
    <<
      \new Voice = "vBass" {\clef bass \dynamicUp \nBass}
      \new Lyrics \lyricsto "vBass" {\keepWithTag #'b \tText}
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