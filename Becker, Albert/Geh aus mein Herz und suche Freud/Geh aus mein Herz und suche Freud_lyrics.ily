\version "2.22.1"


%%% VERS I %%%

t_eins = \lyricmode {
  Geh aus, mein Herz, und su -- che Freud'
  in die -- ser lie -- ben Som -- mer -- zeit
  an dei -- nes Got -- tes Ga -- ben;
  schau' \tag #'s { an der schö -- nen } \tag #'a { an der schö -- nen __ } \tag #'t { an __ der schö -- nen } \tag #'b { an der __ schö -- nen } Gär -- ten Zier,
  und sie -- he wie sie \tag #'s { mir und } \tag #'a { mir __ und } \tag #'t \tag #'b { mir und __ } dir
  \tag #'s \tag #'a \tag #'b {sich } \tag #'t {sich __  } aus -- ge -- schmück -- et ha -- ben.
}


%%% VERS IX %%%

t_IX_ST = \lyricmode {
  Ach, denk' ich, bist du hier __ so schön
  und läs -- sest's uns so lieb -- lich gehn
  auf die -- ser ar -- men Er -- den:
  Was will es wohl nach die -- ser Welt
  dort in __ dem schö -- nen Him -- mels -- zelt
  und güld -- nem Schlos -- se wer -- den!
}

t_IX_A = \lyricmode {
  Ach, __ denk' ich, bist du hier __ so schön, bis du hier so schön, bist __ du hier __ so __ schön
  und läs -- sests's uns __ so lieb -- lich __ gehn __ 
  auf die -- ser ar -- men Er -- den, die -- ser ar -- men __ Er -- den: __
  was will es wohl nach die -- ser, die -- ser Welt, nach die -- ser Welt
  dort in dem schö -- nen Him -- mels -- zelt
  und güld -- nem __ Schlos -- se wer -- den!
}

t_IX_B = \lyricmode {
  Ach, __ denk' ich bist du hier so __ schön
  und läs -- sest's uns so __ lieb -- lich gehn
  auf die -- ser ar -- men Er -- den:
  Was __ will es wohl nach die -- ser __ Welt
  dort in __ dem schö -- nen __ Him -- mels -- zelt
  und güld -- nem __ Schlos -- se wer -- den!
}


%%% VERS XI %%%

t_elf = \lyricmode {
  \tag #'s \tag #'t \tag #'b {O wär' ich da! } \tag #'a1 {O __ wär' ich da! __ } \tag #'a2 {O wär' __ ich da! __ } Ach \tag #'s {stünd' __ } \tag #'a1 \tag #'a2 \tag #'t \tag #'b {stünd' } ich schon,
  o gros -- ser \tag #'s \tag #'a1 \tag #'t \tag #'b { Gott, } \tag #'a2 {Gott, __ } vor \tag #'s \tag #'a1 \tag #'a2 \tag #'t { dei -- nem } \tag #'b {dei -- nem __ } Thron
  und \tag #'s \tag #'a2 \tag #'t \tag #'b {trü -- ge } \tag #'a1 {trü -- ge __ } mei -- ne Pal -- men: __
  So \tag #'s \tag #'a1 \tag #'t \tag #'b {wollt' ich } \tag #'a2 { wollt' __ ich __ } nach der En -- gel Weis'
  er -- hö -- hen dei -- nes \tag #'s \tag #'a1 \tag #'a2 \tag #'t { Na -- mens } \tag #'b { Na -- mens __ } Preis
  mit tau -- send \tag #'s \tag #'a2 \tag #'t \tag #'b {schö -- nen } \tag #'a1 { schö -- nen __ } Psal -- men.
}


%%% HALLELUJA %%%

Halleluja_Start = \lyricmode { Hal -- le -- lu -- ja, }
Halleluja_Start_lang = \lyricmode { Hal -- le -- lu -- ja, __ }
halleluja = \lyricmode { hal -- le -- lu -- ja, }
halleluja_lang = \lyricmode { hal -- le -- lu -- ja, __ }
halleluja_Schluss = \lyricmode { hal -- le -- lu -- ja! A -- men. }

t_H_S = \lyricmode {
  \Halleluja_Start \halleluja \halleluja_lang \repeat unfold 9 {\halleluja} \halleluja_Schluss
}

t_H_A = \lyricmode {
  \Halleluja_Start_lang \repeat unfold 2 {\halleluja} \halleluja_lang \repeat unfold 3 {\halleluja} \halleluja_lang \repeat unfold 7 {\halleluja} \halleluja_Schluss
}

t_H_T = \lyricmode {
  \Halleluja_Start \repeat unfold 5 {\halleluja} \halleluja_lang \repeat unfold 8 {\halleluja} \halleluja_Schluss
}

t_H_B = \lyricmode {
  \Halleluja_Start \repeat unfold 10 {\halleluja} \halleluja_Schluss
}