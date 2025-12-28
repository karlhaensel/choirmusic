chormidi = \with {
  midiInstrument = "choir aahs"
}

global_transpose = {
  \time 4/4
  \tempo "Allegro moderato"
  \dynamicDown
  \compressEmptyMeasures
}

global = {
  \key es \major
  \global_transpose
}

global_voice = {
  \dynamicUp
  \autoBeamOff
}

global_marks = {
  \global_transpose
  \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet
  \tag #'score {\override Score.RehearsalMark.font-size = #8 }
  s1*9 \mark \default | s1*22 \mark \default | s1*21 \mark \default | s1*28 \mark \default | s1*14 \mark \default
}
