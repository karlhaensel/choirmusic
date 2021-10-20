\version "2.22.00"

\header {
  title = "TITEL"
  % subtitle = "GGF. UNTERTITEL"
  composer = "KOMPONIST"
  poet = "TEXT/VORLAGE/SONSTIGES"
  % Voreingestellte LilyPond-Tagline entfernen
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
}

\layout {
  #(layout-set-staff-size 18) 
  \override Score.BarNumber.font-size = #1
  \context {
    \Voice
    \consists "Melody_engraver"
    % \override Stem #'neutral-direction = #'() % ggf. intelligente neutrale Halsrichtung
  }
}

chormidi = \with {midiInstrument = "choir aahs"}

ficta = { \once \set suggestAccidentals = ##t } % für vogeschlagene Vorzeichen in Alter Musik über Noten -> VOR der Note setzen

global = {
  \key c \major
  \time 4/4
  \dynamicUp % wenn nur Chor, mit Instrumentalbegleitung in die Noten verschieben!
  \autoBeamOff % außer viele Melismen/Kolloraturen
}

nSopran = \relative c'' {
  \global
  % Noten Sopran
}

tSopran = \lyricmode {
  % Text Sopran  
}

nAlt = \relative c' {
  \global
  % Noten Alt  
}

tAlt = \lyricmode {
  % Text Alt  
}

nTenor = \relative c' {
  \global
  % Noten Tenor
}

tTenor = \lyricmode {
  % Text Tenor  
}

nBass = \relative c {
  \global
  % Noten Bass
}

tBass = \lyricmode {
  % Text Bass  
}


sSopran = 
  \new Staff  = "zSopran"
    \with {
      instrumentName = "Sopran"
      \chormidi
      \notenlinien
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vSopran" {\nSopran}
      }
      \new Lyrics \lyricsto "vSopran" {\tSopran}
      % wenn Text über der Zeile dann \with {alignAboveContext = "zSopran"}
    >>

sAlt = 
  \new Staff  = "zAlt"
    \with {
      instrumentName = "Alt"
      \chormidi
      \notenlinien
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vAlt" {\nAlt}
      }
      \new Lyrics \lyricsto "vAlt" {\tAlt}
      % wenn Text über der Zeile dann \with {alignAboveContext = "zAlt"}
    >>

sTenor = 
  \new Staff  = "zTenor"
    \with {
      instrumentName = "Tenor"
      \chormidi
      \notenlinien
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vTenor" {\clef "violin_8" \nTenor}
      }
      \new Lyrics \lyricsto "vTenor" {\tTenor}
      % wenn Text über der Zeile dann \with {alignAboveContext = "zTenor"}
    >>

sBass = 
  \new Staff  = "zBass"
    \with {
      instrumentName = "Bass"
      \chormidi
      \notenlinien
      \consists "Merge_rests_engraver"
    } 
    <<
      { 
        \new Voice = "vBass" {\clef bass \nBass}
      }
      \new Lyrics \lyricsto "vBass" {\tBass}
      % wenn Text über der Zeile dann \with {alignAboveContext = "zBass"}
    >>
    

\score {
  \new ChoirStaff <<
    \accidentalStyle Score.modern % damit Erinnerungsvorzeichen nächster Takt
    \sSopran
    \sAlt
    \sTenor
    \sBass
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
