#lang racket



(provide ;backgrounds
         ;sprites
         beigealien-sprite
         bluealien-sprite
         greenalien-sprite
         pinkalien-sprite
         yellowalien-sprite
         random-alien-sprite
         beigeufo-sprite
         blueufo-sprite
         greenufo-sprite
         pinkufo-sprite
         yellowufo-sprite
         random-ufo-sprite
         )

(require cartoon-assets
         (only-in game-engine sheet->sprite
                              new-sprite)
         (only-in 2htdp/image rotate
                              scale
                              image-width))

;copied from animal-friendly-asset-names
;pull out elsewhere?
(define (make-wiggle-animation img)
    (list img
          (rotate -10 img)
          img
          (rotate 10 img)))

;aliens
 
(define beigealien-sprite
  (sheet->sprite (scale 0.5 alienbeige-sheet)
                 #:columns 2
                 #:delay 4))
 
(define bluealien-sprite
  (sheet->sprite (scale 0.5 alienblue-sheet)
                 #:columns 2
                 #:delay 4))

(define greenalien-sprite
  (sheet->sprite (scale 0.5 aliengreen-sheet)
                 #:columns 2
                 #:delay 4))
 
(define pinkalien-sprite
  (sheet->sprite (scale 0.5 alienpink-sheet)
                 #:columns 2
                 #:delay 4))

(define yellowalien-sprite
  (sheet->sprite (scale 0.5 alienyellow-sheet)
                 #:columns 2
                 #:delay 4))

(define (random-alien-sprite)
  (lambda () (first (shuffle (list beigealien-sprite bluealien-sprite
                                   greenalien-sprite pinkalien-sprite
                                   yellowalien-sprite)))))

;ufos

(define beigeufo-sprite
  (new-sprite (make-wiggle-animation (scale 0.5 ufobeige)) 5))

(define blueufo-sprite
  (new-sprite (make-wiggle-animation (scale 0.5 ufoblue)) 5))

(define greenufo-sprite
  (new-sprite (make-wiggle-animation (scale 0.5 ufogreen)) 5))

(define pinkufo-sprite
  (new-sprite (make-wiggle-animation (scale 0.5 ufopink)) 5))

(define yellowufo-sprite
  (new-sprite (make-wiggle-animation (scale 0.5 ufoyellow)) 5))

(define (random-ufo-sprite)
  (lambda () (first (shuffle (list beigeufo-sprite blueufo-sprite
                                   greenufo-sprite pinkufo-sprite
                                   yellowufo-sprite)))))

;spaceships



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