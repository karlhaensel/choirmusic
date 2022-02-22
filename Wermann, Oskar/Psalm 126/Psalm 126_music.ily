\version "2.22.1"

global = {
  \key d \minor
  \time 4/4
  \dynamicUp
  \autoBeamOff
  \tempo "Langsam."
  \partial 4
}

dTutti = {
  \global
  s4\p | s s2\< s8 s\! | s2 s | s\> s2 |
  s4. s8\! s4 s\mf | s2.\< s8 s\! | s1 | s2\> s8 s\! s4\<^\markup{\dynamic p} |
  s2\! s2\> | s4 s\! s s^\markup{\italic "dolce assai"} | s1*2 | s1\< | s16 s\! s8 s2 s4\mf |
  
  s1\< | s1\! | s1\> | s2\p s\pp | s1*2 |
  s1 | \partial 2. s2. \bar "||" \key a \major \partial 4 \tag #'s \tag #'a \tag #'b {s4\p | s1*2 } \tag #'t {s4 | s2. s4\p | s1 } |
  \tag #'s \tag #'a \tag #'b { s1 | s2. s4\mf | s1 } \tag #'t { s1*2 | s2. s4\mf} |
  
  s1*3 |
  s1\< | s | s2\f s8 s\mf s4 \bar "||"
  \key f \major s1 | s2 s8 s\pp s4 | s2. s4\mf^\markup{\center-align \bold \smallCaps Solo} |
  
  s1\< | s2\> s8 s\! s4 | s1\> | s4.\! \tag #'s \tag #'a \tag #'b { s8 s4 } s4^\markup{\center-align{\italic poco \dynamic f}} \tag #'t { s8 s4 } |
  s1\< | s2\! s\> | s2. s4\mf | s1\> | s2.\p \tag #'s \tag #'a { s4\mf^\markup{\center-align \bold \smallCaps Chor}} \tag #'t \tag #'b {s4} \bar "||"
  \key bes \major \time 6/4 \tempo "Ziemlich lebhaft." \tag #'s \tag #'a {s1.\< | s1\> s2\! | s1. | s1 } \tag #'t \tag #'b { s1. | s1 s4 s\mf^\markup{\center-align \bold \smallCaps Chor}\< | s1. | s1\> }
  
  s2\< | s2.\> s\< | s2\> \tag #'s \tag #'a \tag #'t { s4 s2.\p} \tag #'b { s8 s16 s\! s2. } |
  \tag #'s \tag #'a \tag #'t { s1.\< | s8 s\! s2 s2\mf\< s8 s\! | s2. s2.^\markup{\center-align{\italic poco \dynamic f}}\< } \tag #'b {s2.\p\< s8 s\! s4 s | s1.*2 } |
  s2.\> s\f | s1. | s2.\> s2 s4\mf | s1.\< |
  
  s2.\> \tag #'s \tag #'a \tag #'b { s8 s\! s2 } \tag #'t { s2.\< } | s2.\f\< s2\> s8 s\! | s1. |
  s | s2. s2 \tempo "Ruhiger." s4\p \bar "||" \key f \major \time 3/4 s2. | s4.\> s8\! s4^\markup{\italic più \dynamic p } | s2. |
  s | s\p\< | s2\> s4\mf | s2. | s2.\> |
  
  s4 s8\! \tag #'s {s\p\< s s16 s\! | s2.\< | s2 s4\! | s4.\> s\mf } \tag #'a \tag #'t \tag #'b {s4. | s s\p\< | s8 s\! s2 | s4\> s8 s\! s4 } |
  \tag #'s { s2.\< } \tag #'a \tag #'t \tag #'b {s4. s\mf\< } | s2 s8 s\! | s4.\> s8\! s4^\markup{\center-align \italic poco \dynamic f} | s2.*2 |
  s2.\> | s4 s\! \tag #'s { s4 } \tag #'a \tag #'t \tag #'b { s4\p } | s2. | s2 \tag #'s \tag #'a \tag #'t { s4\mf } \tag #'b {s4} | s2. | s2 s4\< |
  
  s2.\!^\markup{\italic poco \dynamic f} | s2 s4\p | s2. | s2 s4\mf |
  s4. s\< | s\> s\! | s s\< | s\> s8\! s4\f | s2.\< | s |
  s\> | s8 s\! s4 s\pp | s2.*2 | s4 \tempo "ritard." s2 | s2.*2 \bar "|."
}

nWennDerHerrI = { d8 d | f4 e8 e g([ f]) f f | bes2-> a4 }
nWennDerHerrII = { a8 a | \tag #'stb {d4} \tag #'a {d,4} e8 e f([ e]) e e | d4->( c) bes }

nSopran = \relative c' {
  \global
  \nWennDerHerrI d4 | c2->( bes4) bes |
  a2 r4 \keepWithTag #'stb \nWennDerHerrII bes | a( g) f f |
  g2->( f4) f | e2 r4 e | f( g) a b | c2 b4 a | gis2( a4) a | b2.-> gis4 |
  
  a( b) c c | e->( d) c b | a2. b4 | gis2 e4 e | e1~ | e2 e |
  e1~ | e4 r r e | e cis'8 cis b4 gis | a( e) e e |
  e cis'4 b gis8 gis | a4. e8 e4 eis | fis d'8 d cis4 b8([ gis]) |
  
  a4( fis) eis eis | fis d' cis b8 gis | a4 eis fis b8 b |
  a([ b]) cis d e4 e | e4. e8 e4 e | e2 r8 cis cis cis |
  d4 d c! c8 c | c4 b r8 as g f | f4 e r g |
  
  as4 as bes bes | des2-> c4 c | es->( des) c c | bes4. r8 r4 c |
  des2 es | ges-> f4 f | es( des) c bes | a2-> bes4 e, | f2.
  <<{\voiceOne f4 | f( bes) bes es es d | c->( bes) bes a2} \new Voice {\voiceTwo d,!4 | d( f) f bes bes bes | g2 g4 f2}>> \oneVoice r4 | R1. |
  
  r2 r4 r c' es | es->( d) d d2( c4) | c->( bes) bes a4 a g |
  f2 f4 bes2 a4 | g2 r4 f a c | f4.->( bes,8) bes4 bes d f |
  g4.->( d8) d4 es d c | bes( a bes des c) bes | a2( g4) f2 f4 | f( bes) bes es es d |
  
  c( bes) bes a2 r4 | bes d f f->( es) d | g,-> es' c a2 bes4 |
  c1. | bes2.~ bes4 r\fermata a8 a | bes2-> a4 | a g a8([ g]) | f2 g4 |
  f e r | f f8 f g a | bes4-> a a | c->( bes) a | g2( a8[ bes]) |
  
  a4. f8 f f | d'2.->~( | d4. es8) d([ c]) | c->([ b]) b g g g |
  es'2.->~( | es4. g8) f([ es]) | es->([ d]) d4 d | d->( c) d | f->( es) c |
  bes2( c4) | c2 r4 | R2. | r4 r a | a8([ g]) g([ f']) e([ d]) | d([ c]) c4 c |
  
  f4. b,8 b b | c4 c c | des4. f,8 f g | a!4 a a |
  d4.-> c8 bes([ a]) | a->([ bes]) bes4 b | c4.-> g8 a([ bes!]) | bes->([ a]) a4 c | d( e) f | f( c) c |
  g'2.-^ | f2 a,4 | a2 a4 | c8([ bes] a4) g | f!2.~( | f4 e8[ d] e4) | f2\fermata r4 |
}

nAlt = \relative c' {
  \global
  \nWennDerHerrI d, | d2->( e4) e |
  f2 r4 \keepWithTag #'a \nWennDerHerrII d | cis2 d4 d |
  d2.-> b4 | cis2 r4 cis | d( e) f f | e2 d4 dis | e2. e4 | f2.-> e4 |
  
  e2 e4 e | f2-> f4 f | f( e dis) dis | e2 b4 b | e( d c b | c2) c |
  b1~ | b4 r r e8([ d]) | cis4 e8 e d4 b | cis( a) gis d' |
  cis e d d8 d | cis4. a8 gis4 b | cis eis8 eis fis4 cis |
  
  cis( a) gis cis | cis eis fis cis8 cis | cis4 gis' fis e!8 e |
  e2 d4 d8 d | cis([ d]) e fis gis([ a]) fis([ gis]) | a2 r8 e e e |
  d4 d e e8 e | f4 f r8 d d d | des4 des r des |
  
  c c es es | f2-> es4 es | es2-> es4 es | es4. r8 r4 ges |
  f2 as | bes-> as4 as | ges2 ges4 ges | f( es) des des | c2. bes4 |
  bes( d) d g g f | es->( e) e f2 r4 | R1. |
  
  r2 r4 r f f | f2-> f4 fis( g a) | a->( g) g cis, d e |
  f2 d4 d( e) f | e2 r4 f f f | f2-> d4 d f bes |
  b->( a) g g g g | g2.~ g2 g4 | f( c es!) es2 <d bes>4 | <d bes>( <f d>) <f d> es es f |
  
  g2 g4 f2 r4 | f f f f2-> f4 | g-> g g f( es) d |
  g2( c,4~ c d es) | d2.~ d4 r\fermata f8 f | g2-> f4 | f e e | d2 d4 |
  d cis r | d d8 d c! f | e4-> f f | es->( d) f | f( e!8[ d] e4) |
  
  f4. r8 r4 | r4 r8 f f f | fis2-> fis4 | f4-> f8 r r4 |
  r r8 g g g | f2 a4 | a-> bes as | g2 g4 | g2 g4 |
  d( e2) | f f4 | f8([ e]) e([ bes']) a([ g]) | g([ f]) f4 f | f8([ g]) g([ a]) g([ f]) | f([ e]) e4 e |
  
  f4 f f8 f | es4 es es | des des des8 des | c4 c c8([ cis]) |
  d->([ e fis]) fis fis4 | fis8->([ g]) g4 g | g8->([ f e]) e e4 | e8->([ f]) f4 f | f( g) gis | a2 a4 |
  bes2.-^ | a2 g4 | f( e) f | g( fis) d | d2.(  | c) | c2\fermata r4 |
}

nTenor = \relative c {
  \global
  \nWennDerHerrI a | d2.-> cis4 |
  d2 r4 \keepWithTag #'stb \nWennDerHerrII e, | e2 d4 d |
  bes'2->( a4) gis | a2 r4 a | a2 d4 gis, | a2 a4 a | b2( a4) c | d2.-> b4 |
  
  a( gis) a a | a2-> e'4 d | c2( b4) a | b2 gis4 gis | a2.( b4 | a2) a |
  gis1~ | gis4 r r r | r2 r4 e | e cis'8 cis b4 gis |
  a2 e4 e | e cis' b gis8 gis | a4 gis a eis |
  
  fis d'8 d cis4 b8([ gis]) | a4( gis) a eis | fis d' cis gis8 gis |
  a2 gis4 gis8 gis | a([ b]) cis d <e b>4 <d b> | <cis a>2 r8 a a bes |
  a4 a a a8 a | as4 as r8 c b b | bes4 bes r bes |
  
  as as g g | as2-> as4 as | bes2-> as4 as | g4. es'8 es4 es |
  des2 c | des-> des4 des | bes2 es4 des | c2-> bes4 bes | a2. r4 |
  R1. | r2 r4 r r <<{\voiceOne f | f( bes) bes es es d | c->( bes) bes a2} \new Voice {\voiceTwo d,4 | d( f) f bes bes bes | g2 g4 f2}>> \oneVoice
  
  a4 | c->( bes) bes a2( d4) | d2-> d4 a b cis |
  d2 a4 g2 a8([ b]) | c2 r4 a c es! | d( bes) bes bes bes d |
  d->( c) b c b c | des( c des bes c) des | c2( bes4) a2 bes4 | bes2.~ bes2 bes4 |
  
  bes  d c c( d) es | f( bes,) bes a2-> bes4 | b( c) c c2 bes4 |
  bes2.( a) | bes2.~ bes4 r\fermata c8 c | des2-> c4 | c-> c bes | a2 g4 |
  a a r | a a8 a c c | c4-> c c | a->( bes) c | c2. |
  
  c4. r8 r4 | r4 r8 d d d | c2-> d8([ es]) | d4-> d8 r r4 |
  r r8 es es d | c([ bes] a4) c | c-> bes b | b->( c) b | d( c) g8([ a]) |
  bes2. | a2 c4 | bes bes8([ d]) c([ bes]) | bes([ a]) a4 d8([ c]) | b4 b b | b c bes |
  
  as as as8 as | as4 as ges | f f f8 e! | f4 f f8([ g]) |
  fis->([ g a]) es' d([ c]) | c->([ d]) d4 d | c4.-> c8 c4 | c-> c c | bes( cis) d | c!( f) f |
  f4( e8[ d] e4) | c2 cis4 | d( cis) d | d( c!) bes | a2( as4 | g2~ g8[ bes]) | a2\fermata r4 |
}

nBass = \relative c {
  \global
  \nWennDerHerrI f | g2.-> g4 |
  d2 r4 \keepWithTag #'stb \nWennDerHerrII g | a2 bes4 bes |
  g2->( d'4) d | a2 r4 a' | d,2 d4 d | c2 f4 f | e( d c) a | gis2.-> d'4 |
  
  c4( b) a a' | d,2-> d4 d | dis( e f) f | e2 e4 d | c( b a gis | a b) c( d) |
  e1~ | e4 r r e | a,2 a4 a | a2. a4 |
  a1~ | a4 a r d | cis2. cis4 |
  
  cis2 cis4 cis | cis2 cis4 cis | cis( b a) d |
  <<\new Voice {\voiceOne cis4( e2) e4 | e2. e4 | e2} {\voiceTwo cis2( b4) b | a2. a4 | a2}>> \oneVoice r8 a'8  a g |
  f4 f e e8 e | d4 d r8 f g as | g4 g r e! |
  
  f f es es | des2-> as'4 as | g2-> as4 as | es4. r8 r4 a! |
  bes2 as | ges-> des4 des | es2 es4 es | f2-> f4 f | f2. r4 |
  R1. | r2 r4 r r bes, | bes( d) d g g f |
  
  es->( e) e f2 f4 | bes,2-> bes4 d4( e fis) | g2-> g4 r2 r4 |
  d e f g2 r4 | c, d e f2 r4 | bes, d f as2 as4 |
  g2 g4 c, d es | e2.~ e2 e4 | f2. f2 bes4 bes2 a4 g g f |
  
  es2 es4 es2 r4 | d d d c2-> bes4 | es->( c) es f( fis) g |
  es2.( f) | <f~ bes,~>2. <f bes,>4 r\fermata f8 f | f4->( e) f | c-> c cis | d( c) bes |
  a a r | d d8 d e f | g4-> f f | fis->( g) a8([ bes]) | c2( c,4) |
  
  f4. r8 r4 | r r8 bes bes bes | a4( d,) d | as'-> g8 r8 r4 |
  r r8 c c bes | a([ g] f4) f4 | fis-> g f | es2 d4 | c2 es4 |
  g2. | f2 a4 | g g c, | d d r | r r g, | gis a c |
  
  des4 des des8 des | as4 as as | bes bes bes8 bes | f4 f f'8([ e]) |
  d4.-> d8 d4 | g-> g g8([ f!]) | e->([ d c]) c c4 | f-> f a, | bes2 b4 | c2 c4 |
  c2.-^ | f2 e4 | d2 d4 | g,( a) bes | d2( b4 | c2.) | <f f,>2\fermata r4 |
}