\version "2.22.1"

global = {
  \key es \major
  \time 4/4
  \partial 4
}

nSopran = \relative c'' {
  \global
  \dynamicUp
  bes4 | bes4. as8 g4 g | g8([ as]) g([ f]) es4 
  bes' | es d8([ c]) bes4 g | f8([ g]) as([ bes]) g4
  g | f4. bes8 d([ c]) bes([ a]) | c2 bes4
  \repeat unfold 2 {bes, | as'4. g8 f4 f | bes8([ c]) bes([ as]) g4}
  g8([ as]) | bes4 g8([ as]) bes4 g8([ as]) | bes2 g4
  bes4 | es4. c8 bes([ as]) g([ f]) | f2 es4 \bar "|."
}

nAlt = \relative c' {
  \global
  \dynamicUp
  es4 | es4. d8 es4 es | es d es
  es | es es d es | es d es
  es | f4. d8 es4 es | es2 d4
  \repeat unfold 2 {bes | f'4. es8 d4 d | es d es}
  es | f es es es | f2 es4 
  es | es4. es8 d4 d | d2 es4 \bar "|."
}

nTenor = \relative c' {
  \global
  \dynamicUp
  g4 | bes4. bes8 bes4 bes | bes8([ c]) bes([ as]) g4
  g | g as f es | c' bes bes
  bes | bes4. bes8 a4 c | a2 bes4
  \repeat unfold 2 {bes, | bes'4. bes8 bes4 bes | bes bes bes}
  c | bes bes bes bes | bes2 bes4 
  g | g4. as8 f4 bes | as2 g4 \bar "|."
}

nBass = \relative c {
  \global
  \dynamicUp
  es4 | g4. f8 es4 es | bes bes es
  es | c as bes c | as bes es
  es | d4. bes8 f'4 f | f2 bes,4
  \repeat unfold 2 {bes4 | d4. es8 bes4 as' | g f es}
  c | d es g es | d2 es4 
  es | c4. as8 bes4 bes | bes2 es4 \bar "|." 
}
