\version "2.19.84"

\header {
  title = "Der Herr ist mein Hirt"
  subtitle = "Nach Psalm 23"
  composer = "Bernhard Klein (1793-1832)"
  % poet = ""
  opus = "op. 23, Nr. 4"
  % Voreingestellte LilyPond-Tagline entfernen
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
}

\layout {
  #(layout-set-staff-size 18) % beeinflusst nur Noten- & Textgröße, Notenlinienabstände in Stimmenvariablen anpassen!
  \override Score.BarNumber.font-size = #1
  \context {
    \Voice
    \consists "Melody_engraver"
    % \override Stem #'neutral-direction = #'() % ggf. intelligente neutrale Halsrichtung
  }
}

chormidi = \with {midiInstrument = "choir aahs"}

notenlinien = {
  \override StaffSymbol #'staff-space = #(magstep -1.0) % Anpassung Notenlinienabstände, immer in Kombination mit Staffsize (Layoutblock) verwenden!
}

textOben = \with { 
  alignAboveContext = "staff"
  \override VerticalAxisGroup.staff-affinity = #DOWN
}

global = {
  \key a \major
  \time 4/4
  %\dynamicUp % wenn nur Chor, mit Instrumentalbegleitung in die Noten verschieben!
  \autoBeamOn
  \tempo "Andantino"
}

dolce = \markup{\italic dolce} 

\include "Der Herr ist mein Hirt_music.ily"
\include "Der Herr ist mein Hirt_lyrics.ily"


sTenorI = 
  \new Staff = "zTenorI"
    \with {
      instrumentName = "Tenor I"
      \chormidi
      \notenlinien
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
      \notenlinien
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
      \notenlinien
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
      \notenlinien
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
