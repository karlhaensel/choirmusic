\version "2.22.1"

global = {
  \key es \major
  \time 4/4
  \dynamicUp
  \autoBeamOff
  \tempo "Adagio molto"
}

%%% SOLO %%%
nISopran = \relative c'' {
  \global
  R1*2 | bes4. bes8 es4 bes | c c bes4. as8 | as4 g r2 |
  r c | d d4 d | d2 es4 es | f2 bes, | r d4 g, | es'2 es4 f |
  g2 r4 es | es2 c4 es | as2 g4 f8 f | es4 es d es | f2 bes, | R1 |
  
  r4 \footnote #'(-1.1 . 1.7) " Akzente wie im Erstdruck gesetzt: zunächst nur Sopran, später für alle Soli (ggf. anpassen)" cis2-> cis4 | d d e2 | f d | r4 e( f) e | d2 r |
  r4 g, g es' | d2. c4 | bes2. r4 | r2 r4 d | g f! es-> d |
  c2 bes | bes4. a8 a4 r | r d2-> d4 | es2-> c4 c | d2-> b-> |
  r r4 e | f4.-> c8 c4 f | f4.-> des8 des2 | c4 as g g | R1 | r4 f bes des |
  
  c2 r | r4 bes des f | e2-> r4 e | f1~ | f2 f | \footnote #'(-1.1 . 0) " im Erstdruck als Alternative notiert: g''" bes4 g f c |
  es2 f | g r | R1 | r4 es, g bes | es2-> es4 es |
  f2 f4 f | g4.-> es8 es4 es | as2 d, | es r | R1 |
  r2 bes4 bes | c1 | bes2 es4 es | es1~ | es | es \bar "|."
}

nIAlt = \relative c' {
  \global
  R1*2 | f4. f8 es4 es | es f f8([ es]) d4 | es es r2 |
  r es | d f4 f | g2 g4 g | f2 f | r g4 g | g2 g4 bes |
  bes2 r4 g | as2 as4 c | c2 c4 c8 c | bes4 bes as g | f2 f | R1 |
  
  r4 g2 g4 | f f g2 | f f | r4 bes( a) a | a2 r |
  r4 g g g | g2 fis | g2. r4 | r2 r4 fis | g g g-> g |
  fis2 g | g4. fis8 fis4 r | r2 g4 g | g2 as4 bes | as2 g |
  r2 r4 g | as4.-> as8 as4 as | g4.-> g8 g2 | g4 f f e | R1 | r4 f f f |
  
  \footnote #'(1 . 2) " im Erstdruck: as'" a2 r | r4 f bes bes | c2-> r4 c | c1( | bes2) bes | bes4 bes as as |
  g( bes2) bes4 | bes2 r | R1 | r4 es, es es | es2-> as4 as |
  as2 as4 as | g4.-> g8 g4 bes | as2 as | g r | R1 |
  r2 es4 es | es1 | g2 g4 g | as1~( | as2 g4 f) | g1 \bar "|." 
}

nITenor = \relative c' {
  \global
  R1*2 | d4. d8 bes4 bes | as as bes bes | bes bes r2 |
  r c4( a) | bes2 bes4 bes | bes2 bes4 bes | d2 d | r b4 b | c2 c4 d |
  es2 r4 bes | c2 es4 es | f( c) e f8 f |  g4 g f es | d2 d | R1 |
  
  r4 e2 e4 | d d d2 | d d | r4 d2 cis4 | d2 r |
  r4 d es c | bes( c) d2 | d2. r4 | r2 r4 d | d d c-> d |
  d2 d | d4. d8 a4 r | r d2-> b4 | c2 es4 e | f2 d |
  r2 r4 c | c4.-> f8 f4 f | des4.-> f8 f2 | e4 c c c | R1 | r4 des des f |
  
  f2 r | r4 des f f | g2-> r4 c, | f1( | d2) d | es4 es f f |
  bes,2 d | es r | R1 | r4 g, bes bes | c2-> c4 c |
  es2 as,4 ces | es4.-> bes8 bes4 es | c2 bes | bes r | R1 |
  r2 g4 g | as( g as c) | es2 bes4 bes | c1~( | c2 es) | bes1 \bar "|."
}

nIBass = \relative c' {
  \global
  R1*2 | bes4. bes8 g4 g | as8([ g]) f([ es]) d([ c]) bes4 | es4 es r2 |
  r c4( f) | bes,2 bes'4 bes | g2 es4 es | bes2 bes' | r g4 g | g( c) c bes |
  es,2 r4 es | as2 as4 as | f2 g4 as8 as | bes4 bes bes bes | bes2 bes | R1 |
  
  r4 a2 a4 | a a bes2 | a a | r4 g( a) a, | d2 r |
  r4 g g c, | d2 d | g2. r4 | r2 r4 a | bes g c-> bes |
  a2 g | d4. d8 d4 r | r2 g4 g | c2 as4 g | f2 g |
  r r4 c | f,4.-> f8 f4 f | bes4.-> bes,8 bes2 | c4 c c c | R1 | r4 bes' bes bes |
  
  f2 r | r4 bes bes des | c2-> r4 bes | as1( | bes2) bes | bes4 bes c as |
  bes2 bes | es, r | R1 | r4 es es es | as2-> as4 as |
  as2 as4 as | bes4.-> g8 es4 g | f2 f | es r | R1 |
  r2 es4 es | es1 | es2 es4 es | es1~ | es | es \bar "|."
}


%%% CHOR %%%
nIISopran = \relative c' {
  \global
  es4. f8 g4 g | r g8 g f4 g | bes f r2 | r r4 f | es( g) g g |
  g( c) g f | f2 f4 r | r2 r4 bes | bes2 f4 f | g2 g | g r |
  r4 bes bes g8 g | as4 as as as | as as c f, | g2 f4 r | f f f f | g2 g4 g |
  
  g2 r | f g | d4 a'2-> f4 | e r r2 | fis4 fis fis fis |
  g g g2 | R1 | r4 d g bes | bes a g fis | g4. d8 c4 r |
  r2 r4 g' | g4. a8 a4 c8 c | c2-> b | R1 | r4 d,2-> g8 g |
  g4. g8 g2 | as4 as as as | R1 | r2 r4 g4 | a2 a4 a | bes2 r |
  
  r4 f a c | des2 r | r4 c c c | c4. c8 c4 c | bes2 bes | bes as |
  g bes | g4 es es g | as2 c4 c | bes2 bes4 bes | as as as as |
  as as as as | g4. g8 bes4 bes | c2 f, | g g4 g | as1 |
  g2 r | R1 | r2 bes4 bes | as1~( | as2 g4 f) | g1 \bar "|."
}

nIIAlt = \relative c' {
  \global
  es4. es8 es4 es | r es8 es es4 es | d d r2 | r r4 d | es2 es4 es |
  es2 es4 es | d2 d4 r | r2 r4 es4 | d2 d4 d | d2 f | es r |
  r4 es es es8 es | c4 c c c | c c c c | es2 bes4 r | d d d d | es2 es4 d |
  
  cis2 r | d d | d4 d2 d4 | d r r2 | d4 d d d |
  c d es2 | R1 | r4 d d d | es es d d | d4. d8 es4 r |
  r2 r4 d | d4. fis8 fis4 a8 a | as2-> g | R1 | r4 d2-> d8 d |
  e4. e8 e4( c) | c f f f | R1 | r2 r4 e | f2 f4 f | f2 r |
  
  r4 f f f | f2 r | r4 e e g | f4. f8 f4 f | f2 f | es es |
  es d | es4 es es es | es2 es4 es | es2 es4 es | es es es es |
  es es es es | es4. es8 es4 es | c2 bes | bes es4 es | es1 |
  es2 r | R1 | r2 g4 g | es1~ | es | es \bar "|."
}

nIITenor = \relative c' {
  \global
  g4. as8 bes4 bes | r bes8 bes as4 bes | bes bes r2 | r r4 bes | bes2 bes4 bes |
  c2 c4 a | bes2 bes4 r | r2 r4 g | bes2 bes4 as | g2 b | c r |
  r4 g g es8 es | es4 es as as | c c bes as | g( es) bes' r | bes bes bes bes | bes2 bes4 bes |
  
  bes4( a) r2 | a bes | a4 f( a) a | bes r r2 | a4 a a a |
  g bes c2 | R1 | r4 bes bes d | c c bes a | g4. g8 g4 r |
  r2 r4 g | bes4. d8 d4 d8 d | d2-> d | R1 | r2 d4 d8 d |
  c4. c8 c2 | c4 c c c | R1 | r2 r4 c | c2 c4 c | des2 r |
  
  r4 a c a | bes2 r | r4 c c c | c4. c8 c4 c | d2 d | es2 c |
  bes bes | bes4 g g bes | es,2 as4 as | g2 g4 g | as as as as |
  f f f f | bes4. bes8 g4 g | as2 f | es bes'4 bes | c2( ces) |
  bes r | R1 | r2 bes4 bes | c1~( | c2 bes4 as) | bes1 \bar "|."
}

nIIBass = \relative c {
  \global
  es4. es8 es4 es | r es8 es es4 es | bes bes r2 | r r4 bes | es2 es4 es |
  c2 c4 f | bes,2 bes4 r | r2 r4 es | bes2 bes4 bes | b2 d | c r |
  r4 es es es8 es | as,4 as as as | f f g as | bes2 bes4 r | bes bes bes bes | es2 es4 es |
  
  e2 r | d g, | a4 a( d) f | g r r2 | d4 d d d |
  es d c2 | R1 | r4 g' g g | c, c d d | bes4. bes8 c4 r |
  r2 r4 bes | d4. d8 d4 fis8 fis | f2-> g | R1 | r2 g4 g8 g |
  c,4. c8 c2 | <f f,>4 <f f,> f f | R1 | r2 r4 c | f2 f4 f | bes2 r |
  
  r4 f f f | bes2 r | r4 c c bes | as4. as8 as4 as | as2 as | g as |
  bes bes, | es4 es es es | c2 as4 as | es'2 des4 des | c c c c |
  ces ces ces ces | bes4. bes8 bes4 g | f2 bes | es, es'4 es | es1 |
  es2 r | R1 | r2 es4 es | as,( g as c | es1) | <es es,> \bar "|."
}


%%% DYNAMIK %%%

dI = {
  \global
  s1*2 | s4\p s s s | s1*2 |
  s2 s\mf | s4\< s s s | s s s s \! | s2\f s | s s4\f s | s\< s s s\! |
  s2 s4 s^\markup{\italic "più" \dynamic f} | s1*3 | s4\> s s\! s | s1 |
  
  s4 s2\p s4 | s\< s s\! s | s\> s s\! s | s s\mf s2 | s1 |
  s4 s\p s s\< | s8 s\! s4 s\> s | s8 s\! s2. | s2. s4\mf | s1 |
  s4\> s2. | s4 s8 s\! s2 | \tag #'st { s4 s\mf s s } \tag #'ab { s2 s4\mf s } | s1*2 |
  s2 s4 s\f\< | s s s s\! | s1 | s2 s4 \tempo "Un poco vivo" s | s1 | s4 s\f s\< s |
  
  s8 s\! s2. | s4 s\f s\< s | s4\! s2. | s1\ff | s1*2 |
  s1*3 | s4 s\f s\< s | s4\! s s\< s8 s\! |
  s2 s4\< s8 s\! | s1 | s1\ff | s1*2 |
  s2 s2\mf | s1\< | s8 s\! s4 s\ff s | s2 s2^\markup{\italic ritard.} | s1*2 |
}

dII = {
  \global
  s4\pp s2. | s1*2 | s2. s4\p | s\< s s s\! |
  s2 s4\> s | s2 s4\! s | s2. s4\p | s1*3 |
  s4 s\mf s2 | s1*3 | s4\p s s s\> | s2 s4 s\! |
  
  s1 | s1\pp | s1*2 | s1\pp |
  s1*2 | s4 s\p s\< s | s8\! s s4 s\> s | s\pp s2. |
  s2. s4\pp | s1 | s4 s8 s\> s4 s\! | s1 | \tag #'sa { s4 s\p s2 } \tag #'tb { s2 s2\p } | 
  s1*3 | s2 s4 \tempo "Un poco vivo" s\mf | s1*2 |
  
  s4 s\mf s\< s | s8 s\! s4 s2 | s4 s\mf s2 | s1*3 |
  s1 | s4 s\f s\< s | s8 s\! s4 s\< s | s8 s\! s4 s2\mf | s1 |
  s1*3 | s2 s\p | s1 |
  s1*2 | s2 s\mf | s2 s2^\markup{\italic ritard.} | s1*2 |
}