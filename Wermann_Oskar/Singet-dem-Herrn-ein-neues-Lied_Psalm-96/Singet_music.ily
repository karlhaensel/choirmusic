\version "2.24.3"

global = {
  \key g \major
  \time 3/4
  \autoBeamOff
  \dynamicUp
}

common = {
  \global
  \repeat segno 2 {
    \tempo 4=86 s2.*15 | \tag #'s { s2.\f } \tag #'a \tag #'t \tag #'b { s2. } | s2.*2 | s4 \tag #'s \tag #'a \tag #'b { s2 } \tag #'t { s2\f } | s2.*2 |
    \alternative {
      \volta 1 { s2. \bar "||" \key c \minor s2.*31 \bar "||" \key c \major \tempo "poco animato" 4=112 s2.*22 \bar "||" \break }
    }
  }
  {\section \sectionLabel \markup {\bold \smallCaps "Coda"}}
  \key g \major \tempo 4=86 s2. | s2 s4\f | s2.*7 \bar "|." \fine
}

nSopran = \relative c'' {
  \global
  R2. | g8 g16 a b8 a b c | d4. d8 d c |
  b4. d8 c b | c4 r r | a8 a16 b c8 b c d |
  e4. e8 e d | c4. e8 d b | a4 d,16([ cis d e] fis[ e]) fis([ g]) |
  
  a4 r r |g16([ fis g a] b[ a]) b([ c]) d4 | r8 g, g4 g8 g |
  e'2 c16([ b]) c([ d]) | e2 c16([ b]) c([ d]) | e4. e8 e16([ d]) e([ fis]) |
  g4. d8 c b | e4 a, a8 b | c2~( c8[ b]) | b4 r r | e8 d c4. c8 | b([ a] d4) g,8([ c]) |
  
  b2~( b8[ a]) | g2 r4 | as8. as16 as8 as16 as as8 as | as([ g16 f] g8) g es'([ d]) |
  c4( f8) d c bes | bes4( es) d8 d | c2~ c8 bes | bes4 as es'8 es |
  d2~ d8 c | c4 bes bes8 bes | g'4. es8 bes([ g]) | c4( f,) \tuplet 3/2 { c'8([ d]) es } | es4( d8) d d4 |
  
  es2 r4 | R2. | r4 r es8 es | d2. d4 g,8 g g g | f'8.([ es16]) d4 d8 d | d8.([ es16]) es4 c8 c |
  as'([ g f es d c]) | b4. r8 d4 | d8.([ e16]) d4. d8 | d8.([ e16]) d4 d | e8.([ f16]) e4. e8 |
  e8.([ f16]) e4 fis8 fis | g4. es8 bes c | d8.([ es16]) d4 d8 d | es4. c8 g a | b8.([ c16]) b4 d8 d | d2. |
  
  b2 g8 g | c2 c4 | c( b) g | d'2 d4 | d c c | f2 f4 | f( e) c |
  g'2 bes,4 | bes a r | f'2 e4 | d2 c4 | bes8 bes f4 g | a a r | c2 bes4 |
  a2 g4 | as8 as c4 as | g fis d8 d | g2 g4 | bes,2 c4 | d2.~ | d | d~ | d2 r4 |
  
  b'2~( b8[ a]) | g2 g8 g | c2. | b2 g8 g | e'2.( | d) | d~ | d~ | d4 r r |
}

nAlt = \relative c' {
  \global
  R2. | b8 b16 d g8 fis g a | b4. g8 fis a |
  g4. d8 e e | e4 r r | c8 c16 e a8 gis a b |
  c4. a8 gis b | a4. fis8 g g | fis4 r d16([ cis d e] |
  
  fis[ e]) fis([ g]) a4 d,8 d | d4 g16([ fis g a] b[ a]) b([ c]) | d4 r g,8 g |
  g2 e16([ d]) e([ f]) | g2 e16([ d]) e([ fis]) | g4. g8 bes bes |
  b([ a g]) g g g | g4 fis fis8 g | g4( fis8[ e] fis4) | g r g8 fis | e([ gis a b]) a([ g]) | fis4( g) g |
  
  g2 fis4 | g8. g16 g8 g16 g g8 g | g([ f16 es] f8) bes, c([ d]) | es2 g4 |
  as4. as8 as as | as([ g16 f] g4) r | r8 e16 e f8 g as e | e4 f as8 as |
  a([ fis g]) a bes fis | fis4 g as8 as | g4. bes8 g([ es]) | es2 \tuplet 3/2 { f4 f8 } | f([ c' bes]) as g([ f]) |
  
  es2 g4 | c4. es,8 f g | g4 c, g'8 g | as2( a4) | g4 r r | r r g8 g | g4 g g8 g |
  as2. | g4. g8 g g | fis4. fis8 fis fis | g4 g8 g g g | gis4. gis8 gis gis |
  a4 a a8 a | g!4 g g8 g | f4 f f8 f | es4 es es8 es | d4 d g8 g | g4( fis8[ e] fis4) |
    
  g2 g8 g | e4( g) e | d2 g4 | f( a) f | e e g8([ bes]) | a([ bes c bes]) c([ a]) | g2 c4 |
  bes2 g4 | g f r | a2 g4 | f( bes) a | g8 g d4 e | f e r | a2 g4 |
  fis2 g4 | es8 es es4 es | d d d8 d | g2 g4 | bes,2 c4 | d2.( | c2 bes4) | a2.~ | a2 r4 |
  
  g'2( fis4) | d2 g8 g | e2( fis4) | g2 g8 g | g2.( | fis) | g~ | g~ | g4 r r |
}

nTenor = \relative c' {
  \global
  g8 g16 a b8 a b c | d2 r4 | d4 g, r |
  d'8 d16 d d8 g,([ gis]) gis | a8 a16 b c8 b c d | e2 r4 |
  e4 a, r | e'8 e16 e e8 c d d | d4 r r |
  
  r4 d16([ cis d e] fis8) d | b4 r r | g16([ fis g a] b[ a]) b([ c]) d4 |
  c8 c c16([ b c d] e8) c | c4 c16([ b]) c([ d]) e4 | r cis16([ b]) cis([ d]) cis8 g' |
  g([ d b]) b e d | c4 c c8 b | a2. | g4 g'8 fis e d | c([ b] a4) a | d2 e4 |
  
  d8([ cis e d] c4) | b2 r4 | R2.*2 |
  f8. f16 f8 f16 f f8 f | bes4. bes8 b4 | c4. c16 c c8 c | c4 c r |
  r8 a16 a g8( d'4) d8 | d([ es]) d4 d8 d | es4. es8 es([ bes]) | as4( c) \tuplet 3/2 { es8([ d]) c } | bes4. bes8 bes([ as]) |
  
  g2 r4 | R2. | r4 r c8 c | c2. | b4 g8 g g g | f'8.([ es16]) d4 b8 b | b8.([ c16]) c4 c8 c |
  c4( as'8[ g f es]) | d4. d8 d d | c4. c8 c c | b4 b8 d d d | d4. d8 d d |
  c4 c c8 c | bes4 bes bes8 bes | bes8.([ a16]) bes4 as8 as | g4 g g8 g | g4 g b8 b | c2( d4) |
  
  d2 g,8 g | g2 g4 | g2 g4 | a2 a4 | a a c | c2 c4 | c2 c4 |
  c2 c4 | c4 c r | r d cis | d2 es4 | d8 d d4 d | d cis r | r es d |
  r c bes | c8 c as4 c | bes a d,8 d | g2 g4 | bes,2 c4 | d2.( | a'2 g4) | fis2.~ | fis2 r4 |
  
  d'8([ cis e d] c4) | b2 g8 g | g2( a4) | g2 d'8 d | c2( b4 | a2 c4) | b2.~ | b~ | b4 r r |
}

nBass = \relative c' {
  \global
  R2. | g4 g r | g8 g16 a b8 b a fis |
  g4. b,8 e e | a,4 r r | a' a r |
  a8 a16 b c8 c b gis | a4. a8 b g | d4 r r |
  
  d16([ cis d e] fis[ e]) fis([ g]) a8 fis | g4 r g16([ fis g a] | b[ a]) b([ c]) d4 b,8 b |
  c16([ b c d] e[ d]) e([ f]) g4 | c,16([ b c d] e[ d]) e([ f]) g4 | cis,16([ b cis d] e[ d]) e([ fis]) g8 cis, |
  d4. d8 d d | d4 d d8 d | d2( dis4) | e r r | r a8 g fis e | d([ c] b4) c |
  
  d2. | g2 r4 | R2. | es8. es16 es8 es16 es es8 es |
  es([ d16 c] d8) bes c([ d]) | es2 g8 g | e([ c d]) e f g | f4 f f8 f |
  fis([ d e]) fis g a | g4 g r | r8 es([ bes']) g es4 | as2 \tuplet 3/2 { a4 a8 } | bes4. bes8 bes,4 |
  
  es2 g4 | c4. es,8 f g | g4 c, c8 es | f2( fis4) | g r r | r r g8 g | g8.([ c,16]) c4 es8 es |
  f2. | g4. b8 b b | a4. a8 d, d | g4 g8 b b b | b4. b8 e, e |
  a4 a d,8 d | es4 es es8 es | bes4 bes bes8 bes | c4 c c8 c | g4 g' g8 g | a2( d,4) |
  
  g2 g8 g | c,4( e) c | g( g') g | d( f) d | a a' e | f8([ g a g]) a([ f]) | c'4( c,) c' |
  e,8([ d e c]) d([ e]) | f4 f r | d2 a'4 | bes2 fis4 | g8 g bes4 bes | a a r | fis2 g4 |
  d2 es4 | c8 c c4 c | d d d8 d | g2 g4 | bes,2 c4 | d2.~ | d | d~ | d2 r4 |
  
  d2. | g2 g8 g | c,2( a4) | e'2 b8 b | c2.( | d) | <g~ g,~>2. | <g~ g,~> | <g g,>4 r r | 
}