\version "2.18.2"

\header {
  title = "Jauchzt, alle Lande, Gott zu Ehren"
  % subtitle = "GGF. UNTERTITEL"
  composer = "Jan Pieterszoon Sweelinck (1562-1621)"
  poet = "Psalm 66"
  % Voreingestellte LilyPond-Tagline entfernen
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
}

\layout {
  #(layout-set-staff-size 15.5) % beeinflusst nur Noten- & Textgröße, Notenlinienabstände in Stimmenvariablen anpassen!
  \override Score.BarNumber.font-size = #1
  \context {
    \Voice
    \consists "Melody_engraver"
    % \override Stem #'neutral-direction = #'() % ggf. intelligente neutrale Halsrichtung
  }
}

global = {
  \key c \major
  \time 4/4
}

nSopran = \relative c'' {
  \global
  \dynamicUp
  \autoBeamOff
  c4 a g c8 c | d f e4 e8 c8.(d16[[ e c]] | % 1-2
  d8) g, a16[( b c8]~ c16[ b32 a b8]) c4 | b4 a8 g d' d e g~ | % 3-4
  g fis g4 r2 | r8 c, a4 g c8 c | % 5-6
  
  d f4 e8.( d16 d4 cis8) | d2 g4 e8 e | % 7-8
  c4 f e d~ | d8 c8.( b16 b[ a32 b] c2) | % 9-10
  r8 g8 c b e4 r | r8 c a g c4 r8 c | % 11-12
  
  d f e4 d c | d8 f e4 d2 | % 13-14
  r4. g8 f e d c | c b c4 r4. g8 | % 15-16
  a a b c d d c g' | f e d c c b c4 | r4 g'2 g4 | % 17-19
  
  r4 g2 g4 | f e8 d c b a4~ | a g r e'~ | % 20-22
  e d8 c b4 c | d g, g'4. g8 | % 23-24
  f4 e8 d c b a4 | g2 r | % 25-26
  
  r2 r8 g c c | b4 a c d | % 27-28
  e r r2 | r4. c8. c16 d8 e c | % 29-30
  f8 f e16[( d c b] a8.[ b16] c[ d e8]~ | e16[ d] d4 cis8) d d c b | % 31-32
  
  a8 g g fis g4 r8 g' | f e d c c b c4 | % 33-34
  r8 a' g f e d d cis | d8.[( c16] b8) b c4 d | % 35-36
  r4. g8 f4 e | d c8 c4( b16[ a] c8) b | c1\fermata \bar "|." | % 37-39
}

tSopran = \lyricmode {
  Jauchzt, al -- le Lan -- de, Gott zu Eh -- ren, Gott __ % 1-2
  zu Eh -- ren, jauchzt, al -- le Lan -- de, Gott zu __ % 3-4
  Eh -- ren, jauchzt, al -- le Lan -- de, % 5-6
  
  Gott zu Eh -- ren, rühmt sei -- nes % 7-8
  Na -- mens Herr -- lich -- keit; __ % 9-10
  Mu -- si -- ken -- klang, Mu -- si -- ken -- klang soll % 11-12
  
  ihn ver -- eh -- ren, soll ihn ver -- eh -- ren, % 13-14
  macht Stimm und Sai -- te ihm be -- reit, macht % 15-16
  Stimm und Sai -- te ihm be -- reit, macht Stimm und Sai -- te ihm be -- reit! Sa -- get, % 17-19
  
  sa -- get: O, groß sind dei -- ne Wer -- ke, o, __ % 20-22
  groß sind dei -- ne Wer -- ke, sa -- get: % 23-24
  O, groß sind dei -- ne Wer -- ke, % 25-26
  
  Herr Gott, die du her -- vor -- ge -- % 27-28
  bracht; selbst die Feind füh -- len % 29-30
  dei -- ne Stär -- ke und zit -- tern, % 31-32
  
  Herr, vor dei -- ner Macht, und zit -- tern, Herr, vor dei -- ner Macht, % 33-34
  und zit -- tern, Herr, vor dei -- ner Macht, __ und zit -- tern, % 35-36
  und zit -- tern, Herr, vor dei -- ner Macht. % 37-39
}

nAlt = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  r2. f4 | d c g'8 g a c | % 1-2
  b4 a8 a f d g g | r g e4 d g8 g | % 3-4
  a c b4 a2 | r4. c8 bes g a4 | % 5-6
  
  a r8 a4 a8 a4~ |a d,8 g b b c c | % 7-8
  a a f16[( g a b] c8) c b a | g4 r g e8 c | % 9-10
  g'4 r r8 c a g | c c, f e a8.[( g32 f] g8) e | % 11-12
  
  g a a e16 e g8 a a e | g a4 c8 b4 a | % 13-14
  d8 c4 b8 a e g g | g4 r g g8 d | % 15-16
  f c d g g2 | r1 | c2 c4 c~( | % 17-19
  
  c b8[ a] b4) b | a c8 g a g f4 | c r r c'~ | % 20-22
  c b8 a g f e4 | d2 r | % 23-24
  r8 d e g g g fis4 | g8 g c, c b4 a | % 25-26
  
  c d e16[( d e f] g4) | r1 | % 27-28
  r8 e8. e16 f8 g e a a | g4 a  r4. a8~ | % 29-30
  a16 a b8 c a c a a4~ | a2 a4 r | % 31-32
  
  r2 r8 g g4 | c,8 c' bes a g f f e | % 33-34
  f4 c' c8 b a g | g fis g2 r8 g | % 35-36
  a f g e f16[( g a b] c8) g | g1~ | g\fermata \bar "|." | % 37-39
}

tAlt = \lyricmode {
  Jauchzt, al -- le Lan -- de, Gott zu % 1-2
  Eh -- ren, jauchzt, al -- le Lan -- de, jauchzt, al -- le Lan -- de, % 3-4
  Gott zu Eh -- ren, jauchzt, al -- le Lan -- % 5-6
  
  de, Gott zu Eh -- ren, rühmt sei -- nes Na -- mens % 7-8
  Herr -- lich -- keit, __ sein Herr -- lich -- keit; Mu -- si -- ken -- % 9-10
  klang, Mu -- si -- ken -- klang, Mu -- si -- ken -- klang __ soll % 11-12
  
  ihn ver -- eh -- ren, soll ihn ver -- eh -- ren, soll ihn ver -- eh -- ren, % 13-14
  macht Stimm und Sai -- et ihm be -- reit, macht Stimm und % 15-16
  Sai -- te ihm be -- reit! Sa -- get, sa -- % 17-19
  
  get: O, groß sind dei -- ne Wer -- ke, o, __ % 20-22
  groß sind dei -- ne Wer -- ke, % 23-24
  o, groß sind dei -- ne Wer -- ke, Herr Gott, die du her -- % 25-26
  
  vor -- ge -- bracht, __ % 27-28
  selbst die Feind füh -- len dei -- ne Stär -- ke, selbst __ % 29-30
  die Feind füh -- len dei -- ne Stär -- ke % 31-32
  
  und zit -- tern, und zit -- tern, Herr, vor dei -- ner % 33-34
  Macht, und zit -- tern, Herr, vor dei -- ner Macht, und % 35-36
  zit -- tern, Herr, vor dei -- ner Macht. __ % 37-39
}

nTenorI = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  r1 | r2 c4 a | % 1-2
  g c8 c d f e4 | d c g8 g' e4 | % 3-4
  c4 d8 d f4. d8 | g4 c, r8 d c a~ | % 5-6
  
  a d4 cis8 d f e4 | fis g4. e8 e c~ | % 7-8
  c c a a g g d' d | g, g' g d e4 g | % 9-10
  e c8 g'4 g8 c, e | e4 r r8 f e16 c g'8 | % 11-12
  
  d4 c d8 f e4 | d8 d c16 a a'8.( g16 g4 fis8) | % 13-14
  g2 r | g,4 a8. a16 b8 c d d | % 15-16
  a f' f e d4 e | c8 c g2 r4 | e'4.( f8 g2~ | % 17-19
  
  g) g | r1 | f4 e8 d c b a4 | % 20-22
  g1 | g4 g8 a b16 c d8.( cis32[ b] cis8) | % 23-24
  d f c d e d d4 | d8 r4. r2 | % 25-26
  
  r4. g,8 g'4 e | d f e8 c g'4~ | % 27-28
  g r r2 | r1 | % 29-30
  r4. c,8. c16 d8 e c | f f e4 d g | % 31-32
  
  f8 e d c c b c4 | r8 c f f e f g g | % 33-34
  a8.[( g32 f] e8) a g g fis g | a a g d e4 d8 d~ | % 35-36
  d c4 b8 r4. c8 | d4 e d8 g, g' g | e1\fermata \bar "|." | % 37-39
}

tTenorI = \lyricmode {
  Jauchzt, al -- % 1-2
  le Lan -- de, Gott zu Eh -- ren, jauchzt, al -- le, al -- % 3-4
  le Lan -- de, Gott zu Eh -- ren, jauchzt, al -- le __ % 5-6
  
  Lan -- de, Gott zu Eh -- ren, rühmt sei -- nes Na -- % 7-8
  mens, sei -- nes Na -- mens Herr -- lich -- keit, sein Herr -- lich -- keit; Mu -- % 9-10
  si -- ken -- klang, Mu -- si -- ken -- klang soll ihn ver -- eh -- % 11-12
  
  ren, soll ihn ver -- eh -- ren, soll ihn ver -- eh -- % 13-14
  ren, macht Stimm und Sai -- te ihm be -- % 15-16
  reit, macht Stimm und Sai -- te ihm be -- reit! Sa -- % 17-19
  
  get: O, groß sind dei -- ne Wer -- % 20-22
  ke, o, groß sind dei -- ne Wer -- % 23-24
  ke, o, groß sind dei -- ne Wer -- ke, % 25-26
  
  Herr Gott, die du her -- vor -- ge -- bracht; __ % 27-28
  % 29-30
  selbst die Feind füh -- len dei -- ne Stär -- ke und % 31-34
  
  zit -- tern, Herr, vor dei -- ner Macht, und zit -- tern, Herr, vor dei -- ner % 33-34
  Macht, __ und zit -- tern, Herr, vor dei -- ner Macht, und zit -- tern, und __ % 35-36
  zit -- tern, und zit -- tern, Herr, vor dei -- ner Macht. % 37-39
}

nTenorII = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  r1 | r | % 1-2
  r | r2 r4. c8 | % 3-4
  a4 g c8 c d f | e4 f d e8 e | % 5-6
  
  f a a8.[( g16] f8) d a4 | d8 d b b g4 g'| % 7-8
  f8 f c8.[( d16] e[ f] g4) f8 | e4 d c r | % 9-10
  c a8 g c4 r8 c~ | c a f c' r4. c8 | % 11-12
  
  b16 g d'8 a4 r4. c8 | b16 g d'8 a4 r4. d8 | % 13-14
  b8 e d4 c r | r8 g' f e d c c b | % 15-16
  c4 r r g | a8. a16 b8 c d d c4 | g'4.( f8 e[ d] e4~ | % 17-19
  
  e d8[ c] d4) d | r8 f g d e e c4 | a8 a c d  e d c16[( d e f] | % 20-22
  g4) g r g | g d2 e4 | % 23-24
  a,4 a8 b c g a4 | b8 d e e d4 f | % 25-26
  
  e8 c g'4 r c, | g d' a b | % 27-28
  c8.[( b32 a] g4) r8 c8. c16 d8 | e c f f e4 a, | % 29-30
  r4. e'8. e16 f8 a e | c d e4 f8 f e8.[( d16] | % 31-32
  
  c8) c b c d d e4 | a, bes8 f c' d c c | % 33-34
  f,4 r4 r2 | r4 d' c b | % 35-36
  a g d'8 d g,4 | b c d d | c1\fermata \bar "|." | % 37-39
}

tTenorII = \lyricmode {
  % 1-2
  Jauchzt, % 3-4
  al -- le Lan -- de, Gott zu Eh -- ren, jauchzt, al -- le % 5-6
  
  Lan -- de, Gott __ zu Eh -- ren, rühmt sei -- nes Na -- mens, % 7-8
  sei -- nes Na -- mens Herr -- lich -- keit; % 9-10
  Mu -- si -- ken -- klang, Mu -- si -- ken -- klang soll % 11-12
  
  ihn ver -- eh -- ren, soll ihn ver -- eh -- ren, soll % 13-14
  ihn ver -- eh -- ren, macht Stimm und Sai -- te ihm be -- % 15-16
  reit, macht Stimm und Sai -- te ihm be -- reit! Sa -- % 17-19
  
  get: O, groß sind dei -- ne Wer -- ke, o, groß sind dei -- ne Wer -- % 20-22
  ke, sa -- get, sa -- get: % 23-24
  O, groß sind dei -- ne Wer -- ke, Herr Gott, die du her -- % 25-26
  
  vor -- ge -- bracht; die du her -- vor -- ge -- % 27-28
  bracht; __ selbst die Feind füh -- len dei -- ne Stär -- ke, % 29-30
  selbst die Feind füh -- len dei -- ne Stär -- ke und zit -- % 31-32
  
  tern, Herr, vor dei -- ner Macht, und zit -- tern, Herr, vor dei -- ner % 33-34
  Macht, und zit -- tern, % 35-36
  Herr, vor dei -- ner Macht, Herr, vor dei -- ner Macht. % 37-39
}

nBass = \relative c {
  \global
  \dynamicUp
  \autoBeamOff
  r1 | r | % 1-2
  r4 f d c | g'8 g a c b4 c | % 3-4
  r2 f,4 d | c f8 f g bes a8.[( g16] | % 5-6
  
  f8[ d] a'4) d, r | r g e8 e c4 | % 7-8
  f f8 f c4 d | e8.[( f16] g8) g c,2 | % 9-10
  r2 r8 c f e | a4 c a8 f c'4 | % 11-12
  
  r4. c8 b16 g d'8 a4 | r4. a8 b g d'4 | % 13-14
  g, g a8. a16 b8 c | d d c4 r g | % 15-16
  f8. e16 d8 c c b c4 | r1 | c'2 c | % 17-19
  
  g g | d'4 c8 b a e f4~ | f c r2 | % 20-22
  r4 d'4. d8 c4~ | c b8 a g f e4 | % 23-24
  d r r d | g c, g' d | % 25-26
  
  a' b c2 | r1 | % 27-28
  r8 c,8. c16 d8 e c f f | e4 d8 a'8. a16 b8 c a | % 29-30
  d4 a a2~ | a d,4 e | % 31-32
  
  f8 c g' a g g c,4 | r2 r4 c | % 33-34
  c' c8 a c g d' e | d d g,4 r g | % 35-36
  f e d c | g'2 g | c,1\fermata \bar "|." | % 37-39
}

tBass = \lyricmode {
  % 1-2
  Jauchzt, al -- le Lan -- de, Gott zu Eh -- ren, % 3-4
  jauchzt, al -- le Lan -- de, Gott zu Eh -- % 5-6
  
  ren, rühmt sei -- nes Na -- % 7-8
  mens, sei -- nes Na -- mens Herr -- lich -- keit; % 9-10
  Mu -- si -- ken -- klang, Mu -- si -- ken -- klang % 11-12
  
  soll ihn ver -- eh -- ren, soll ihn ver -- eh -- % 13-14
  ren, macht Stimm und Sai -- te ihm be -- reit, macht % 15-16
  Stimm und Sai -- te ihm be -- reit! Sa -- get, % 17-19
  
  sa -- get: O, groß sind dei -- ne Wer -- ke, % 20-22
  sa -- get: O, groß sind dei -- ne Wer -- % 23-24
  ke, Herr Gott, die du her -- % 25-26
  
  vor -- ge -- bracht; % 27-28
  selbst die Feind füh -- len dei -- ne Stär -- ke, selbst die Feind füh -- len % 29-30
  dei -- ne Stär -- ke und % 31-32
  
  zit -- tern, Herr, vor dei -- ner Macht, und % 33-34
  zit -- tern, und zit -- tern, Herr, vor dei -- ner Macht, und % 35-36
  zit -- tern, Herr, vor dei -- ner Macht. % 37-39
}


sSopran = \new Staff \with {
  instrumentName = "Sopran"
  midiInstrument = "choir aahs"
  \override StaffSymbol #'staff-space = #(magstep -2) % Anpassung Notenlinienabstände, immer in Kombination mit Staffsize (Layoutblock) verwenden!
} { \nSopran }
\addlyrics { \tSopran }

sAlt = \new Staff \with {
  instrumentName = "Alt"
  midiInstrument = "choir aahs"
  \override StaffSymbol #'staff-space = #(magstep -2) % Anpassung Notenlinienabstände, immer in Kombination mit Staffsize (Layoutblock) verwenden!
} { \nAlt }
\addlyrics { \tAlt }

sTenorI = \new Staff \with {
  instrumentName = "Tenor I"
  midiInstrument = "choir aahs"
  \override StaffSymbol #'staff-space = #(magstep -2) % Anpassung Notenlinienabstände, immer in Kombination mit Staffsize (Layoutblock) verwenden!
} { \clef "treble_8" \nTenorI }
\addlyrics { \tTenorI }

sTenorII = \new Staff \with {
  instrumentName = "Tenor II"
  midiInstrument = "choir aahs"
  \override StaffSymbol #'staff-space = #(magstep -2) % Anpassung Notenlinienabstände, immer in Kombination mit Staffsize (Layoutblock) verwenden!
} { \clef "treble_8" \nTenorII }
\addlyrics { \tTenorII }

sBass = \new Staff \with {
  instrumentName = "Bass"
  midiInstrument = "choir aahs"
  \override StaffSymbol #'staff-space = #(magstep -2) % Anpassung Notenlinienabstände, immer in Kombination mit Staffsize (Layoutblock) verwenden!
} { \clef bass \nBass }
\addlyrics { \tBass }


\score {
  \new ChoirStaff <<
    \accidentalStyle Score.modern % damit Erinnerungsvorzeichen nächster Takt
    \sSopran
    \sAlt
    \sTenorI
    \sTenorII
    \sBass
  >>
  \layout { }
  \midi {
    \tempo 4=72
  }
}
