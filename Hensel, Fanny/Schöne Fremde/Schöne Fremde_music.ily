\version "2.24.3"

global = {
  \key e \minor
  \time 6/8
  \tempo "Moderato"
  \autoBeamOff
  \dynamicUp
  \override Score.DynamicTextSpanner.style = #'none
}

common = {
  \global
  \partial 8 s8\p | s2.*2 |
  s2.*4 |
  s4.\> s4.\> | s4.\> s8 s\! s | s2.*2 |
  
  s2. | \tag #'s \tag #'t { s2. } \tag #'a \tag #'b { s2.\cresc } | s4. s4 s8\f | s2.*2 |
  s2. | s4. s4 s8\p | s2.*2 |
  s2.\cresc | s4.\f s4 s8\p | s2.*2 |
  
  s2.*4 |
  s2.*5 |
  s2. | \tag #'s { s4. s4 s8\f | s2. | s2.\dim | s2.\p } \tag #'a \tag #'t \tag #'b { s2.\f | s2.*2 | s4. s\p } |
  
  s4. s4 s8\f | s2.*3 | s4. s4 s8\p \key e \major \time 4/4 \tempo "Allegro molto vivace"
}

nSopran = \relative c'' {
  \global
  b8 | g a ais b c b | e4. b4 b8 |
  a b c c([ d]) c | fis4. r8 b, b | b([ g']) fis e b g | fis4. e4 g8 |
  b([ a]) g b a g | fis4.~ fis4 r8 | r4. r4 b8 | b4( e8) c4 ais8 |
  
  ais4 b8 r4 b8 | b c b e([ c]) a | g4.( fis4) a8 | c4.( b4) a8 | g'4( fis8 e4) c8 |
  b4.~ b8 e dis | dis4.( e4) b8 | e d c c([ b]) a | gis4( b8) a4 gis8 |
  e'([ d]) c c b a | f'4.~ f4 g,8 | e([ f]) fis g a g | c4. g4 g8 |
  
  b8([ g]) a b c b | e4. r4 ais,8 | b([ g']) fis e b g | fis4. e4 g8 |
  b([ a]) g b a g | fis4.~ fis4 r8 | r4. r4 b8 | b4( e8) c4 ais8 | ais4 b8 r4 b8 |
  b4( e8) c4 b8 | ais4. r4 ais8 | b4( g'8 e4) c8 | ais4( b8) e,4 fis8 | g4.~( g4 fis8) |
  
  e4. r4 b'8 | c4.~ c8 b a | e'4.( dis4) b8 | c4.~ c8 b a | g'4.\fermata( fis4\fermata) b,8 |
  b4
}

nAlt = \relative c'' {
  \global
  g8 | e fis g g a g | e([ fis g~] g) fis e |
  fis g a a([ b]) a | fis([ g a~] a) g fis | e4 e8 e e e | dis4. e4 e8 |
  g([ fis]) e g fis e | e4.~ e4 fis8 | fis4( a8) g4 fis8 | e4 e8 r4 e8 |
  
  dis4( fis8) e4 dis8 | e4.~ e4 e8 | d4.~ d4 fis8 | fis4.~ fis4 fis8 | g4( a8 b4) a8 |
  g4. a4 a8 | a4.( g4) gis8 | a4. fis4 fis8 | e4( f8) e4 d8 |
  e4. a8([ gis]) a | a4.( g4) b,8 | c([ d]) dis e f e | c([ d e~] e) d c |
  
  b8([ e]) fis g a g | e([ fis g~] g[ fis]) e | e4. e4 e8 | dis4. e4 e8 |
  g([ fis]) e g fis e | e4.~ e4 fis8 | fis4( a8) g4 fis8 | e4 e8 r4 e8 | dis4( fis8) e4 dis8 |
  e4.~ e4 r8 | g4. g4 g8 | g2. | R2. | r4. dis |
  
  e4. r4 g8 | g4.~ g8 g g | a4. r4 fis8 | g4.~ g8 g g | a4.~\fermata a4\fermata dis,8 |
  e4
}

nTenor = \relative c' {
  \global
  b8 | b4. b4 b8 | g([ a b~] b) a g |
  c4. c4 c8 | a([ b c~] c) b a | g4 g8 b b b | c4. b4 b8 |
  g([ a]) b g a b | c4.( cis4) e8 | dis4. dis4 dis8 | b4 b8 r4 g8 |
  
  fis4( a8) g4 fis8 | c'4( gis8 a4) c8 | b4.( a4) d8 | a4.( b4) c8 | b4( dis8 e4) e8 |
  e4. fis4 fis8 | fis4.( e4) d8 | c b a dis4 dis8 | e4( d!8) c4 b8 |
  c([ b]) a e' d c | c4.( b4) g8 | g4. g4 g8 | e([ f g~] g) f e |
  
  g4. e4 e8 | g4.~ g4 g8 | g4. b4 b8 | c4. b4 b8 |
  g([ a]) b g a b | c4.( cis4) e8 | dis4. dis4 dis8 | b4 b8 r4 g8 | fis4( a8) g4 fis8 |
  c'4.~ c4 r8 | e4. e4 e8 | e2. | R2. | r4. a,4. |
  
  g4. r4 e'8 | e4.~ e8 e e | fis4. r4 dis8 | e4.~ e8 e e | dis4.~\fermata dis4\fermata a8 |
  gis4
}

nBass = \relative c {
  \global
  e8 | e4. e4 e8 | e4. e4 e8 |
  e4. e4 e8 | dis4. dis4 dis8 | e4. g4 g8 | a4. g4 g8 |
  e([ fis]) g e fis g | a4.( ais4) fis8 | b4( c8) b4 a8 | g4 g8 r4 e8 |
  
  b4. b4 b8 | c4.~ c4 c8 | d4.~ d4 d8 | dis4.~ dis4 dis8 | e4( fis8 g4) a8 |
  b4. b,4 b8 | e4.~ e4 e8 | e4. e4 e8 | e4. e4 e8 |
  e4. e4 e8 | d4.( g4) g,8 | c4. c4 c8 | c4. c4 c8 |
  
  b4. b4 b8 | ais4. cis | b g'4 g8 | a4. g4 g8 |
  e([ fis]) g e fis g | a4.( ais4) fis8 | b4( c8) b4 a8 | g4 g8 r4 e8 | b4. b4 b8 |
  c4.~ c4 r8 | c'4. c4 c8 | b2. | R2. | r4. b, |
  
  e4. r4 b'8 | a4.~ a8 b c | b4. r4 b,8 | a4.~ a8 b c | b4.~\fermata b4\fermata b8 |
  e4
}