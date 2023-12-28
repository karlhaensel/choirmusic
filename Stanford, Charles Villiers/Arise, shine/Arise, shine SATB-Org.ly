\version "2.20.0"

\header {
  title = "Arise, shine"
  subtitle = "for mixed choir (SATB) and organ"
  composer = "Charles Villiers Stanford (1852-1924)"
  poet = "Isaiah 60:1-3"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
}

\layout {
  #(layout-set-staff-size 16)
}

global = {
  \key d \major
  \numericTimeSignature
  \time 6/8
  \tempo "Alegretto" 4.=63
  \autoBeamOff
}

\include "Arise, shine_choir.ily"
\include "Arise, shine_lyrics.ily"

\include "Arise, shine_organ.ily"


chormidi = \with { midiInstrument = "choir aahs" }

sopranoVoicePart = \new Staff \with {
  instrumentName = "Soprano"
  \chormidi
} { \sopranoVoice }
\addlyrics { \verseSopranoVoice }

altoVoicePart = \new Staff \with {
  instrumentName = "Alto"
  \chormidi
} { \altoVoice }
\addlyrics { \verseAltoVoice }

tenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  \chormidi
} { \clef "treble_8" \tenorVoice }
\addlyrics { \verseTenorVoice }

bassVoicePart = \new Staff \with {
  instrumentName = "Bass"
  \chormidi
} { \clef bass \bassVoice }
\addlyrics { \verseBassVoice }

orgelmidi = \with { midiInstrument = "church organ" }

organPart = <<
  \new PianoStaff \with {
    instrumentName = "Organ"
  } <<
    \new Staff = "right" \with {
      \orgelmidi
    } \right
    \new Staff = "left" \with {
      \orgelmidi
    } { \clef bass 
        <<
          \new Voice = "vLef" {\voiceOne \left}
          \new Voice = "vPedal" {\voiceTwo \pedal}
        >> }
  >>
>>

\score {
  <<
    \new ChoirStaff <<
      \accidentalStyle Score.modern % damit Erinnerungsvorzeichen nächster Takt
      \sopranoVoicePart
      \altoVoicePart
      \tenorVoicePart
      \bassVoicePart
    >>
    \organPart
  >>
  \layout { }
  \midi { }
}
