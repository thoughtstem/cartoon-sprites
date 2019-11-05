#lang racket

(provide ;backgrounds
         SPACE-BG
         CLOUD-BG
         GRASSY-BG
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
         spaceship01-sprite
         spaceship02-sprite
         spaceship03-sprite
         spaceship04-sprite
         spaceship05-sprite
         spaceship06-sprite
         spaceship07-sprite
         random-spaceship-sprite
         adventurer-sprite
         girl-sprite
         boy-sprite
         soldier-sprite
         random-squarehead-sprite
         cow-sprite
         browncow-sprite
         knight-sprite
         goblin-sprite
         zombie-sprite
         yellowgem-sprite
         wrench-sprite
         firstaid-sprite
         yellowkey-sprite
         pilot-sprite
         dragon-sprite
         bee-sprite
         bronzecoin-sprite
         silvercoin-sprite
         goldcoin-sprite
         greenflag-sprite
         apple-sprite
         banana-sprite
         cherry-sprite
         grapes-sprite
         lemon-sprite
         orange-sprite
         pear-sprite
         plum-sprite
         random-fruit-sprite
         radish-sprite
         fatbird-sprite
         random-meteor-sprite
         ninja-sprite
         helmet-sprite
         ;world-object assets
         greencastle-sprite
         redcastle-sprite
         greentower-sprite
         redtower-sprite
         cloud1-sprite
         cloud2-sprite
         cloud3-sprite
         cloud4-sprite
         tree1-sprite
         tree2-sprite
         pinetree-sprite
         moon-sprite
         mushroom-sprite
         meteor01-sprite
         meteor02-sprite
         meteor03-sprite
         meteor04-sprite)

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
  (sheet->sprite (scale 0.3 alienbeige-sheet)
                 #:columns 2
                 #:delay 5))
 
(define bluealien-sprite
  (sheet->sprite (scale 0.3 alienblue-sheet)
                 #:columns 2
                 #:delay 5))

(define greenalien-sprite
  (sheet->sprite (scale 0.3 aliengreen-sheet)
                 #:columns 2
                 #:delay 5))
 
(define pinkalien-sprite
  (sheet->sprite (scale 0.3 alienpink-sheet)
                 #:columns 2
                 #:delay 5))

(define yellowalien-sprite
  (sheet->sprite (scale 0.3 alienyellow-sheet)
                 #:columns 2
                 #:delay 5))

(define (random-alien-sprite)
  (first (shuffle (list beigealien-sprite bluealien-sprite
                        greenalien-sprite pinkalien-sprite
                        yellowalien-sprite))))

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
  (first (shuffle (list beigeufo-sprite blueufo-sprite
                        greenufo-sprite pinkufo-sprite
                        yellowufo-sprite))))

;spaceships
;create "bounce" animator function?

(define spaceship01-sprite
  (new-sprite (scale 0.5 spaceship01)))

(define spaceship02-sprite
  (new-sprite (scale 0.5  spaceship02)))

(define spaceship03-sprite
  (new-sprite (scale 0.5 spaceship03)))

(define spaceship04-sprite
  (new-sprite (scale 0.5 spaceship04)))

(define spaceship05-sprite
  (new-sprite (scale 0.5 spaceship05)))

(define spaceship06-sprite
  (new-sprite (scale 0.5 spaceship06)))

(define spaceship07-sprite
  (new-sprite (scale 0.5 spaceship07)))

(define (random-spaceship-sprite)
  (first (shuffle (list spaceship01-sprite spaceship02-sprite
                        spaceship03-sprite spaceship04-sprite
                        spaceship05-sprite spaceship06-sprite
                        spaceship07-sprite))))

;squareheaded people

(define adventurer-sprite
  (sheet->sprite (scale 0.7 adventurer-sheet)
                 #:columns 2
                 #:delay 5))

(define girl-sprite
  (sheet->sprite (scale 0.7 blueshirtgirl-sheet)
                 #:columns 2
                 #:delay 5))

(define boy-sprite
  (sheet->sprite (scale 0.7 greenshirtkid-sheet)
                 #:columns 2
                 #:delay 5))

(define soldier-sprite
  (sheet->sprite (scale 0.7 soldier-sheet)
                 #:columns 2
                 #:delay 5))

(define (random-squarehead-sprite)
  (first (shuffle (list adventurer-sprite
                        girl-sprite
                        boy-sprite
                        soldier-sprite))))

;cow
(define cow-sprite
  (sheet->sprite (scale 0.7 cow-sheet)
                 #:columns 7
                 #:delay 5))

(define browncow-sprite
  (sheet->sprite (scale 0.7 browncow-sheet)
                 #:columns 7
                 #:delay 5))


;meteors
(define meteor01-sprite
  (new-sprite (scale 0.5 meteor01)))
(define meteor02-sprite
  (new-sprite (scale 0.5 meteor02)))
(define meteor03-sprite
  (new-sprite (scale 0.5 meteor03)))
(define meteor04-sprite
  (new-sprite (scale 0.5 meteor04)))

(define (random-meteor-sprite)
  (first (shuffle (list meteor01-sprite meteor02-sprite
                        meteor03-sprite meteor04-sprite))))

;pilot
(define pilot-sprite
  (sheet->sprite (scale 0.2 pilot-sheet)
                 #:columns 2
                 #:delay 5))

;knight
(define knight-sprite
  (sheet->sprite (scale 0.2 chibiknight-sheet)
                 #:columns 7
                 #:delay 5))

;goblin
(define goblin-sprite
  (sheet->sprite (scale 0.2 chibigoblin-sheet)
                 #:columns 7
                 #:delay 5))

;ninja
(define ninja-sprite
  (sheet->sprite (scale 0.2 chibininja-sheet)
                 #:columns 7
                 #:delay 5))

;zombie
(define zombie-sprite
  (sheet->sprite (scale 0.7 zombie-sheet)
                 #:columns 2
                 #:delay 5))

;dragon
(define dragon-sprite
  (sheet->sprite (scale 0.1 dragon-sheet)
                 #:columns 4
                 #:delay 5))

;frog
(define frog-sprite
  (sheet->sprite (scale 0.5 frog-sheet)
                 #:columns 2
                 #:delay 5))

;bee
(define bee-sprite
  (sheet->sprite (scale 0.5 bee-sheet)
                 #:columns 2
                 #:delay 5))

;bird
(define fatbird-sprite
  (sheet->sprite (scale 0.1 fatbird-sheet)
                 #:columns 8
                 #:delay 5))

;animated coins

(define bronzecoin-sprite
  (sheet->sprite (scale 0.3 spinningcoinbronze-sheet)
                 #:columns 6
                 #:delay 5))

(define silvercoin-sprite
  (sheet->sprite (scale 0.3 spinningcoinsilver-sheet)
                 #:columns 6
                 #:delay 5))

(define goldcoin-sprite
  (sheet->sprite (scale 0.3 spinningcoingold-sheet)
                 #:columns 6
                 #:delay 5))

;misc special items

(define yellowgem-sprite
  (new-sprite (scale 0.5 gemyellow)))

(define wrench-sprite
  (new-sprite (scale 0.5 wrench)))

(define firstaid-sprite
  (new-sprite (scale 0.5 firstaid)))

(define yellowkey-sprite
  (new-sprite (scale 0.5 keyyellow)))

(define greenflag-sprite
  (sheet->sprite (scale 0.5 flaggreen-sheet)
                 #:columns 2
                 #:delay 5))



;fruit

(define apple-sprite
  (new-sprite apple))

(define banana-sprite
  (new-sprite bananaopen))

(define cherry-sprite
  (new-sprite cherry02))

(define grapes-sprite
  (new-sprite grapes))

(define lemon-sprite
  (new-sprite lemon))

(define orange-sprite
  (new-sprite orange))

(define pear-sprite
  (new-sprite pear))

(define plum-sprite
  (new-sprite plum))

(define (random-fruit-sprite)
  (first (shuffle (list apple-sprite
                        banana-sprite
                        cherry-sprite
                        grapes-sprite
                        lemon-sprite
                        orange-sprite
                        pear-sprite
                        plum-sprite))))


;veggies
(define radish-sprite
  (new-sprite radish))

;armor and weapons

(define helmet-sprite
  (new-sprite helmet))


;world objects

(define cloud1-sprite
  (new-sprite cloud01))

(define cloud2-sprite
  (new-sprite cloud02))

(define cloud3-sprite
  (new-sprite cloud03))

(define cloud4-sprite
  (new-sprite cloud04))

(define greencastle-sprite
  (new-sprite castlegreen))

(define redcastle-sprite
  (new-sprite castlered))

(define redtower-sprite
  (new-sprite (scale 0.5 tower02)))

(define greentower-sprite
  (new-sprite (scale 0.5 tower01)))

(define tree1-sprite
  (new-sprite tree01))

(define tree2-sprite
  (new-sprite tree02))

(define pinetree-sprite
  (new-sprite tree03))

(define moon-sprite
  (new-sprite moonfull))

(define mushroom-sprite
  (new-sprite (scale 0.5 mushroom01)))