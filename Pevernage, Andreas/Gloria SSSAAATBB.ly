\version "2.18.2"

\header {
  title = "Gloria"
  % subtitle = "GGF. UNTERTITEL"
  composer = "Andreas Pevernage (1543-1591)"
  % poet = "TEXT/VORLAGE/SONSTIGES"
  % Voreingestellte LilyPond-Tagline entfernen
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
}

\layout {
  #(layout-set-staff-size 14)
  \context {
    \Voice
    \consists "Melody_engraver"
    % \override Stem #'neutral-direction = #'() % ggf. intelligente neutrale Halsrichtung
  }
}

global = {
  \key f \major
  \time 4/4
}

nSopranI = \relative c'' {
  \global
  \dynamicUp
  r2 f4. f8 | f4 d d c~( | c8 f, f'4. e8) d4 | %21
  \autoBeamOff c8[( bes]) a[( g])  f bes  f'4~( | f8 [e16 d] e4) f2 | r4 f4. f8 f4 | r4 c f, f'~ | % 22
  f f d4.( e8 | f1) | e2 e4. e8 | f4 f f e8 d~ | % 23
  d d c4 r2 | R1 | r4 f f8 f4 e8 | d4 e8 g4( e c8~ | % 24
  c) bes a4 b c~( | \autoBeamOn c8 a) d4 r g~( | g8 f e d e4) e | f f f4.( e8 | % 25 
  d8 e f d e f g4~ | g8 f f4. e16 d e4) | f1~ | f \bar "|." % 26
}

tSopranI = \lyricmode {
  Glo -- ri -- a in ex -- cel -- sis, 
  in __ ex -- cel -- sis De -- o, glo -- ri -- a in ex -- cel --
  sis Deo -- o, et in ter -- ra pax ho -- mi --
  ni -- bus bo -- nae vo -- lun -- ta -- tis, bo --
  nae vo -- lun -- ta -- tis, bo -- nae vo -- lun -- ta -- 
  tis. __
}

nSopranII = \relative c'' {
  \global
  \dynamicUp
  c4. c8 c4 f, | c' f2 f4 | c2( d4) a | % 21
  a f a4.( bes8) | c4 c c f~ | f8\noBeam f f4 r f | f f4.( e16 d) c4 | % 22
  d4.( e8 f2~ | f4 c2) f,4 | r c'2 c4 | c d d \autoBeamOff e8 f~ | % 23
  f f f4 r2 | R1 | r4 c d8 d4 c8 | b4 c r8 c4 a8~ | % 24
  a d4 d8 d4( e) | f2 r | g2. c,4 | c c d2 | % 25
  d r4 c | c c2 g4 | a2 a4.( bes8 | c1) | % 26
}

tSopranII = \lyricmode {
  Glo -- ri -- a in ex -- cel -- sis De -- o,
  in ex -- cel -- sis De -- o, glo -- ri -- a in ex -- cel -- sis
  De -- o, et in ter -- ra pax ho -- mi --
  ni -- bus bo -- nae vo -- lun -- ta -- tis, bo -- nae
  vo -- lun -- ta -- tis, bo -- nae vo -- lun -- ta --
  tis, bo -- nae vo -- lun -- ta -- tis. __
}

nSopranIII = \relative c'' {
  \global
  \dynamicUp
  r2 a4. a8 | a4 bes2 a4 | a2 a4 f~( | % 21
  f8 g a bes c d c4~ | c8 bes g4) a a~ | a8\noBeam a bes4 d c | c4.( bes8) a2 | % 22
  d,4( d'4. c8 bes4 | a4. bes8) c2~ | c r4 \autoBeamOff g8 g | a4 bes a c8 f,~ | % 23
   f f \autoBeamOn f16( g a bes c2) | R1 | r4 a a8 bes4 g8 | g2 c4 c | % 24
  a8 g4 fis8 g2 | a4 r r g~ | g g c4. c8 | a2 bes | % 25
  r2 c4. c8 | g4 a c c~( | c8 bes a g f4. g8 | a1) | % 26
}

tSopranIII = \lyricmode {
  Glo -- ri -- a in ex -- cel -- sis De -- 
  o, glo -- ri -- a in ex -- cel -- sis 
  De -- o, __ et in ter -- ra pax ho -- mi --
  ni -- bus __ bo -- nae vo -- lun -- ta -- tis, bo --
  nae vo -- lun -- ta -- tis, bo -- nae vo -- lun -- ta -- tis, 
  bo -- nae vo -- lun -- ta -- tis. __
}

nAltI = \relative c' {
  \global
  \dynamicUp
  r2 r4 f~ | f8\noBeam f f4 f2 | a4 c( f,4. g8 | % 21 
  a bes c2) a4 | g2 f4 c'~ | c8\noBeam c bes4 bes a | a( f4. g8) a4 | % 22
  bes2 bes | r4 a4.( f8 a4) | g2 g4 g | f f f \autoBeamOff g8 bes~ | % 23
   bes bes a4 g4. g8 | a4 f f e8 d~ | d d c4 f4. c8 | d4 c g' a | % 24
  r2 r4 g | f f4.( e8) d4 | e4.( f8) g2 | r4 f f f | % 25
  bes4 bes g2 | r4 c, g'2 | c4 \autoBeamOn c4.( bes8 a g | f1) | % 26
}

tAltI = \lyricmode {
  Glo -- ri -- a in ex -- cel --
  sis De -- o, glo -- ri -- a in ex -- cel -- sis 
  De -- o, De -- o, et in ter -- ra pax ho -- mi --
  ni -- bus, et in ter -- ra pax ho -- mi -- ni -- bus bo -- nae vo -- lun -- ta -- tis,
  bo -- nae vo -- lun -- ta -- tis, bo -- nae vo --
  lun -- ta -- tis, vo -- lun -- ta -- tis. __
}

nAltII = \relative c' {
  \global
  \dynamicUp
  r2 f4. f8 | f4 bes,2 f'4 | f2 d4.( e8 | % 21 
  f2) f | c r4 f~ | f8\noBeam f f4 f2 | c f~( | % 22
  f4 bes,4. c8) d4 | c2 f | r c4. c8 | f4 bes, d \autoBeamOff c8 bes~ | % 23
   bes bes f'4 r2 | R1 | r4 f d8 bes4 c8 | g4 c r2 | % 24
  r r4 c | a~ a8 bes4 g8 g4 | g2 r4 c~ | c c bes2~ | % 25
  bes4 d c2~ | c1 | a~ | a | % 26
}

tAltII = \lyricmode {
  Glo -- ri -- a in ex -- cel -- sis __
  De -- o, glo -- ri -- a in ex -- cel --
  sis De -- o, et in ter -- ra pax ho -- mi --
  ni -- bus bo -- nae vo -- lun -- ta -- tis, 
  bo -- nae __ vo -- lun -- ta -- tis, bo -- nae vo --
  lun -- ta -- tis. __
}

nAltIII = \relative c' {
  \global
  \dynamicUp
  R1*3 % 22
  R1 | r2 f4. f8 | c4 d bes c~( | c8 bes a g a4) c | % 23
  f1~ | f2 c~ | c r | R1 | % 23
  r2 r4 \autoBeamOff e8 e | f4 d d e8 f~ | f f f4 r2 | r4 g e4. f8~ | % 24
  f d d4 d r8 c~ | c c d4 d8 c4( b8) | c1 | r2 f~ |% 25
  f4 f e2~ | e4 c c2 | c1~ | c | % 26
}

tAltIII = \lyricmode {
  Glo -- ri -- a in ex -- cel -- sis De -- o, __ 
  et in ter -- ra pax ho -- mi -- ni -- bus bo -- nae vo --
  lun -- ta -- tis, bo -- nae vo -- lun -- ta -- tis, bo --
  nae vo -- lun -- ta -- tis. __
}

nTenor = \relative c' {
  \global
  \dynamicUp
  R1*3 % 21
  R1 | r4 c4. c8 c4 | f, d f4.( g8 | a4. bes8 c2) | % 22
  bes f~ | f1 | g | R | % 23
  r4 f'2 e4 | c bes a \autoBeamOff c8 bes~ | bes bes a4 r2 | r c4 a8 f~ | % 24
  f g d4 g2 | R1 | r4 g2 g4 | f2 d4 f~ | % 25
  f4 d g4. g8 | c4 a g2 | f1~ | f | % 26
}

tTenor = \lyricmode {
  Glo -- ri -- a in ex -- cel -- 
  sis De -- o, 
  et in ter -- ra pax ho -- mi -- ni -- bus bo -- nae vo -- 
  lun -- ta -- tis, bo -- nae vo -- lun -- ta --
  tis, bo -- nae vo -- lun -- ta -- tis. __
}

nBassI = \relative c {
  \global
  \dynamicUp
  R1*3 % 21
  R1 | r2 r4 f~ | f8\noBeam f f4 d f~ | f c'2( f,4~ | % 22
  f8 e d c) bes2 | c c~ | c r | R1 | % 23
  r2 g'4. g8 | f4 f f \autoBeamOff g8 f~ | f f f4 r2 | R1 | % 24
  r2 r4 c4 | f f4. c8 d4 | c2 r4 c~ | c f f d | % 25
  f2 c4 g' | e f g c, | c1~ | c | % 26
}

tBassI = \lyricmode {
  Glo -- ri -- a in ex -- cel -- 
  sis De -- o, __
  et in ter -- ra pax ho -- mi -- ni -- bus
  bo -- nae vo -- lun -- ta -- tis, bo -- nae vo -- lun --
  ta -- tis, bo -- nae vo -- lun -- ta -- tis. __
}

nBassII = \relative c {
  \global
  \dynamicUp
  R1*3 % 21
  R1 | r2 f4. f8 | f4 bes,2 f'4 | f1 | % 22
  bes, | f | c' | R | % 23
  r2 c4. c8 | f,4 bes d \autoBeamOff c8 bes~ | bes bes f4 r2 | R1 | % 24
  R1 | f'4 d8 bes4 c8 g4 | c2 c | f, bes~ | % 25
  bes4 bes c2~ | c1 | f,1~ | f | % 26
}

tBassII = \lyricmode {
  Glo -- ri -- a in ex -- cel --
  sis De -- o,
  et in ter -- ra pax ho -- mi -- ni -- bus 
  bo -- nae vo -- lun -- ta -- tis, bo -- nae vo --
  lun -- ta -- tis. __
}

sSopranI = \new Staff \with {
  instrumentName = "Sopran I"
  midiInstrument = "choir aahs"
} { \nSopranI }
\addlyrics { \tSopranI }

sSopranII = \new Staff \with {
  instrumentName = "Sopran II"
  midiInstrument = "choir aahs"
} { \nSopranII }
\addlyrics { \tSopranII }

sSopranIII = \new Staff \with {
  instrumentName = "Sopran III"
  midiInstrument = "choir aahs"
} { \nSopranIII }
\addlyrics { \tSopranIII }

sAltI = \new Staff \with {
  instrumentName = "Alt I"
  midiInstrument = "choir aahs"
} { \nAltI }
\addlyrics { \tAltI }

sAltII = \new Staff \with {
  instrumentName = "Alt II"
  midiInstrument = "choir aahs"
} { \nAltII }
\addlyrics { \tAltII }

sAltIII = \new Staff \with {
  instrumentName = "Alt III"
  midiInstrument = "choir aahs"
} { \nAltIII }
\addlyrics { \tAltIII }

sTenor = \new Staff \with {
  instrumentName = "Tenor"
  midiInstrument = "choir aahs"
} { \clef "treble_8" \nTenor }
\addlyrics { \tTenor }

sBassI = \new Staff \with {
  instrumentName = "Bass I"
  midiInstrument = "choir aahs"
} { \clef bass \nBassI }
\addlyrics { \tBassI }

sBassII = \new Staff \with {
  instrumentName = "Bass II"
  midiInstrument = "choir aahs"
} { \clef bass \nBassII }
\addlyrics { \tBassII }

eckigeKlammer = {
  \set ChoirStaff.systemStartDelimiter = #'SystemStartSquare
}

\score {
  \new ChoirStaff 
  <<
    \accidentalStyle Score.modern % damit Erinnerungsvorzeichen nächster Takt
    \new ChoirStaff {
      \eckigeKlammer
    <<
      \sSopranI
      \sSopranII
      \sSopranIII
    >>
    }
    \new ChoirStaff {
      \eckigeKlammer
    <<
      \sAltI
      \sAltII
      \sAltIII
    >>
    }
    \sTenor
    \new ChoirStaff {
      \eckigeKlammer
    <<
      \sBassI
      \sBassII
    >>
    }
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
