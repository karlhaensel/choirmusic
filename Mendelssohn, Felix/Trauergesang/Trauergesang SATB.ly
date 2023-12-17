\version "2.24.3"

\header {
  title = "Trauergesang"
  composer = "Felix Mendelssohn (1809-1847)"
  opus = "op. 116"
  poet = "Friedrich Aulenbach"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  page-count = #4
}

\layout {
  #(layout-set-staff-size 15)
  \override Score.BarNumber.font-size = #1
}

global = {
  \dynamicUp
  \autoBeamOff
  \override Score.DynamicTextSpanner.style = #'none
  \set Score.tempoHideNote = ##t
  %\set suspendMelodyDecisions = ##t
  \key g \minor
  \time 4/4
  \tempo "Andante."
}

\include "Trauergesang_dynamics.ily"
\include "Trauergesang_lyrics.ily"
\include "Trauergesang_music.ily"


chormidi = \with {midiInstrument = "choir aahs"}

sSopran = 
  \new Staff  = "zSopran"
    \with {
      instrumentName = "Sopran"
      \chormidi
    } 
    <<
      \keepWithTag #'s \dChoir
      { 
        \new Voice = "vSopran" {\nSopran}
      }
      \new Lyrics \lyricsto "vSopran" {\keepWithTag #'s \tText}
    >>

sAlt = 
  \new Staff  = "zAlt"
    \with {
      instrumentName = "Alt"
      \chormidi
    } 
    <<
      \keepWithTag #'a \dChoir
      { 
        \new Voice = "vAlt" {\nAlt}
      }
      \new Lyrics \lyricsto "vAlt" {\keepWithTag #'a \tText}
    >>

sTenor = 
  \new Staff  = "zTenor"
    \with {
      instrumentName = "Tenor"
      \chormidi
    } 
    <<
      \keepWithTag #'t \dChoir
      { 
        \new Voice = "vTenor" {\clef "violin_8" \nTenor}
      }
      \new Lyrics \lyricsto "vTenor" {\keepWithTag #'t \tText}
    >>

sBass = 
  \new Staff  = "zBass"
    \with {
      instrumentName = "Bass"
      \chormidi
    } 
    <<
      \keepWithTag #'b \dChoir
      { 
        \new Voice = "vBass" {\clef bass \nBass}
      }
      \new Lyrics \lyricsto "vBass" {\keepWithTag #'b \tText}
    >>


\score {
  \new ChoirStaff <<
    \accidentalStyle Score.modern
    \sSopran
    \sAlt
    \sTenor
    \sBass
  >>
  \layout { }
  \midi {
    \tempo 4=92
  }
}
