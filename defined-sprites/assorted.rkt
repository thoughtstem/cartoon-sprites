#lang racket



(provide ;backgrounds
         ;sprites
         beigealien-sprite
         bluealien-sprite
         greenalien-sprite
         pinkalien-sprite
         yellowalien-sprite
         randomalien-sprite
         )

(require cartoon-assets
         (only-in game-engine sheet->sprite))

;aliens
 
(define beigealien-sprite
  (sheet->sprite alienbeige-sheet
                 #:columns 2))
 
(define bluealien-sprite
  (sheet->sprite alienblue-sheet
                 #:columns 2))

(define greenalien-sprite
  (sheet->sprite aliengreen-sheet
                 #:columns 2))
 
(define pinkalien-sprite
  (sheet->sprite alienpink-sheet
                 #:columns 2))

(define yellowalien-sprite
  (sheet->sprite alienyellow-sheet
                 #:columns 2))

(define (randomalien-sprite)
  (lambda () (first (shuffle (list beigealien-sprite bluealien-sprite
                                   greenalien-sprite pinkalien-sprite
                                   yellowalien-sprite)))))
 

 ;SPACE -- S (moons/planets)
   ;cursors
     ;randomized ufo all -- u (make random icon)
     ;randomized spaceship all - s?
   ;collects
     ;randomized alien all -- a
     ;cow - c
   ;avoids
     ;meteor (randomized?) -- m
     ;human (greenshirtkid/blueshirtgirl/etc random) -- h
   ;specials
    ;gemyellow - g
    ;wrench - w

 ;FOREST -- F (castles/towers)

   ;cursors
     ;knight - k
     ;(female character here)
   ;collects
     ;food - ?
     ;weapon - ?
   ;avoids
     ;zombies (random) - z
     ;ninja - n
   ;specials
     ;spinninggoldcoin - c
     ;treasure chest - t

 ;SKY -- C  (clouds)

   ;cursors
     ;pilot - p
     ;flying superhero?
   ;collects
     ;flaggreen - f
   ;avoids
     ;bomb - b
     ;hornet (bee) - h
   ;specials
     ;keyyellow - k?
     ;firstaidkit -- +



 ;GEN SPECIALS
    ;slow -- t
      ;turtle
    ;freeze -- i
      ;snowflake
    ;light -- l
      ;sun?