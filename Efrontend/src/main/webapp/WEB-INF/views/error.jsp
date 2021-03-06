<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>

/*************************************************
                 BACKGROUND START
**************************************************/

body{
  background-color: #000;
  background-image: url('http://demo404.dieciseisbits.com/img/stars-background.gif');
  background-position: 0px 0px;
  background-repeat: repeat-x;
  animation: stars 50s linear infinite;
  overflow: hidden;
}

@keyframes stars {
	from { background-position: 0 0; }
	to { background-position: 100% 0; }
}

/*************************************************
                  BACKGROUND END
**************************************************/

/*************************************************
                   TEXT START
**************************************************/

.page{
  font-family: 'Luckiest Guy', cursive;
  color: #FFF;
  font-size:246px;
}

.not{
  font-family: 'Luckiest Guy', cursive;
  color: #FFF;
  font-size:114px;
  line-height: 0px;
}

.you-are{
  font-family: 'Quando', serif;
  font-size:39px;
  color:#FFFF00;
  line-height: 150px;
}

.go-back{
  font-family: 'Gloria Hallelujah', cursive;
  text-align: right;
  padding-right: 85px;
}

.go-back a{
  color: #FFF;
  font-size: 30px;
  transition:all 0.3s ease;
}

.go-back a:hover{
  text-decoration: none;
  color:#7109AA;
}

/*************************************************
                    TEXT END
**************************************************/

/*************************************************
                  ROCKET START
**************************************************/

#rocket-container{
  width: 200px;
  position: relative;
  -webkit-animation: route 5s infinite; /* Chrome, Safari, Opera */
  animation: route 20s infinite, acelerate 20s infinite ease-in-out;
  z-index: 999;
}

#rocket-container img{
  width:180px;
}

#rocket{
  margin-left: 28px;
  margin-top: -110px;
}

/* Chrome, Safari, Opera */
@-webkit-keyframes route {
  0%   {top: 200px;}
  25%  {top: 200px;}
  75%  {top: 400px;}
  85%  {transform: scale(1.5);}
  100% {top: 200px;}
}

/* Standard syntax */
@keyframes route {
  0%   {top: 200px;}
  25%  {top: 200px;}
  75%  {top: 400px;}
  85%  {transform: scale(1.5);}
  100% {top: 200px;}
}

/* Standard syntax */
@keyframes acelerate{
  0%   {left: 0px;}
  25%  {left: 400px;}
  75%  {left: 500px;}
  100% {left: 0px;}
}

/*************************************************
                    ROCKET END
**************************************************/

/*************************************************
                  PLANET START
**************************************************/

@-webkit-keyframes Floatingx{
  from {-webkit-transform:translate(0, 0px);}
  65% {-webkit-transform:translate(0, 15px);}
  to {-webkit-transform: translate(0, -0px);    }
}

@-moz-keyframes Floating{
  from {-moz-transform:translate(0, 0px);}
  65% {-moz-transform:translate(0, 15px);}
  to {-moz-transform: translate(0, -0px);}
}

.planet-container{
  padding-top:80px;
}

.planet{
  width: 150px;
  height: 150px;
  border-radius: 50%;
  background-color: #ff5f40;
  overflow: hidden;
  margin-left: -80px;
  -webkit-animation-name: Floatingx;
  -webkit-animation-duration: 5s;
  -webkit-animation-iteration-count: infinite;
  -webkit-animation-timing-function: ease-in-out;
  -moz-animation-name: Floating;
  -moz-animation-duration: 5s;
  -moz-animation-iteration-count: infinite;
  -moz-animation-timing-function: ease-in-out;
}

.not-shadow{
  position: relative;
  width: 125px;
  height: 125px;
  border-radius: 50%;
  background-color: #FF8B74;
}

.crater-1{
  left: 25px;
  top: 25px;
  position: relative;
  width: 20px;
  height: 25px;
  border-radius: 50%;
  background-color: #ff5f40;
  z-index: 1;
  transform: rotate(40deg);
}

.crater-1-shadow{
  left: 20px;
  position: relative;
  width: 25px;
  height: 24px;
  border-radius: 50%;
  background-color: #EB4C2C;
}

.crater-2{
  left: 32px;
  top: 12px;
  position: relative;
  width: 10px;
  height: 12px;
  border-radius: 50%;
  background-color: #ff5f40;
  z-index: 1;
  transform: rotate(40deg);
}

.crater-2-shadow{
  left: 30px;
  position: relative;
  width: 10px;
  height: 11px;
  border-radius: 50%;
  background-color: #EB4C2C;
}

.crater-3{
  left: 59px;
  top: -32px;
  position: relative;
  width: 16px;
  height: 13px;
  border-radius: 50%;
  background-color: #ff5f40;
  z-index: 1;
  transform: rotate(40deg);
}

.crater-3-shadow{
  left: 57px;
  top: -46px;
  position: relative;
  width: 15px;
  height: 14px;
  border-radius: 50%;
  background-color: #EB4C2C;
}

/*************************************************
                  PLANET END
**************************************************/

/*************************************************
                  FLAME START
**************************************************/

.flame-container{
  margin:80px auto;
  width: 60px;
  height: 60px;
  position:relative;
}

.flame-container-two{
  transform-origin:center bottom;
  animation-name: flicker;
  animation-duration:3ms;
  animation-delay:200ms;
  animation-timing-function: ease-in;
  animation-iteration-count: infinite;
  animation-direction: alternate;
}

.flame{
  bottom:0;
  position:absolute;
  border-bottom-right-radius: 50%;
  border-bottom-left-radius: 50%;
  border-top-left-radius: 50%;
  transform:rotate(-135deg) scale(1.5,1.5);
}

.yellow{
  left:15px;
  width: 30px;
  height: 30px;
  background:gold;
  box-shadow: 0px 0px 9px 4px gold;
}

.orange{
  left:10px;
  width: 40px;
  height: 40px;
  background:orange;
  box-shadow: 0px 0px 9px 4px orange;
}

.red{
  left:5px;
  width: 50px;
  height: 50px;
  background:OrangeRed;
  box-shadow: 0px 0px 5px 4px OrangeRed;
}

.white{
  left:15px;
  bottom:6px;
  width: 30px;
  height: 30px;
  background:white;
  box-shadow: 0px 0px 9px 4px white;
}

.circle{
  border-radius: 50%;
  position:absolute;

}

@keyframes flicker{
  0%   {transform: rotate(-1deg);}
  20%  {transform: rotate(1deg);}
  40%  {transform: rotate(-1deg);}
  60%  {transform: rotate(1deg) scaleY(1.04);}
  80%  {transform: rotate(-2deg) scaleY(0.92);}
  100% {transform: rotate(1deg);}
}

/*************************************************
                  FLAME END
**************************************************/

/*************************************************
             RESPONSIVE RULES START
**************************************************/
@media (max-width: 1200px) {

  .page{
    font-size: 60px;
    text-align: right;
  }

  .not{
    font-size: 40px;
    text-align: right;
  }

  .you-are{
    text-align: right;
    margin-top:15px;
    font-size: 30px;
    line-height: 40px;
  }

  .planet-container{
    padding-top: 10px;
  }

  .planet{
    margin: 0 auto;
  }

  .go-back{
    padding-right: 0px;
  }

  /* Chrome, Safari, Opera */
  @-webkit-keyframes route {
    0%   {top: 0px;}
    25%  {top: 20px;}
    75%  {top: 40px;}
    100% {top: 0px;}
  }

  /* Standard syntax */
  @keyframes route {
    0%   {top: 0px;}
    25%  {top: 20px;}
    75%  {top: 40px}
    100% {top: 0px;}
  }

  /* Standard syntax */
  @keyframes acelerate{
    0%   {left: 0%;}
    25%  {left: 50%;}
    75%  {left: 20%;}
    100% {left: 0%;}
  }

}

/*************************************************
             RESPONSIVE RULES END
**************************************************/

/*************************************************
                  ALIEN START
**************************************************/

#alien:before, .body:before, .arms:before, .arms:after, .legs:before, .legs:after {
  content: "";
  position: absolute;
}

@-webkit-keyframes walk {
  25% {
    -webkit-transform: translate3d(0, 2px, 0);
            transform: translate3d(0, 2px, 0);
  }
  75% {
    -webkit-transform: translate3d(0, -2px, 0);
            transform: translate3d(0, -2px, 0);
  }
}

@keyframes walk {
  25% {
    -webkit-transform: translate3d(0, 2px, 0);
            transform: translate3d(0, 2px, 0);
  }
  75% {
    -webkit-transform: translate3d(0, -2px, 0);
            transform: translate3d(0, -2px, 0);
  }
}
@-webkit-keyframes twinkle {
  90% {
    -webkit-transform: scale3d(1, 1, 1);
            transform: scale3d(1, 1, 1);
  }
  95% {
    -webkit-transform: scale3d(1, 0.1, 1);
            transform: scale3d(1, 0.1, 1);
  }
}
@keyframes twinkle {
  90% {
    -webkit-transform: scale3d(1, 1, 1);
            transform: scale3d(1, 1, 1);
  }
  95% {
    -webkit-transform: scale3d(1, 0.1, 1);
            transform: scale3d(1, 0.1, 1);
  }
}
@-webkit-keyframes walk-right-hand {
  25% {
    -webkit-transform: rotate(-10deg);
            transform: rotate(-10deg);
  }
  75% {
    -webkit-transform: rotate(10deg);
            transform: rotate(10deg);
  }
}
@keyframes walk-right-hand {
  25% {
    -webkit-transform: rotate(-10deg);
            transform: rotate(-10deg);
  }
  75% {
    -webkit-transform: rotate(10deg);
            transform: rotate(10deg);
  }
}
@-webkit-keyframes walk-left-hand {
  25% {
    -webkit-transform: rotate(10deg);
            transform: rotate(10deg);
  }
  75% {
    -webkit-transform: rotate(-10deg);
            transform: rotate(-10deg);
  }
}
@keyframes walk-left-hand {
  25% {
    -webkit-transform: rotate(10deg);
            transform: rotate(10deg);
  }
  75% {
    -webkit-transform: rotate(-10deg);
            transform: rotate(-10deg);
  }
}
@-webkit-keyframes walk-left-foot {
  25% {
    -webkit-transform: rotate(25deg);
            transform: rotate(25deg);
  }
  75% {
    -webkit-transform: rotate(-25deg);
            transform: rotate(-25deg);
  }
}
@keyframes walk-left-foot {
  25% {
    -webkit-transform: rotate(25deg);
            transform: rotate(25deg);
  }
  75% {
    -webkit-transform: rotate(-25deg);
            transform: rotate(-25deg);
  }
}
@-webkit-keyframes walk-right-foot {
  25% {
    -webkit-transform: rotate(-25deg);
            transform: rotate(-25deg);
  }
  75% {
    -webkit-transform: rotate(25deg);
            transform: rotate(25deg);
  }
}
@keyframes walk-right-foot {
  25% {
    -webkit-transform: rotate(-25deg);
            transform: rotate(-25deg);
  }
  75% {
    -webkit-transform: rotate(25deg);
            transform: rotate(25deg);
  }
}



#wrap {
  position: fixed;
  bottom: 0;
  left: 0;
  width: 100%;

  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
}

#alien {
  position: relative;
  width: 100px;
  height: 180px;
  -webkit-animation: walk 1s linear infinite;
          animation: walk 1s linear infinite;
}

.body {
  position: absolute;
  top: 49px;
  width: 100px;
  height: 80px;
  background: #92cbd9;
}
.body:before {
  top: -50px;
  width: 100px;
  height: 100px;
  background: #92cbd9;
  border-radius: 50%;
  clip: rect(0, 100px, 50px, 0);
}
.body:after {
  content: '';
  position: absolute;
  top: 54px;
  width: 100px;
  height: 50px;
  background: #92cbd9;
  border-radius: 50%;
  clip: rect(25px, 100px, 50px, 0);
}

.eyes {
  position: absolute;
  top: 0;
  width: 20px;
  height: 20px;
  background: #6294a0;
  border-radius: 50%;
  -webkit-animation: twinkle 5s infinite;
          animation: twinkle 5s infinite;
}
.eyes.left {
  left: 30px;
}
.eyes.right {
  left: 70px;
}

.mouse {
  position: absolute;
  top: 20px;
  left: 45px;
  width: 30px;
  height: 20px;
  border: 5px solid #6294a0;
  border-radius: 50%;
  box-sizing: border-box;
  clip: rect(10px, 30px, 20px, 0);
}

.arms {
  position: absolute;
  top: 80px;
  width: 80px;
}
.arms:before {
  top: 0;
  width: 80px;
  height: 200px;
  border: 10px solid #92cbd9;
  border-top-width: 20px;
  border-radius: 50%;
  box-sizing: border-box;
}
.arms:after {
  top: 33px;
  width: 12px;
  height: 12px;
  background: #92cbd9;
  border-radius: 50%;
  clip: rect(6px, 12px, 12px, 0);
}
.arms.left {
  left: -30px;
  -webkit-animation: walk-left-hand 1s linear infinite;
          animation: walk-left-hand 1s linear infinite;
}
.arms.left:before {
  clip: rect(0, 35px, 40px, 0);
}
.arms.left:after {
  left: 8px;
}
.arms.right {
  right: -30px;
  -webkit-animation: walk-right-hand 1s linear infinite;
          animation: walk-right-hand 1s linear infinite;
}
.arms.right:before {
  clip: rect(0, 80px, 40px, 45px);
}
.arms.right:after {
  right: 8px;
}

.legs {
  position: absolute;
  top: 140px;
  width: 20px;
}
.legs:before {
  width: 0;
  border: 10px solid transparent;
  border-top: 150px solid #92cbd9;
  clip: rect(0px, 20px, 30px, 0);
}
.legs:after {
  top: 20px;
  left: 2px;
  width: 16px;
  height: 16px;
  background: #92cbd9;
  border-radius: 50%;
  clip: rect(8px, 16px, 16px, 0);
}
.legs.left {
  left: 20%;
  -webkit-animation: walk-left-foot 1s linear infinite;
          animation: walk-left-foot 1s linear infinite;
}
.legs.right {
  right: 20%;
  -webkit-animation: walk-right-foot 1s linear infinite;
          animation: walk-right-foot 1s linear infinite;
}

.halo {
  position: absolute;
  background: rgba(255, 255, 255, 0.15);
  border-radius: 50%;
}
.halo:nth-child(1) {
  width: 30px;
  height: 30px;
  top: 10px;
  right: 10px;
}
.halo:nth-child(2) {
  width: 15px;
  height: 15px;
  bottom: 35px;
  right: 30px;
}
.halo:nth-child(3) {
  width: 13px;
  height: 13px;
  bottom: 50px;
  right: 5px;
}
.halo:nth-child(4) {
  width: 10px;
  height: 10px;
  bottom: 40px;
  right: 18px;
}

/*************************************************
                  ALIEN END
**************************************************/
</style>
</head>
<body>
<html>
  <body>
    <div class="container">
      <div class="row">
        <div class="col-md-3">
          <div id="rocket-container">
            <div class="flame-container">
              <div class="flame-container-two">
                <div class="red flame"></div>
                <div class="orange flame"></div>
                <div class="yellow flame"></div>
                <div class="white flame"></div>
              </div>
              <img id="rocket" src="http://demo404.dieciseisbits.com/img/rocket.png">
            </div>
          </div>
        </div>
        <div class="col-md-7">
          <div class="page">Page</div>
          <div class="not">Not Found</div>
          <div class="you-are">Oops! You are lost in Space</div>
          <div class="go-back"><a href="#">go back?</a></div>
        </div>
        <div class="col-md-2 planet-container">
          <div class="planet">
            <div class="not-shadow">
              <div class="crater-1"></div>
              <div class="crater-1-shadow"></div>
              <div class="crater-2"></div>
              <div class="crater-2-shadow"></div>
              <div class="crater-3"></div>
              <div class="crater-3-shadow"></div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>

</body>
</html>