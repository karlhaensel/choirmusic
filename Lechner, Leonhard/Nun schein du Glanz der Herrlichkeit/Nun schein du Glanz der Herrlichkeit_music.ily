\version "2.22.1"

tempo_vier = {
  \time 4/2
}
tempo_drei = {
  \time 3/1
}

global = {
  \key g \dorian
  \tempo_vier
  \dynamicUp % wenn nur Chor, mit Instrumentalbegleitung in die Noten verschieben!
  \autoBeamOff % außer viele Melismen/Kolloraturen
}


nSopranI = \relative c' {
  \global
  r1 r2 d2 | a'4( g a bes c2) bes | bes4( a g a bes2 a4 g | a2) g bes2.( c4 | d\breve) | d1 d2 bes |
  bes bes4 bes2 a4 g f | f1 f2 f4 f | f2 bes4 bes2( a8[ g] a2) | d1 r | r r | d a2 c |
  
  a g1 \ficta fis2 | g1 r2 g | g4( f es d c2) f | g1 a4 bes2( a4 | bes2) f f1 | r2 d g f |
  f es d c | d a' a c | c bes a g | a r4 a a a d2~ | d bes bes bes | a1 r2 f~ |
  
  f f e1 | d2. d4 e1 | f2 f e1 | d\breve | r1 r | r2 c' d4 d c c |
  bes2 a a a | fis4 fis fis fis g2 fis4 fis | g g g g g2 fis4 fis | g g g g g1 | g2. g4 f2 g | r g f2. d4 | \tempo_drei
  
  f\breve f1 | f\breve f1 | f\breve r1 | \tempo_vier d'1 bes2 a | g2. g4 g2 g | fis4 fis2 g4 a1 | r2 a bes c |
  d g,2. bes4 c2 | d1 d2. d4 | b2 b c d | c c r1 | d,2 e4 f g2 f~ | f g1 \ficta fis2 | g\breve \bar "|."
}

nSopranII = \relative c'' {
  \global
  r1 r | r r2 d | g,4( a bes c d2) d | c1 d2 g,~( | g fis4 e fis e8[ fis] g2~ | g) \ficta fis g g |
  f2 g4 f2 f4 bes bes | a1 d2 d4 c | bes2 f f1 | f2 f f g | f d d1 | d2 g fis g |
  
  c bes a1 | bes2 d d4( c bes a | g1) f | r c' | d2 bes1 a2 | bes1 r |
  r r | r2 f e a | g2. g4 e2 d | e1 r2 d | d4 d d'1 d2 | d d c a |
  
  bes1 g | r2 g2. g4 c2 | c a1 g2~( | g4 \ficta fis8[ e] \ficta fis2) g g | g4 g f bes bes2 bes | a2. a4 bes bes a a |
  d2 d cis1( | d) r2 d | bes4 bes bes2 bes4 g a d, | d d d d es1 | d r2 g | f g r1 | \tempo_drei
  
  d\breve d1 | c\breve c1 | c\breve r1 | \tempo_vier r2 d d' c | c b c bes | a4 a2 \ficta b4 cis2 d | c1 r |
  d,2 e4 f g2 f~ | f g1 \ficta fis2 | g1 r | r2 a bes c | d g,2. bes4 c2 | d1 d2. d4 | b\breve \bar "|."
}

nAlt = \relative c' {
  \global
  g1 d'4( c d e | f2) f f1 | es f~ | f2 es d1 | d d~ | d2 d bes d |
  d es4 d2 c4 es d | c1 bes2 bes4 c | d2 d c1 | bes2 r4 d d2 c | c bes a1 | b2 b d e|
  
  f g d1 | g, r2 d' | es4( d c bes a2) d | d2.( e4 f1~ | f2) d c c | bes bes d d |
  c2. c4 a2 g | a r4 d2 c f4 | e2 d cis d~( | d4 cis8[ \ficta b] cis2) d1 | g,2 g4 g g'1~ | g2 f f c |
  
  d1( c) | b2. b4 c1 | c1. c2 | a1 g2 r4 d' | es es d f f2 g | f2. f4 f g e f |
  f2 f e e | d4 d d d c2 d4 d | g, g g g es'2 d4 d | b b b b c1 | b2. b4 c2 d4 d | c2 d4 es c2 d | \tempo_drei
  
  bes\breve bes1 | a\breve a1 | a\breve r1 | \tempo_vier r2 bes f'2. f4 | es2 d es d | d d e f | g( f4 e d2) f~ |
  f4 f, g a bes2 a | f4( d d'1) d2 | d d e fis | g( f4 e d2) f~ | f4 f, g a bes2 a | f4( d d'1) d2 | d\breve \bar "|."
}

nTenor = \relative c' {
  \global
  r2 d g,4( a bes c | d2) c f, r | bes1. f2~( | f g2. a4 bes a8[ g] | a1.) bes2 | a1( g) |
  r r | r2 f f4 f f2~ | f f f1 | f2 bes a g | a g1 \ficta fis2 | g1 r |
  
  r r2 d' | d4( c bes a g1) | bes2 c1 bes2 | g4( a bes g c2.) c4 | bes1 r | d bes2 a |
  a g fis g | fis r4 d a'2 \ficta f | c' g a bes | a1 d,2 d4 d | d'1. g,2 | a1. a2 |
  
  f1 r2 g~ | g4 g g2 g g | f1 g | r bes2 bes~ | bes4 c a d d2 es | c2. c4 bes g a f |
  bes2 d a2. a4 | a a a a g2 a | r1 r2 a | g4 g g g g1 | g2. g4 a2 bes! | r g a bes | \tempo_drei
  
  f\breve f1 | f\breve f1 | f\breve r1 | \tempo_vier f1 f2 f | g2. g4 c,2 g' | a1 a | g2 a r a |
  bes c d c | bes1 a | g2.( d4 a'1) | r r2 a | bes c d c | bes1 a | g\breve \bar "|."
}

nBass = \relative c' {
  \global
  r1 r2 g | d4( e f g a2) bes | es,2.( d8[ c] bes4 c d e | f2) c g'2.( f8[ e] | d1.) g,2 | d'1 r2 g |
  bes es,4 bes'2 f4 g bes | f1 bes,2 bes4 a | bes2 bes f1 | bes2 bes d e | f g d1 | g, r |
  
  r r | r2 g' bes4( a g f | es2) es f bes, | bes' g f1 | r f | g1. d2 |
  f c d es | d1 r | r r | a2 a4 a a'1( | bes) g | d2.( e4 f1) |
  
  bes,1 c | g2. g4 c1 | f,2 f c'1( | d) g,2 g' | es4 c d bes bes'2 es, | f1 r |
  r r2 a | d,4 d d d es2 d | r1 r2 d | g,4 g g g c1 | g r2 g' | a bes r1 | \tempo_drei
  
  bes,\breve bes1 | f\breve f1 | f\breve r1 | \tempo_vier bes1 bes2 f | c' g g'2. g,4 | d'1 r2 d | e f g( f4 e |
  d2) c g a | bes2.( c4 d1 | g,) r2 d' | e f g( f4 e | d2) c g a | bes2.( c4 d1 | g,\breve) \bar "|."
}