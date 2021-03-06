<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
.bv-form .help-block{margin-bottom:0}.nav-tabs li.bv-tab-success>a{color:#3c763d}.nav-tabs li.bv-tab-error>a{color:#a94442}

/* ladda.min.css */

/*
 * Ladda
 * http://lab.hakim.se/ladda
 * MIT licensed
 *
 * Copyright (C) 2013 Hakim El Hattab, http://hakim.se
 */.ladda-button{position:relative}.ladda-button .ladda-spinner{position:absolute;z-index:2;display:inline-block;width:32px;height:32px;top:50%;margin-top:-16px;opacity:0;pointer-events:none}.ladda-button .ladda-label{position:relative;z-index:3}.ladda-button .ladda-progress{position:absolute;width:0;height:100%;left:0;top:0;background:rgba(0,0,0,0.2);visibility:hidden;opacity:0;-webkit-transition:0.1s linear all !important;-moz-transition:0.1s linear all !important;-ms-transition:0.1s linear all !important;-o-transition:0.1s linear all !important;transition:0.1s linear all !important}.ladda-button[data-loading] .ladda-progress{opacity:1;visibility:visible}.ladda-button,.ladda-button .ladda-spinner,.ladda-button .ladda-label{-webkit-transition:0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275) all !important;-moz-transition:0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275) all !important;-ms-transition:0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275) all !important;-o-transition:0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275) all !important;transition:0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275) all !important}.ladda-button[data-style=zoom-in],.ladda-button[data-style=zoom-in] .ladda-spinner,.ladda-button[data-style=zoom-in] .ladda-label,.ladda-button[data-style=zoom-out],.ladda-button[data-style=zoom-out] .ladda-spinner,.ladda-button[data-style=zoom-out] .ladda-label{-webkit-transition:0.3s ease all !important;-moz-transition:0.3s ease all !important;-ms-transition:0.3s ease all !important;-o-transition:0.3s ease all !important;transition:0.3s ease all !important}.ladda-button[data-style=expand-right] .ladda-spinner{right:14px}.ladda-button[data-style=expand-right][data-size="s"] .ladda-spinner,.ladda-button[data-style=expand-right][data-size="xs"] .ladda-spinner{right:4px}.ladda-button[data-style=expand-right][data-loading]{padding-right:56px}.ladda-button[data-style=expand-right][data-loading] .ladda-spinner{opacity:1}.ladda-button[data-style=expand-right][data-loading][data-size="s"],.ladda-button[data-style=expand-right][data-loading][data-size="xs"]{padding-right:40px}.ladda-button[data-style=expand-left] .ladda-spinner{left:14px}.ladda-button[data-style=expand-left][data-size="s"] .ladda-spinner,.ladda-button[data-style=expand-left][data-size="xs"] .ladda-spinner{left:4px}.ladda-button[data-style=expand-left][data-loading]{padding-left:56px}.ladda-button[data-style=expand-left][data-loading] .ladda-spinner{opacity:1}.ladda-button[data-style=expand-left][data-loading][data-size="s"],.ladda-button[data-style=expand-left][data-loading][data-size="xs"]{padding-left:40px}.ladda-button[data-style=expand-up]{overflow:hidden}.ladda-button[data-style=expand-up] .ladda-spinner{top:-32px;left:50%;margin-left:-16px}.ladda-button[data-style=expand-up][data-loading]{padding-top:54px}.ladda-button[data-style=expand-up][data-loading] .ladda-spinner{opacity:1;top:14px;margin-top:0}.ladda-button[data-style=expand-up][data-loading][data-size="s"],.ladda-button[data-style=expand-up][data-loading][data-size="xs"]{padding-top:32px}.ladda-button[data-style=expand-up][data-loading][data-size="s"] .ladda-spinner,.ladda-button[data-style=expand-up][data-loading][data-size="xs"] .ladda-spinner{top:4px}.ladda-button[data-style=expand-down]{overflow:hidden}.ladda-button[data-style=expand-down] .ladda-spinner{top:62px;left:50%;margin-left:-16px}.ladda-button[data-style=expand-down][data-size="s"] .ladda-spinner,.ladda-button[data-style=expand-down][data-size="xs"] .ladda-spinner{top:40px}.ladda-button[data-style=expand-down][data-loading]{padding-bottom:54px}.ladda-button[data-style=expand-down][data-loading] .ladda-spinner{opacity:1}.ladda-button[data-style=expand-down][data-loading][data-size="s"],.ladda-button[data-style=expand-down][data-loading][data-size="xs"]{padding-bottom:32px}.ladda-button[data-style=slide-left]{overflow:hidden}.ladda-button[data-style=slide-left] .ladda-label{position:relative}.ladda-button[data-style=slide-left] .ladda-spinner{left:100%;margin-left:-16px}.ladda-button[data-style=slide-left][data-loading] .ladda-label{opacity:0;left:-100%}.ladda-button[data-style=slide-left][data-loading] .ladda-spinner{opacity:1;left:50%}.ladda-button[data-style=slide-right]{overflow:hidden}.ladda-button[data-style=slide-right] .ladda-label{position:relative}.ladda-button[data-style=slide-right] .ladda-spinner{right:100%;margin-left:-16px}.ladda-button[data-style=slide-right][data-loading] .ladda-label{opacity:0;left:100%}.ladda-button[data-style=slide-right][data-loading] .ladda-spinner{opacity:1;left:50%}.ladda-button[data-style=slide-up]{overflow:hidden}.ladda-button[data-style=slide-up] .ladda-label{position:relative}.ladda-button[data-style=slide-up] .ladda-spinner{left:50%;margin-left:-16px;margin-top:1em}.ladda-button[data-style=slide-up][data-loading] .ladda-label{opacity:0;top:-1em}.ladda-button[data-style=slide-up][data-loading] .ladda-spinner{opacity:1;margin-top:-16px}.ladda-button[data-style=slide-down]{overflow:hidden}.ladda-button[data-style=slide-down] .ladda-label{position:relative}.ladda-button[data-style=slide-down] .ladda-spinner{left:50%;margin-left:-16px;margin-top:-2em}.ladda-button[data-style=slide-down][data-loading] .ladda-label{opacity:0;top:1em}.ladda-button[data-style=slide-down][data-loading] .ladda-spinner{opacity:1;margin-top:-16px}.ladda-button[data-style=zoom-out]{overflow:hidden}.ladda-button[data-style=zoom-out] .ladda-spinner{left:50%;margin-left:-16px;-webkit-transform:scale(2.5);-moz-transform:scale(2.5);-ms-transform:scale(2.5);-o-transform:scale(2.5);transform:scale(2.5)}.ladda-button[data-style=zoom-out] .ladda-label{position:relative;display:inline-block}.ladda-button[data-style=zoom-out][data-loading] .ladda-label{opacity:0;-webkit-transform:scale(0.5);-moz-transform:scale(0.5);-ms-transform:scale(0.5);-o-transform:scale(0.5);transform:scale(0.5)}.ladda-button[data-style=zoom-out][data-loading] .ladda-spinner{opacity:1;-webkit-transform:none;-moz-transform:none;-ms-transform:none;-o-transform:none;transform:none}.ladda-button[data-style=zoom-in]{overflow:hidden}.ladda-button[data-style=zoom-in] .ladda-spinner{left:50%;margin-left:-16px;-webkit-transform:scale(0.2);-moz-transform:scale(0.2);-ms-transform:scale(0.2);-o-transform:scale(0.2);transform:scale(0.2)}.ladda-button[data-style=zoom-in] .ladda-label{position:relative;display:inline-block}.ladda-button[data-style=zoom-in][data-loading] .ladda-label{opacity:0;-webkit-transform:scale(2.2);-moz-transform:scale(2.2);-ms-transform:scale(2.2);-o-transform:scale(2.2);transform:scale(2.2)}.ladda-button[data-style=zoom-in][data-loading] .ladda-spinner{opacity:1;-webkit-transform:none;-moz-transform:none;-ms-transform:none;-o-transform:none;transform:none}.ladda-button[data-style=contract]{overflow:hidden;width:100px}.ladda-button[data-style=contract] .ladda-spinner{left:50%;margin-left:-16px}.ladda-button[data-style=contract][data-loading]{border-radius:50%;width:52px}.ladda-button[data-style=contract][data-loading] .ladda-label{opacity:0}.ladda-button[data-style=contract][data-loading] .ladda-spinner{opacity:1}.ladda-button[data-style=contract-overlay]{overflow:hidden;width:100px;box-shadow:0px 0px 0px 3000px rgba(0,0,0,0)}.ladda-button[data-style=contract-overlay] .ladda-spinner{left:50%;margin-left:-16px}.ladda-button[data-style=contract-overlay][data-loading]{border-radius:50%;width:52px;box-shadow:0px 0px 0px 3000px rgba(0,0,0,0.8)}.ladda-button[data-style=contract-overlay][data-loading] .ladda-label{opacity:0}.ladda-button[data-style=contract-overlay][data-loading] .ladda-spinner{opacity:1}


body {
    padding-top: 70px;
    padding-bottom: 20px;
}
#footer-terms {
    position: fixed;
    margin: 0 auto;
    bottom: 5px;
    display:block;
}
@charset"UTF-8";

/*!
Animate.css - http://daneden.me/animate
Licensed under the MIT license

Copyright (c) 2013 Daniel Eden

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

/* Custom Background */
 .bg {
    background-image: url(http://www.ecampusnews.com/wp-content/blogs.dir/3/files/2011/03/students633.jpg);
    background-size: 100% 100%;
    content:"";
    top: 0;
    left: 0;
    bottom: 0;
    right: 0;
    position: absolute;
    z-index: -1;
    -webkit-filter: blur(3px);
    -moz-filter: blur(3px);
    -o-filter: blur(3px);
    -ms-filter: blur(3px);
    filter: blur(3px);
}
/* Default Aniamtions */
 .animated {
    -webkit-animation-duration: 1s;
    animation-duration: 1s;
    -webkit-animation-fill-mode: both;
    animation-fill-mode: both;
}
.animated.hinge {
    -webkit-animation-duration: 2s;
    animation-duration: 2s;
}
/* Custom Delay Animations */
 .animated-sm {
    -webkit-animation-delay: .25s;
    animation-delay: .25s;
    -webkit-animation-fill-mode: both;
    animation-fill-mode: both;
}
.animated-md {
    -webkit-animation-delay: .5s;
    animation-delay: .5s;
    -webkit-animation-fill-mode: both;
    animation-fill-mode: both;
}
.animated-lg {
    -webkit-animation-delay: .75s;
    animation-delay: .75s;
    -webkit-animation-fill-mode: both;
    animation-fill-mode: both;
}
.animated-xl {
    -webkit-animation-delay: 1s;
    animation-delay: 1s;
    -webkit-animation-fill-mode: both;
    animation-fill-mode: both;
}
.animated-xxl {
    -webkit-animation-delay: 1.25s;
    animation-delay: 1.25s;
    -webkit-animation-fill-mode: both;
    animation-fill-mode: both;
}
.animated-xxxl {
    -webkit-animation-delay: 1.60s;
    animation-delay: 1.60s;
    -webkit-animation-fill-mode: both;
    animation-fill-mode: both;
}
.animated-xxxxl {
    -webkit-animation-delay: 1.75s;
    animation-delay: 1.75s;
    -webkit-animation-fill-mode: both;
    animation-fill-mode: both;
}
/* Custom Duration Animations */
 .animated-long {
    -webkit-animation-duration: 1.5s;
    animation-duration: 1.5s;
    -webkit-animation-fill-mode: both;
    animation-fill-mode: both;
}
.animated-longer {
    -webkit-animation-duration: 2s;
    animation-duration: 2s;
    -webkit-animation-fill-mode: both;
    animation-fill-mode: both;
}
.animated-longest {
    -webkit-animation-duration: 2.5s;
    animation-duration: 2.5s;
    -webkit-animation-fill-mode: both;
    animation-fill-mode: both;
}
@keyframes bounce {
    0%, 20%, 50%, 80%, 100% {
        -webkit-transform: translateY(0);
        -ms-transform: translateY(0);
        transform: translateY(0);
    }
    40% {
        -webkit-transform: translateY(-30px);
        -ms-transform: translateY(-30px);
        transform: translateY(-30px);
    }
    60% {
        -webkit-transform: translateY(-15px);
        -ms-transform: translateY(-15px);
        transform: translateY(-15px);
    }
}
.bounce {
    -webkit-animation-name: bounce;
    animation-name: bounce;
}
@-webkit-keyframes flash {
    0%, 50%, 100% {
        opacity: 1;
    }
    25%, 75% {
        opacity: 0;
    }
}
@keyframes flash {
    0%, 50%, 100% {
        opacity: 1;
    }
    25%, 75% {
        opacity: 0;
    }
}
.flash {
    -webkit-animation-name: flash;
    animation-name: flash;
}
/* originally authored by Nick Pettit - https://github.com/nickpettit/glide */
 @-webkit-keyframes pulse {
    0% {
        -webkit-transform: scale(1);
        transform: scale(1);
    }
    50% {
        -webkit-transform: scale(1.1);
        transform: scale(1.1);
    }
    100% {
        -webkit-transform: scale(1);
        transform: scale(1);
    }
}
@keyframes pulse {
    0% {
        -webkit-transform: scale(1);
        -ms-transform: scale(1);
        transform: scale(1);
    }
    50% {
        -webkit-transform: scale(1.1);
        -ms-transform: scale(1.1);
        transform: scale(1.1);
    }
    100% {
        -webkit-transform: scale(1);
        -ms-transform: scale(1);
        transform: scale(1);
    }
}
.pulse {
    -webkit-animation-name: pulse;
    animation-name: pulse;
}
@-webkit-keyframes shake {
    0%, 100% {
        -webkit-transform: translateX(0);
        transform: translateX(0);
    }
    10%, 30%, 50%, 70%, 90% {
        -webkit-transform: translateX(-10px);
        transform: translateX(-10px);
    }
    20%, 40%, 60%, 80% {
        -webkit-transform: translateX(10px);
        transform: translateX(10px);
    }
}
@keyframes shake {
    0%, 100% {
        -webkit-transform: translateX(0);
        -ms-transform: translateX(0);
        transform: translateX(0);
    }
    10%, 30%, 50%, 70%, 90% {
        -webkit-transform: translateX(-10px);
        -ms-transform: translateX(-10px);
        transform: translateX(-10px);
    }
    20%, 40%, 60%, 80% {
        -webkit-transform: translateX(10px);
        -ms-transform: translateX(10px);
        transform: translateX(10px);
    }
}
.shake {
    -webkit-animation-name: shake;
    animation-name: shake;
}
@-webkit-keyframes swing {
    20% {
        -webkit-transform: rotate(15deg);
        transform: rotate(15deg);
    }
    40% {
        -webkit-transform: rotate(-10deg);
        transform: rotate(-10deg);
    }
    60% {
        -webkit-transform: rotate(5deg);
        transform: rotate(5deg);
    }
    80% {
        -webkit-transform: rotate(-5deg);
        transform: rotate(-5deg);
    }
    100% {
        -webkit-transform: rotate(0deg);
        transform: rotate(0deg);
    }
}
@keyframes swing {
    20% {
        -webkit-transform: rotate(15deg);
        -ms-transform: rotate(15deg);
        transform: rotate(15deg);
    }
    40% {
        -webkit-transform: rotate(-10deg);
        -ms-transform: rotate(-10deg);
        transform: rotate(-10deg);
    }
    60% {
        -webkit-transform: rotate(5deg);
        -ms-transform: rotate(5deg);
        transform: rotate(5deg);
    }
    80% {
        -webkit-transform: rotate(-5deg);
        -ms-transform: rotate(-5deg);
        transform: rotate(-5deg);
    }
    100% {
        -webkit-transform: rotate(0deg);
        -ms-transform: rotate(0deg);
        transform: rotate(0deg);
    }
}
.swing {
    -webkit-transform-origin: top center;
    -ms-transform-origin: top center;
    transform-origin: top center;
    -webkit-animation-name: swing;
    animation-name: swing;
}
@-webkit-keyframes tada {
    0% {
        -webkit-transform: scale(1);
        transform: scale(1);
    }
    10%, 20% {
        -webkit-transform: scale(0.9) rotate(-3deg);
        transform: scale(0.9) rotate(-3deg);
    }
    30%, 50%, 70%, 90% {
        -webkit-transform: scale(1.1) rotate(3deg);
        transform: scale(1.1) rotate(3deg);
    }
    40%, 60%, 80% {
        -webkit-transform: scale(1.1) rotate(-3deg);
        transform: scale(1.1) rotate(-3deg);
    }
    100% {
        -webkit-transform: scale(1) rotate(0);
        transform: scale(1) rotate(0);
    }
}
@keyframes tada {
    0% {
        -webkit-transform: scale(1);
        -ms-transform: scale(1);
        transform: scale(1);
    }
    10%, 20% {
        -webkit-transform: scale(0.9) rotate(-3deg);
        -ms-transform: scale(0.9) rotate(-3deg);
        transform: scale(0.9) rotate(-3deg);
    }
    30%, 50%, 70%, 90% {
        -webkit-transform: scale(1.1) rotate(3deg);
        -ms-transform: scale(1.1) rotate(3deg);
        transform: scale(1.1) rotate(3deg);
    }
    40%, 60%, 80% {
        -webkit-transform: scale(1.1) rotate(-3deg);
        -ms-transform: scale(1.1) rotate(-3deg);
        transform: scale(1.1) rotate(-3deg);
    }
    100% {
        -webkit-transform: scale(1) rotate(0);
        -ms-transform: scale(1) rotate(0);
        transform: scale(1) rotate(0);
    }
}
.tada {
    -webkit-animation-name: tada;
    animation-name: tada;
}
/* originally authored by Nick Pettit - https://github.com/nickpettit/glide */
 @-webkit-keyframes wobble {
    0% {
        -webkit-transform: translateX(0%);
        transform: translateX(0%);
    }
    15% {
        -webkit-transform: translateX(-25%) rotate(-5deg);
        transform: translateX(-25%) rotate(-5deg);
    }
    30% {
        -webkit-transform: translateX(20%) rotate(3deg);
        transform: translateX(20%) rotate(3deg);
    }
    45% {
        -webkit-transform: translateX(-15%) rotate(-3deg);
        transform: translateX(-15%) rotate(-3deg);
    }
    60% {
        -webkit-transform: translateX(10%) rotate(2deg);
        transform: translateX(10%) rotate(2deg);
    }
    75% {
        -webkit-transform: translateX(-5%) rotate(-1deg);
        transform: translateX(-5%) rotate(-1deg);
    }
    100% {
        -webkit-transform: translateX(0%);
        transform: translateX(0%);
    }
}
@keyframes wobble {
    0% {
        -webkit-transform: translateX(0%);
        -ms-transform: translateX(0%);
        transform: translateX(0%);
    }
    15% {
        -webkit-transform: translateX(-25%) rotate(-5deg);
        -ms-transform: translateX(-25%) rotate(-5deg);
        transform: translateX(-25%) rotate(-5deg);
    }
    30% {
        -webkit-transform: translateX(20%) rotate(3deg);
        -ms-transform: translateX(20%) rotate(3deg);
        transform: translateX(20%) rotate(3deg);
    }
    45% {
        -webkit-transform: translateX(-15%) rotate(-3deg);
        -ms-transform: translateX(-15%) rotate(-3deg);
        transform: translateX(-15%) rotate(-3deg);
    }
    60% {
        -webkit-transform: translateX(10%) rotate(2deg);
        -ms-transform: translateX(10%) rotate(2deg);
        transform: translateX(10%) rotate(2deg);
    }
    75% {
        -webkit-transform: translateX(-5%) rotate(-1deg);
        -ms-transform: translateX(-5%) rotate(-1deg);
        transform: translateX(-5%) rotate(-1deg);
    }
    100% {
        -webkit-transform: translateX(0%);
        -ms-transform: translateX(0%);
        transform: translateX(0%);
    }
}
.wobble {
    -webkit-animation-name: wobble;
    animation-name: wobble;
}
@-webkit-keyframes bounceIn {
    0% {
        opacity: 0;
        -webkit-transform: scale(.3);
        transform: scale(.3);
    }
    50% {
        opacity: 1;
        -webkit-transform: scale(1.05);
        transform: scale(1.05);
    }
    70% {
        -webkit-transform: scale(.9);
        transform: scale(.9);
    }
    100% {
        -webkit-transform: scale(1);
        transform: scale(1);
    }
}
@keyframes bounceIn {
    0% {
        opacity: 0;
        -webkit-transform: scale(.3);
        -ms-transform: scale(.3);
        transform: scale(.3);
    }
    50% {
        opacity: 1;
        -webkit-transform: scale(1.05);
        -ms-transform: scale(1.05);
        transform: scale(1.05);
    }
    70% {
        -webkit-transform: scale(.9);
        -ms-transform: scale(.9);
        transform: scale(.9);
    }
    100% {
        -webkit-transform: scale(1);
        -ms-transform: scale(1);
        transform: scale(1);
    }
}
.bounceIn {
    -webkit-animation-name: bounceIn;
    animation-name: bounceIn;
}
@-webkit-keyframes bounceInDown {
    0% {
        opacity: 0;
        -webkit-transform: translateY(-2000px);
        transform: translateY(-2000px);
    }
    60% {
        opacity: 1;
        -webkit-transform: translateY(30px);
        transform: translateY(30px);
    }
    80% {
        -webkit-transform: translateY(-10px);
        transform: translateY(-10px);
    }
    100% {
        -webkit-transform: translateY(0);
        transform: translateY(0);
    }
}
@keyframes bounceInDown {
    0% {
        opacity: 0;
        -webkit-transform: translateY(-2000px);
        -ms-transform: translateY(-2000px);
        transform: translateY(-2000px);
    }
    60% {
        opacity: 1;
        -webkit-transform: translateY(30px);
        -ms-transform: translateY(30px);
        transform: translateY(30px);
    }
    80% {
        -webkit-transform: translateY(-10px);
        -ms-transform: translateY(-10px);
        transform: translateY(-10px);
    }
    100% {
        -webkit-transform: translateY(0);
        -ms-transform: translateY(0);
        transform: translateY(0);
    }
}
.bounceInDown {
    -webkit-animation-name: bounceInDown;
    animation-name: bounceInDown;
}
@-webkit-keyframes bounceInLeft {
    0% {
        opacity: 0;
        -webkit-transform: translateX(-2000px);
        transform: translateX(-2000px);
    }
    60% {
        opacity: 1;
        -webkit-transform: translateX(30px);
        transform: translateX(30px);
    }
    80% {
        -webkit-transform: translateX(-10px);
        transform: translateX(-10px);
    }
    100% {
        -webkit-transform: translateX(0);
        transform: translateX(0);
    }
}
@keyframes bounceInLeft {
    0% {
        opacity: 0;
        -webkit-transform: translateX(-2000px);
        -ms-transform: translateX(-2000px);
        transform: translateX(-2000px);
    }
    60% {
        opacity: 1;
        -webkit-transform: translateX(30px);
        -ms-transform: translateX(30px);
        transform: translateX(30px);
    }
    80% {
        -webkit-transform: translateX(-10px);
        -ms-transform: translateX(-10px);
        transform: translateX(-10px);
    }
    100% {
        -webkit-transform: translateX(0);
        -ms-transform: translateX(0);
        transform: translateX(0);
    }
}
.bounceInLeft {
    -webkit-animation-name: bounceInLeft;
    animation-name: bounceInLeft;
}
@-webkit-keyframes bounceInRight {
    0% {
        opacity: 0;
        -webkit-transform: translateX(2000px);
        transform: translateX(2000px);
    }
    60% {
        opacity: 1;
        -webkit-transform: translateX(-30px);
        transform: translateX(-30px);
    }
    80% {
        -webkit-transform: translateX(10px);
        transform: translateX(10px);
    }
    100% {
        -webkit-transform: translateX(0);
        transform: translateX(0);
    }
}
@keyframes bounceInRight {
    0% {
        opacity: 0;
        -webkit-transform: translateX(2000px);
        -ms-transform: translateX(2000px);
        transform: translateX(2000px);
    }
    60% {
        opacity: 1;
        -webkit-transform: translateX(-30px);
        -ms-transform: translateX(-30px);
        transform: translateX(-30px);
    }
    80% {
        -webkit-transform: translateX(10px);
        -ms-transform: translateX(10px);
        transform: translateX(10px);
    }
    100% {
        -webkit-transform: translateX(0);
        -ms-transform: translateX(0);
        transform: translateX(0);
    }
}
.bounceInRight {
    -webkit-animation-name: bounceInRight;
    animation-name: bounceInRight;
}
@-webkit-keyframes bounceInUp {
    0% {
        opacity: 0;
        -webkit-transform: translateY(2000px);
        transform: translateY(2000px);
    }
    60% {
        opacity: 1;
        -webkit-transform: translateY(-30px);
        transform: translateY(-30px);
    }
    80% {
        -webkit-transform: translateY(10px);
        transform: translateY(10px);
    }
    100% {
        -webkit-transform: translateY(0);
        transform: translateY(0);
    }
}
@keyframes bounceInUp {
    0% {
        opacity: 0;
        -webkit-transform: translateY(2000px);
        -ms-transform: translateY(2000px);
        transform: translateY(2000px);
    }
    60% {
        opacity: 1;
        -webkit-transform: translateY(-30px);
        -ms-transform: translateY(-30px);
        transform: translateY(-30px);
    }
    80% {
        -webkit-transform: translateY(10px);
        -ms-transform: translateY(10px);
        transform: translateY(10px);
    }
    100% {
        -webkit-transform: translateY(0);
        -ms-transform: translateY(0);
        transform: translateY(0);
    }
}
.bounceInUp {
    -webkit-animation-name: bounceInUp;
    animation-name: bounceInUp;
}
@-webkit-keyframes bounceOut {
    0% {
        -webkit-transform: scale(1);
        transform: scale(1);
    }
    25% {
        -webkit-transform: scale(.95);
        transform: scale(.95);
    }
    50% {
        opacity: 1;
        -webkit-transform: scale(1.1);
        transform: scale(1.1);
    }
    100% {
        opacity: 0;
        -webkit-transform: scale(.3);
        transform: scale(.3);
    }
}
@keyframes bounceOut {
    0% {
        -webkit-transform: scale(1);
        -ms-transform: scale(1);
        transform: scale(1);
    }
    25% {
        -webkit-transform: scale(.95);
        -ms-transform: scale(.95);
        transform: scale(.95);
    }
    50% {
        opacity: 1;
        -webkit-transform: scale(1.1);
        -ms-transform: scale(1.1);
        transform: scale(1.1);
    }
    100% {
        opacity: 0;
        -webkit-transform: scale(.3);
        -ms-transform: scale(.3);
        transform: scale(.3);
    }
}
.bounceOut {
    -webkit-animation-name: bounceOut;
    animation-name: bounceOut;
}
@-webkit-keyframes bounceOutDown {
    0% {
        -webkit-transform: translateY(0);
        transform: translateY(0);
    }
    20% {
        opacity: 1;
        -webkit-transform: translateY(-20px);
        transform: translateY(-20px);
    }
    100% {
        opacity: 0;
        -webkit-transform: translateY(2000px);
        transform: translateY(2000px);
    }
}
@keyframes bounceOutDown {
    0% {
        -webkit-transform: translateY(0);
        -ms-transform: translateY(0);
        transform: translateY(0);
    }
    20% {
        opacity: 1;
        -webkit-transform: translateY(-20px);
        -ms-transform: translateY(-20px);
        transform: translateY(-20px);
    }
    100% {
        opacity: 0;
        -webkit-transform: translateY(2000px);
        -ms-transform: translateY(2000px);
        transform: translateY(2000px);
    }
}
.bounceOutDown {
    -webkit-animation-name: bounceOutDown;
    animation-name: bounceOutDown;
}
@-webkit-keyframes bounceOutLeft {
    0% {
        -webkit-transform: translateX(0);
        transform: translateX(0);
    }
    20% {
        opacity: 1;
        -webkit-transform: translateX(20px);
        transform: translateX(20px);
    }
    100% {
        opacity: 0;
        -webkit-transform: translateX(-2000px);
        transform: translateX(-2000px);
    }
}
@keyframes bounceOutLeft {
    0% {
        -webkit-transform: translateX(0);
        -ms-transform: translateX(0);
        transform: translateX(0);
    }
    20% {
        opacity: 1;
        -webkit-transform: translateX(20px);
        -ms-transform: translateX(20px);
        transform: translateX(20px);
    }
    100% {
        opacity: 0;
        -webkit-transform: translateX(-2000px);
        -ms-transform: translateX(-2000px);
        transform: translateX(-2000px);
    }
}
.bounceOutLeft {
    -webkit-animation-name: bounceOutLeft;
    animation-name: bounceOutLeft;
}
@-webkit-keyframes bounceOutRight {
    0% {
        -webkit-transform: translateX(0);
        transform: translateX(0);
    }
    20% {
        opacity: 1;
        -webkit-transform: translateX(-20px);
        transform: translateX(-20px);
    }
    100% {
        opacity: 0;
        -webkit-transform: translateX(2000px);
        transform: translateX(2000px);
    }
}
@keyframes bounceOutRight {
    0% {
        -webkit-transform: translateX(0);
        -ms-transform: translateX(0);
        transform: translateX(0);
    }
    20% {
        opacity: 1;
        -webkit-transform: translateX(-20px);
        -ms-transform: translateX(-20px);
        transform: translateX(-20px);
    }
    100% {
        opacity: 0;
        -webkit-transform: translateX(2000px);
        -ms-transform: translateX(2000px);
        transform: translateX(2000px);
    }
}
.bounceOutRight {
    -webkit-animation-name: bounceOutRight;
    animation-name: bounceOutRight;
}
@-webkit-keyframes bounceOutUp {
    0% {
        -webkit-transform: translateY(0);
        transform: translateY(0);
    }
    20% {
        opacity: 1;
        -webkit-transform: translateY(20px);
        transform: translateY(20px);
    }
    100% {
        opacity: 0;
        -webkit-transform: translateY(-2000px);
        transform: translateY(-2000px);
    }
}
@keyframes bounceOutUp {
    0% {
        -webkit-transform: translateY(0);
        -ms-transform: translateY(0);
        transform: translateY(0);
    }
    20% {
        opacity: 1;
        -webkit-transform: translateY(20px);
        -ms-transform: translateY(20px);
        transform: translateY(20px);
    }
    100% {
        opacity: 0;
        -webkit-transform: translateY(-2000px);
        -ms-transform: translateY(-2000px);
        transform: translateY(-2000px);
    }
}
.bounceOutUp {
    -webkit-animation-name: bounceOutUp;
    animation-name: bounceOutUp;
}
@-webkit-keyframes fadeIn {
    0% {
        opacity: 0;
    }
    100% {
        opacity: 1;
    }
}
@keyframes fadeIn {
    0% {
        opacity: 0;
    }
    100% {
        opacity: 1;
    }
}
.fadeIn {
    -webkit-animation-name: fadeIn;
    animation-name: fadeIn;
}
@-webkit-keyframes fadeInDown {
    0% {
        opacity: 0;
        -webkit-transform: translateY(-20px);
        transform: translateY(-20px);
    }
    100% {
        opacity: 1;
        -webkit-transform: translateY(0);
        transform: translateY(0);
    }
}
@keyframes fadeInDown {
    0% {
        opacity: 0;
        -webkit-transform: translateY(-20px);
        -ms-transform: translateY(-20px);
        transform: translateY(-20px);
    }
    100% {
        opacity: 1;
        -webkit-transform: translateY(0);
        -ms-transform: translateY(0);
        transform: translateY(0);
    }
}
.fadeInDown {
    -webkit-animation-name: fadeInDown;
    animation-name: fadeInDown;
}
@-webkit-keyframes fadeInDownBig {
    0% {
        opacity: 0;
        -webkit-transform: translateY(-2000px);
        transform: translateY(-2000px);
    }
    100% {
        opacity: 1;
        -webkit-transform: translateY(0);
        transform: translateY(0);
    }
}
@keyframes fadeInDownBig {
    0% {
        opacity: 0;
        -webkit-transform: translateY(-2000px);
        -ms-transform: translateY(-2000px);
        transform: translateY(-2000px);
    }
    100% {
        opacity: 1;
        -webkit-transform: translateY(0);
        -ms-transform: translateY(0);
        transform: translateY(0);
    }
}
.fadeInDownBig {
    -webkit-animation-name: fadeInDownBig;
    animation-name: fadeInDownBig;
}
@-webkit-keyframes fadeInLeft {
    0% {
        opacity: 0;
        -webkit-transform: translateX(-20px);
        transform: translateX(-20px);
    }
    100% {
        opacity: 1;
        -webkit-transform: translateX(0);
        transform: translateX(0);
    }
}
@keyframes fadeInLeft {
    0% {
        opacity: 0;
        -webkit-transform: translateX(-20px);
        -ms-transform: translateX(-20px);
        transform: translateX(-20px);
    }
    100% {
        opacity: 1;
        -webkit-transform: translateX(0);
        -ms-transform: translateX(0);
        transform: translateX(0);
    }
}
.fadeInLeft {
    -webkit-animation-name: fadeInLeft;
    animation-name: fadeInLeft;
}
@-webkit-keyframes fadeInLeftBig {
    0% {
        opacity: 0;
        -webkit-transform: translateX(-2000px);
        transform: translateX(-2000px);
    }
    100% {
        opacity: 1;
        -webkit-transform: translateX(0);
        transform: translateX(0);
    }
}
@keyframes fadeInLeftBig {
    0% {
        opacity: 0;
        -webkit-transform: translateX(-2000px);
        -ms-transform: translateX(-2000px);
        transform: translateX(-2000px);
    }
    100% {
        opacity: 1;
        -webkit-transform: translateX(0);
        -ms-transform: translateX(0);
        transform: translateX(0);
    }
}
.fadeInLeftBig {
    -webkit-animation-name: fadeInLeftBig;
    animation-name: fadeInLeftBig;
}
@-webkit-keyframes fadeInRight {
    0% {
        opacity: 0;
        -webkit-transform: translateX(20px);
        transform: translateX(20px);
    }
    100% {
        opacity: 1;
        -webkit-transform: translateX(0);
        transform: translateX(0);
    }
}
@keyframes fadeInRight {
    0% {
        opacity: 0;
        -webkit-transform: translateX(20px);
        -ms-transform: translateX(20px);
        transform: translateX(20px);
    }
    100% {
        opacity: 1;
        -webkit-transform: translateX(0);
        -ms-transform: translateX(0);
        transform: translateX(0);
    }
}
.fadeInRight {
    -webkit-animation-name: fadeInRight;
    animation-name: fadeInRight;
}
@-webkit-keyframes fadeInRightBig {
    0% {
        opacity: 0;
        -webkit-transform: translateX(2000px);
        transform: translateX(2000px);
    }
    100% {
        opacity: 1;
        -webkit-transform: translateX(0);
        transform: translateX(0);
    }
}
@keyframes fadeInRightBig {
    0% {
        opacity: 0;
        -webkit-transform: translateX(2000px);
        -ms-transform: translateX(2000px);
        transform: translateX(2000px);
    }
    100% {
        opacity: 1;
        -webkit-transform: translateX(0);
        -ms-transform: translateX(0);
        transform: translateX(0);
    }
}
.fadeInRightBig {
    -webkit-animation-name: fadeInRightBig;
    animation-name: fadeInRightBig;
}
@-webkit-keyframes fadeInUp {
    0% {
        opacity: 0;
        -webkit-transform: translateY(20px);
        transform: translateY(20px);
    }
    100% {
        opacity: 1;
        -webkit-transform: translateY(0);
        transform: translateY(0);
    }
}
@keyframes fadeInUp {
    0% {
        opacity: 0;
        -webkit-transform: translateY(20px);
        -ms-transform: translateY(20px);
        transform: translateY(20px);
    }
    100% {
        opacity: 1;
        -webkit-transform: translateY(0);
        -ms-transform: translateY(0);
        transform: translateY(0);
    }
}
.fadeInUp {
    -webkit-animation-name: fadeInUp;
    animation-name: fadeInUp;
}
@-webkit-keyframes fadeInUpBig {
    0% {
        opacity: 0;
        -webkit-transform: translateY(2000px);
        transform: translateY(2000px);
    }
    100% {
        opacity: 1;
        -webkit-transform: translateY(0);
        transform: translateY(0);
    }
}
@keyframes fadeInUpBig {
    0% {
        opacity: 0;
        -webkit-transform: translateY(2000px);
        -ms-transform: translateY(2000px);
        transform: translateY(2000px);
    }
    100% {
        opacity: 1;
        -webkit-transform: translateY(0);
        -ms-transform: translateY(0);
        transform: translateY(0);
    }
}
.fadeInUpBig {
    -webkit-animation-name: fadeInUpBig;
    animation-name: fadeInUpBig;
}
@-webkit-keyframes fadeOut {
    0% {
        opacity: 1;
    }
    100% {
        opacity: 0;
    }
}
@keyframes fadeOut {
    0% {
        opacity: 1;
    }
    100% {
        opacity: 0;
    }
}
.fadeOut {
    -webkit-animation-name: fadeOut;
    animation-name: fadeOut;
}
@-webkit-keyframes fadeOutDown {
    0% {
        opacity: 1;
        -webkit-transform: translateY(0);
        transform: translateY(0);
    }
    100% {
        opacity: 0;
        -webkit-transform: translateY(20px);
        transform: translateY(20px);
    }
}
@keyframes fadeOutDown {
    0% {
        opacity: 1;
        -webkit-transform: translateY(0);
        -ms-transform: translateY(0);
        transform: translateY(0);
    }
    100% {
        opacity: 0;
        -webkit-transform: translateY(20px);
        -ms-transform: translateY(20px);
        transform: translateY(20px);
    }
}
.fadeOutDown {
    -webkit-animation-name: fadeOutDown;
    animation-name: fadeOutDown;
}
@-webkit-keyframes fadeOutDownBig {
    0% {
        opacity: 1;
        -webkit-transform: translateY(0);
        transform: translateY(0);
    }
    100% {
        opacity: 0;
        -webkit-transform: translateY(2000px);
        transform: translateY(2000px);
    }
}
@keyframes fadeOutDownBig {
    0% {
        opacity: 1;
        -webkit-transform: translateY(0);
        -ms-transform: translateY(0);
        transform: translateY(0);
    }
    100% {
        opacity: 0;
        -webkit-transform: translateY(2000px);
        -ms-transform: translateY(2000px);
        transform: translateY(2000px);
    }
}
.fadeOutDownBig {
    -webkit-animation-name: fadeOutDownBig;
    animation-name: fadeOutDownBig;
}
@-webkit-keyframes fadeOutLeft {
    0% {
        opacity: 1;
        -webkit-transform: translateX(0);
        transform: translateX(0);
    }
    100% {
        opacity: 0;
        -webkit-transform: translateX(-20px);
        transform: translateX(-20px);
    }
}
@keyframes fadeOutLeft {
    0% {
        opacity: 1;
        -webkit-transform: translateX(0);
        -ms-transform: translateX(0);
        transform: translateX(0);
    }
    100% {
        opacity: 0;
        -webkit-transform: translateX(-20px);
        -ms-transform: translateX(-20px);
        transform: translateX(-20px);
    }
}
.fadeOutLeft {
    -webkit-animation-name: fadeOutLeft;
    animation-name: fadeOutLeft;
}
@-webkit-keyframes fadeOutLeftBig {
    0% {
        opacity: 1;
        -webkit-transform: translateX(0);
        transform: translateX(0);
    }
    100% {
        opacity: 0;
        -webkit-transform: translateX(-2000px);
        transform: translateX(-2000px);
    }
}
@keyframes fadeOutLeftBig {
    0% {
        opacity: 1;
        -webkit-transform: translateX(0);
        -ms-transform: translateX(0);
        transform: translateX(0);
    }
    100% {
        opacity: 0;
        -webkit-transform: translateX(-2000px);
        -ms-transform: translateX(-2000px);
        transform: translateX(-2000px);
    }
}
.fadeOutLeftBig {
    -webkit-animation-name: fadeOutLeftBig;
    animation-name: fadeOutLeftBig;
}
@-webkit-keyframes fadeOutRight {
    0% {
        opacity: 1;
        -webkit-transform: translateX(0);
        transform: translateX(0);
    }
    100% {
        opacity: 0;
        -webkit-transform: translateX(20px);
        transform: translateX(20px);
    }
}
@keyframes fadeOutRight {
    0% {
        opacity: 1;
        -webkit-transform: translateX(0);
        -ms-transform: translateX(0);
        transform: translateX(0);
    }
    100% {
        opacity: 0;
        -webkit-transform: translateX(20px);
        -ms-transform: translateX(20px);
        transform: translateX(20px);
    }
}
.fadeOutRight {
    -webkit-animation-name: fadeOutRight;
    animation-name: fadeOutRight;
}
@-webkit-keyframes fadeOutRightBig {
    0% {
        opacity: 1;
        -webkit-transform: translateX(0);
        transform: translateX(0);
    }
    100% {
        opacity: 0;
        -webkit-transform: translateX(2000px);
        transform: translateX(2000px);
    }
}
@keyframes fadeOutRightBig {
    0% {
        opacity: 1;
        -webkit-transform: translateX(0);
        -ms-transform: translateX(0);
        transform: translateX(0);
    }
    100% {
        opacity: 0;
        -webkit-transform: translateX(2000px);
        -ms-transform: translateX(2000px);
        transform: translateX(2000px);
    }
}
.fadeOutRightBig {
    -webkit-animation-name: fadeOutRightBig;
    animation-name: fadeOutRightBig;
}
@-webkit-keyframes fadeOutUp {
    0% {
        opacity: 1;
        -webkit-transform: translateY(0);
        transform: translateY(0);
    }
    100% {
        opacity: 0;
        -webkit-transform: translateY(-20px);
        transform: translateY(-20px);
    }
}
@keyframes fadeOutUp {
    0% {
        opacity: 1;
        -webkit-transform: translateY(0);
        -ms-transform: translateY(0);
        transform: translateY(0);
    }
    100% {
        opacity: 0;
        -webkit-transform: translateY(-20px);
        -ms-transform: translateY(-20px);
        transform: translateY(-20px);
    }
}
.fadeOutUp {
    -webkit-animation-name: fadeOutUp;
    animation-name: fadeOutUp;
}
@-webkit-keyframes fadeOutUpBig {
    0% {
        opacity: 1;
        -webkit-transform: translateY(0);
        transform: translateY(0);
    }
    100% {
        opacity: 0;
        -webkit-transform: translateY(-2000px);
        transform: translateY(-2000px);
    }
}
@keyframes fadeOutUpBig {
    0% {
        opacity: 1;
        -webkit-transform: translateY(0);
        -ms-transform: translateY(0);
        transform: translateY(0);
    }
    100% {
        opacity: 0;
        -webkit-transform: translateY(-2000px);
        -ms-transform: translateY(-2000px);
        transform: translateY(-2000px);
    }
}
.fadeOutUpBig {
    -webkit-animation-name: fadeOutUpBig;
    animation-name: fadeOutUpBig;
}
@-webkit-keyframes flip {
    0% {
        -webkit-transform: perspective(400px) translateZ(0) rotateY(0) scale(1);
        transform: perspective(400px) translateZ(0) rotateY(0) scale(1);
        -webkit-animation-timing-function: ease-out;
        animation-timing-function: ease-out;
    }
    40% {
        -webkit-transform: perspective(400px) translateZ(150px) rotateY(170deg) scale(1);
        transform: perspective(400px) translateZ(150px) rotateY(170deg) scale(1);
        -webkit-animation-timing-function: ease-out;
        animation-timing-function: ease-out;
    }
    50% {
        -webkit-transform: perspective(400px) translateZ(150px) rotateY(190deg) scale(1);
        transform: perspective(400px) translateZ(150px) rotateY(190deg) scale(1);
        -webkit-animation-timing-function: ease-in;
        animation-timing-function: ease-in;
    }
    80% {
        -webkit-transform: perspective(400px) translateZ(0) rotateY(360deg) scale(.95);
        transform: perspective(400px) translateZ(0) rotateY(360deg) scale(.95);
        -webkit-animation-timing-function: ease-in;
        animation-timing-function: ease-in;
    }
    100% {
        -webkit-transform: perspective(400px) translateZ(0) rotateY(360deg) scale(1);
        transform: perspective(400px) translateZ(0) rotateY(360deg) scale(1);
        -webkit-animation-timing-function: ease-in;
        animation-timing-function: ease-in;
    }
}
@keyframes flip {
    0% {
        -webkit-transform: perspective(400px) translateZ(0) rotateY(0) scale(1);
        -ms-transform: perspective(400px) translateZ(0) rotateY(0) scale(1);
        transform: perspective(400px) translateZ(0) rotateY(0) scale(1);
        -webkit-animation-timing-function: ease-out;
        animation-timing-function: ease-out;
    }
    40% {
        -webkit-transform: perspective(400px) translateZ(150px) rotateY(170deg) scale(1);
        -ms-transform: perspective(400px) translateZ(150px) rotateY(170deg) scale(1);
        transform: perspective(400px) translateZ(150px) rotateY(170deg) scale(1);
        -webkit-animation-timing-function: ease-out;
        animation-timing-function: ease-out;
    }
    50% {
        -webkit-transform: perspective(400px) translateZ(150px) rotateY(190deg) scale(1);
        -ms-transform: perspective(400px) translateZ(150px) rotateY(190deg) scale(1);
        transform: perspective(400px) translateZ(150px) rotateY(190deg) scale(1);
        -webkit-animation-timing-function: ease-in;
        animation-timing-function: ease-in;
    }
    80% {
        -webkit-transform: perspective(400px) translateZ(0) rotateY(360deg) scale(.95);
        -ms-transform: perspective(400px) translateZ(0) rotateY(360deg) scale(.95);
        transform: perspective(400px) translateZ(0) rotateY(360deg) scale(.95);
        -webkit-animation-timing-function: ease-in;
        animation-timing-function: ease-in;
    }
    100% {
        -webkit-transform: perspective(400px) translateZ(0) rotateY(360deg) scale(1);
        -ms-transform: perspective(400px) translateZ(0) rotateY(360deg) scale(1);
        transform: perspective(400px) translateZ(0) rotateY(360deg) scale(1);
        -webkit-animation-timing-function: ease-in;
        animation-timing-function: ease-in;
    }
}
.animated.flip {
    -webkit-backface-visibility: visible;
    -ms-backface-visibility: visible;
    backface-visibility: visible;
    -webkit-animation-name: flip;
    animation-name: flip;
}
@-webkit-keyframes flipInX {
    0% {
        -webkit-transform: perspective(400px) rotateX(90deg);
        transform: perspective(400px) rotateX(90deg);
        opacity: 0;
    }
    40% {
        -webkit-transform: perspective(400px) rotateX(-10deg);
        transform: perspective(400px) rotateX(-10deg);
    }
    70% {
        -webkit-transform: perspective(400px) rotateX(10deg);
        transform: perspective(400px) rotateX(10deg);
    }
    100% {
        -webkit-transform: perspective(400px) rotateX(0deg);
        transform: perspective(400px) rotateX(0deg);
        opacity: 1;
    }
}
@keyframes flipInX {
    0% {
        -webkit-transform: perspective(400px) rotateX(90deg);
        -ms-transform: perspective(400px) rotateX(90deg);
        transform: perspective(400px) rotateX(90deg);
        opacity: 0;
    }
    40% {
        -webkit-transform: perspective(400px) rotateX(-10deg);
        -ms-transform: perspective(400px) rotateX(-10deg);
        transform: perspective(400px) rotateX(-10deg);
    }
    70% {
        -webkit-transform: perspective(400px) rotateX(10deg);
        -ms-transform: perspective(400px) rotateX(10deg);
        transform: perspective(400px) rotateX(10deg);
    }
    100% {
        -webkit-transform: perspective(400px) rotateX(0deg);
        -ms-transform: perspective(400px) rotateX(0deg);
        transform: perspective(400px) rotateX(0deg);
        opacity: 1;
    }
}
.flipInX {
    -webkit-backface-visibility: visible !important;
    -ms-backface-visibility: visible !important;
    backface-visibility: visible !important;
    -webkit-animation-name: flipInX;
    animation-name: flipInX;
}
@-webkit-keyframes flipInY {
    0% {
        -webkit-transform: perspective(400px) rotateY(90deg);
        transform: perspective(400px) rotateY(90deg);
        opacity: 0;
    }
    40% {
        -webkit-transform: perspective(400px) rotateY(-10deg);
        transform: perspective(400px) rotateY(-10deg);
    }
    70% {
        -webkit-transform: perspective(400px) rotateY(10deg);
        transform: perspective(400px) rotateY(10deg);
    }
    100% {
        -webkit-transform: perspective(400px) rotateY(0deg);
        transform: perspective(400px) rotateY(0deg);
        opacity: 1;
    }
}
@keyframes flipInY {
    0% {
        -webkit-transform: perspective(400px) rotateY(90deg);
        -ms-transform: perspective(400px) rotateY(90deg);
        transform: perspective(400px) rotateY(90deg);
        opacity: 0;
    }
    40% {
        -webkit-transform: perspective(400px) rotateY(-10deg);
        -ms-transform: perspective(400px) rotateY(-10deg);
        transform: perspective(400px) rotateY(-10deg);
    }
    70% {
        -webkit-transform: perspective(400px) rotateY(10deg);
        -ms-transform: perspective(400px) rotateY(10deg);
        transform: perspective(400px) rotateY(10deg);
    }
    100% {
        -webkit-transform: perspective(400px) rotateY(0deg);
        -ms-transform: perspective(400px) rotateY(0deg);
        transform: perspective(400px) rotateY(0deg);
        opacity: 1;
    }
}
.flipInY {
    -webkit-backface-visibility: visible !important;
    -ms-backface-visibility: visible !important;
    backface-visibility: visible !important;
    -webkit-animation-name: flipInY;
    animation-name: flipInY;
}
@-webkit-keyframes flipOutX {
    0% {
        -webkit-transform: perspective(400px) rotateX(0deg);
        transform: perspective(400px) rotateX(0deg);
        opacity: 1;
    }
    100% {
        -webkit-transform: perspective(400px) rotateX(90deg);
        transform: perspective(400px) rotateX(90deg);
        opacity: 0;
    }
}
@keyframes flipOutX {
    0% {
        -webkit-transform: perspective(400px) rotateX(0deg);
        -ms-transform: perspective(400px) rotateX(0deg);
        transform: perspective(400px) rotateX(0deg);
        opacity: 1;
    }
    100% {
        -webkit-transform: perspective(400px) rotateX(90deg);
        -ms-transform: perspective(400px) rotateX(90deg);
        transform: perspective(400px) rotateX(90deg);
        opacity: 0;
    }
}
.flipOutX {
    -webkit-animation-name: flipOutX;
    animation-name: flipOutX;
    -webkit-backface-visibility: visible !important;
    -ms-backface-visibility: visible !important;
    backface-visibility: visible !important;
}
@-webkit-keyframes flipOutY {
    0% {
        -webkit-transform: perspective(400px) rotateY(0deg);
        transform: perspective(400px) rotateY(0deg);
        opacity: 1;
    }
    100% {
        -webkit-transform: perspective(400px) rotateY(90deg);
        transform: perspective(400px) rotateY(90deg);
        opacity: 0;
    }
}
@keyframes flipOutY {
    0% {
        -webkit-transform: perspective(400px) rotateY(0deg);
        -ms-transform: perspective(400px) rotateY(0deg);
        transform: perspective(400px) rotateY(0deg);
        opacity: 1;
    }
    100% {
        -webkit-transform: perspective(400px) rotateY(90deg);
        -ms-transform: perspective(400px) rotateY(90deg);
        transform: perspective(400px) rotateY(90deg);
        opacity: 0;
    }
}
.flipOutY {
    -webkit-backface-visibility: visible !important;
    -ms-backface-visibility: visible !important;
    backface-visibility: visible !important;
    -webkit-animation-name: flipOutY;
    animation-name: flipOutY;
}
@-webkit-keyframes lightSpeedIn {
    0% {
        -webkit-transform: translateX(100%) skewX(-30deg);
        transform: translateX(100%) skewX(-30deg);
        opacity: 0;
    }
    60% {
        -webkit-transform: translateX(-20%) skewX(30deg);
        transform: translateX(-20%) skewX(30deg);
        opacity: 1;
    }
    80% {
        -webkit-transform: translateX(0%) skewX(-15deg);
        transform: translateX(0%) skewX(-15deg);
        opacity: 1;
    }
    100% {
        -webkit-transform: translateX(0%) skewX(0deg);
        transform: translateX(0%) skewX(0deg);
        opacity: 1;
    }
}
@keyframes lightSpeedIn {
    0% {
        -webkit-transform: translateX(100%) skewX(-30deg);
        -ms-transform: translateX(100%) skewX(-30deg);
        transform: translateX(100%) skewX(-30deg);
        opacity: 0;
    }
    60% {
        -webkit-transform: translateX(-20%) skewX(30deg);
        -ms-transform: translateX(-20%) skewX(30deg);
        transform: translateX(-20%) skewX(30deg);
        opacity: 1;
    }
    80% {
        -webkit-transform: translateX(0%) skewX(-15deg);
        -ms-transform: translateX(0%) skewX(-15deg);
        transform: translateX(0%) skewX(-15deg);
        opacity: 1;
    }
    100% {
        -webkit-transform: translateX(0%) skewX(0deg);
        -ms-transform: translateX(0%) skewX(0deg);
        transform: translateX(0%) skewX(0deg);
        opacity: 1;
    }
}
.lightSpeedIn {
    -webkit-animation-name: lightSpeedIn;
    animation-name: lightSpeedIn;
    -webkit-animation-timing-function: ease-out;
    animation-timing-function: ease-out;
}
@-webkit-keyframes lightSpeedOut {
    0% {
        -webkit-transform: translateX(0%) skewX(0deg);
        transform: translateX(0%) skewX(0deg);
        opacity: 1;
    }
    100% {
        -webkit-transform: translateX(100%) skewX(-30deg);
        transform: translateX(100%) skewX(-30deg);
        opacity: 0;
    }
}
@keyframes lightSpeedOut {
    0% {
        -webkit-transform: translateX(0%) skewX(0deg);
        -ms-transform: translateX(0%) skewX(0deg);
        transform: translateX(0%) skewX(0deg);
        opacity: 1;
    }
    100% {
        -webkit-transform: translateX(100%) skewX(-30deg);
        -ms-transform: translateX(100%) skewX(-30deg);
        transform: translateX(100%) skewX(-30deg);
        opacity: 0;
    }
}
.lightSpeedOut {
    -webkit-animation-name: lightSpeedOut;
    animation-name: lightSpeedOut;
    -webkit-animation-timing-function: ease-in;
    animation-timing-function: ease-in;
}
@-webkit-keyframes rotateIn {
    0% {
        -webkit-transform-origin: center center;
        transform-origin: center center;
        -webkit-transform: rotate(-200deg);
        transform: rotate(-200deg);
        opacity: 0;
    }
    100% {
        -webkit-transform-origin: center center;
        transform-origin: center center;
        -webkit-transform: rotate(0);
        transform: rotate(0);
        opacity: 1;
    }
}
@keyframes rotateIn {
    0% {
        -webkit-transform-origin: center center;
        -ms-transform-origin: center center;
        transform-origin: center center;
        -webkit-transform: rotate(-200deg);
        -ms-transform: rotate(-200deg);
        transform: rotate(-200deg);
        opacity: 0;
    }
    100% {
        -webkit-transform-origin: center center;
        -ms-transform-origin: center center;
        transform-origin: center center;
        -webkit-transform: rotate(0);
        -ms-transform: rotate(0);
        transform: rotate(0);
        opacity: 1;
    }
}
.rotateIn {
    -webkit-animation-name: rotateIn;
    animation-name: rotateIn;
}
@-webkit-keyframes rotateInDownLeft {
    0% {
        -webkit-transform-origin: left bottom;
        transform-origin: left bottom;
        -webkit-transform: rotate(-90deg);
        transform: rotate(-90deg);
        opacity: 0;
    }
    100% {
        -webkit-transform-origin: left bottom;
        transform-origin: left bottom;
        -webkit-transform: rotate(0);
        transform: rotate(0);
        opacity: 1;
    }
}
@keyframes rotateInDownLeft {
    0% {
        -webkit-transform-origin: left bottom;
        -ms-transform-origin: left bottom;
        transform-origin: left bottom;
        -webkit-transform: rotate(-90deg);
        -ms-transform: rotate(-90deg);
        transform: rotate(-90deg);
        opacity: 0;
    }
    100% {
        -webkit-transform-origin: left bottom;
        -ms-transform-origin: left bottom;
        transform-origin: left bottom;
        -webkit-transform: rotate(0);
        -ms-transform: rotate(0);
        transform: rotate(0);
        opacity: 1;
    }
}
.rotateInDownLeft {
    -webkit-animation-name: rotateInDownLeft;
    animation-name: rotateInDownLeft;
}
@-webkit-keyframes rotateInDownRight {
    0% {
        -webkit-transform-origin: right bottom;
        transform-origin: right bottom;
        -webkit-transform: rotate(90deg);
        transform: rotate(90deg);
        opacity: 0;
    }
    100% {
        -webkit-transform-origin: right bottom;
        transform-origin: right bottom;
        -webkit-transform: rotate(0);
        transform: rotate(0);
        opacity: 1;
    }
}
@keyframes rotateInDownRight {
    0% {
        -webkit-transform-origin: right bottom;
        -ms-transform-origin: right bottom;
        transform-origin: right bottom;
        -webkit-transform: rotate(90deg);
        -ms-transform: rotate(90deg);
        transform: rotate(90deg);
        opacity: 0;
    }
    100% {
        -webkit-transform-origin: right bottom;
        -ms-transform-origin: right bottom;
        transform-origin: right bottom;
        -webkit-transform: rotate(0);
        -ms-transform: rotate(0);
        transform: rotate(0);
        opacity: 1;
    }
}
.rotateInDownRight {
    -webkit-animation-name: rotateInDownRight;
    animation-name: rotateInDownRight;
}
@-webkit-keyframes rotateInUpLeft {
    0% {
        -webkit-transform-origin: left bottom;
        transform-origin: left bottom;
        -webkit-transform: rotate(90deg);
        transform: rotate(90deg);
        opacity: 0;
    }
    100% {
        -webkit-transform-origin: left bottom;
        transform-origin: left bottom;
        -webkit-transform: rotate(0);
        transform: rotate(0);
        opacity: 1;
    }
}
@keyframes rotateInUpLeft {
    0% {
        -webkit-transform-origin: left bottom;
        -ms-transform-origin: left bottom;
        transform-origin: left bottom;
        -webkit-transform: rotate(90deg);
        -ms-transform: rotate(90deg);
        transform: rotate(90deg);
        opacity: 0;
    }
    100% {
        -webkit-transform-origin: left bottom;
        -ms-transform-origin: left bottom;
        transform-origin: left bottom;
        -webkit-transform: rotate(0);
        -ms-transform: rotate(0);
        transform: rotate(0);
        opacity: 1;
    }
}
.rotateInUpLeft {
    -webkit-animation-name: rotateInUpLeft;
    animation-name: rotateInUpLeft;
}
@-webkit-keyframes rotateInUpRight {
    0% {
        -webkit-transform-origin: right bottom;
        transform-origin: right bottom;
        -webkit-transform: rotate(-90deg);
        transform: rotate(-90deg);
        opacity: 0;
    }
    100% {
        -webkit-transform-origin: right bottom;
        transform-origin: right bottom;
        -webkit-transform: rotate(0);
        transform: rotate(0);
        opacity: 1;
    }
}
@keyframes rotateInUpRight {
    0% {
        -webkit-transform-origin: right bottom;
        -ms-transform-origin: right bottom;
        transform-origin: right bottom;
        -webkit-transform: rotate(-90deg);
        -ms-transform: rotate(-90deg);
        transform: rotate(-90deg);
        opacity: 0;
    }
    100% {
        -webkit-transform-origin: right bottom;
        -ms-transform-origin: right bottom;
        transform-origin: right bottom;
        -webkit-transform: rotate(0);
        -ms-transform: rotate(0);
        transform: rotate(0);
        opacity: 1;
    }
}
.rotateInUpRight {
    -webkit-animation-name: rotateInUpRight;
    animation-name: rotateInUpRight;
}
@-webkit-keyframes rotateOut {
    0% {
        -webkit-transform-origin: center center;
        transform-origin: center center;
        -webkit-transform: rotate(0);
        transform: rotate(0);
        opacity: 1;
    }
    100% {
        -webkit-transform-origin: center center;
        transform-origin: center center;
        -webkit-transform: rotate(200deg);
        transform: rotate(200deg);
        opacity: 0;
    }
}
@keyframes rotateOut {
    0% {
        -webkit-transform-origin: center center;
        -ms-transform-origin: center center;
        transform-origin: center center;
        -webkit-transform: rotate(0);
        -ms-transform: rotate(0);
        transform: rotate(0);
        opacity: 1;
    }
    100% {
        -webkit-transform-origin: center center;
        -ms-transform-origin: center center;
        transform-origin: center center;
        -webkit-transform: rotate(200deg);
        -ms-transform: rotate(200deg);
        transform: rotate(200deg);
        opacity: 0;
    }
}
.rotateOut {
    -webkit-animation-name: rotateOut;
    animation-name: rotateOut;
}
@-webkit-keyframes rotateOutDownLeft {
    0% {
        -webkit-transform-origin: left bottom;
        transform-origin: left bottom;
        -webkit-transform: rotate(0);
        transform: rotate(0);
        opacity: 1;
    }
    100% {
        -webkit-transform-origin: left bottom;
        transform-origin: left bottom;
        -webkit-transform: rotate(90deg);
        transform: rotate(90deg);
        opacity: 0;
    }
}
@keyframes rotateOutDownLeft {
    0% {
        -webkit-transform-origin: left bottom;
        -ms-transform-origin: left bottom;
        transform-origin: left bottom;
        -webkit-transform: rotate(0);
        -ms-transform: rotate(0);
        transform: rotate(0);
        opacity: 1;
    }
    100% {
        -webkit-transform-origin: left bottom;
        -ms-transform-origin: left bottom;
        transform-origin: left bottom;
        -webkit-transform: rotate(90deg);
        -ms-transform: rotate(90deg);
        transform: rotate(90deg);
        opacity: 0;
    }
}
.rotateOutDownLeft {
    -webkit-animation-name: rotateOutDownLeft;
    animation-name: rotateOutDownLeft;
}
@-webkit-keyframes rotateOutDownRight {
    0% {
        -webkit-transform-origin: right bottom;
        transform-origin: right bottom;
        -webkit-transform: rotate(0);
        transform: rotate(0);
        opacity: 1;
    }
    100% {
        -webkit-transform-origin: right bottom;
        transform-origin: right bottom;
        -webkit-transform: rotate(-90deg);
        transform: rotate(-90deg);
        opacity: 0;
    }
}
@keyframes rotateOutDownRight {
    0% {
        -webkit-transform-origin: right bottom;
        -ms-transform-origin: right bottom;
        transform-origin: right bottom;
        -webkit-transform: rotate(0);
        -ms-transform: rotate(0);
        transform: rotate(0);
        opacity: 1;
    }
    100% {
        -webkit-transform-origin: right bottom;
        -ms-transform-origin: right bottom;
        transform-origin: right bottom;
        -webkit-transform: rotate(-90deg);
        -ms-transform: rotate(-90deg);
        transform: rotate(-90deg);
        opacity: 0;
    }
}
.rotateOutDownRight {
    -webkit-animation-name: rotateOutDownRight;
    animation-name: rotateOutDownRight;
}
@-webkit-keyframes rotateOutUpLeft {
    0% {
        -webkit-transform-origin: left bottom;
        transform-origin: left bottom;
        -webkit-transform: rotate(0);
        transform: rotate(0);
        opacity: 1;
    }
    100% {
        -webkit-transform-origin: left bottom;
        transform-origin: left bottom;
        -webkit-transform: rotate(-90deg);
        transform: rotate(-90deg);
        opacity: 0;
    }
}
@keyframes rotateOutUpLeft {
    0% {
        -webkit-transform-origin: left bottom;
        -ms-transform-origin: left bottom;
        transform-origin: left bottom;
        -webkit-transform: rotate(0);
        -ms-transform: rotate(0);
        transform: rotate(0);
        opacity: 1;
    }
    100% {
        -webkit-transform-origin: left bottom;
        -ms-transform-origin: left bottom;
        transform-origin: left bottom;
        -webkit-transform: rotate(-90deg);
        -ms-transform: rotate(-90deg);
        transform: rotate(-90deg);
        opacity: 0;
    }
}
.rotateOutUpLeft {
    -webkit-animation-name: rotateOutUpLeft;
    animation-name: rotateOutUpLeft;
}
@-webkit-keyframes rotateOutUpRight {
    0% {
        -webkit-transform-origin: right bottom;
        transform-origin: right bottom;
        -webkit-transform: rotate(0);
        transform: rotate(0);
        opacity: 1;
    }
    100% {
        -webkit-transform-origin: right bottom;
        transform-origin: right bottom;
        -webkit-transform: rotate(90deg);
        transform: rotate(90deg);
        opacity: 0;
    }
}
@keyframes rotateOutUpRight {
    0% {
        -webkit-transform-origin: right bottom;
        -ms-transform-origin: right bottom;
        transform-origin: right bottom;
        -webkit-transform: rotate(0);
        -ms-transform: rotate(0);
        transform: rotate(0);
        opacity: 1;
    }
    100% {
        -webkit-transform-origin: right bottom;
        -ms-transform-origin: right bottom;
        transform-origin: right bottom;
        -webkit-transform: rotate(90deg);
        -ms-transform: rotate(90deg);
        transform: rotate(90deg);
        opacity: 0;
    }
}
.rotateOutUpRight {
    -webkit-animation-name: rotateOutUpRight;
    animation-name: rotateOutUpRight;
}
@-webkit-keyframes slideInDown {
    0% {
        opacity: 0;
        -webkit-transform: translateY(-2000px);
        transform: translateY(-2000px);
    }
    100% {
        -webkit-transform: translateY(0);
        transform: translateY(0);
    }
}
@keyframes slideInDown {
    0% {
        opacity: 0;
        -webkit-transform: translateY(-2000px);
        -ms-transform: translateY(-2000px);
        transform: translateY(-2000px);
    }
    100% {
        -webkit-transform: translateY(0);
        -ms-transform: translateY(0);
        transform: translateY(0);
    }
}
.slideInDown {
    -webkit-animation-name: slideInDown;
    animation-name: slideInDown;
}
@-webkit-keyframes slideInLeft {
    0% {
        opacity: 0;
        -webkit-transform: translateX(-2000px);
        transform: translateX(-2000px);
    }
    100% {
        -webkit-transform: translateX(0);
        transform: translateX(0);
    }
}
@keyframes slideInLeft {
    0% {
        opacity: 0;
        -webkit-transform: translateX(-2000px);
        -ms-transform: translateX(-2000px);
        transform: translateX(-2000px);
    }
    100% {
        -webkit-transform: translateX(0);
        -ms-transform: translateX(0);
        transform: translateX(0);
    }
}
.slideInLeft {
    -webkit-animation-name: slideInLeft;
    animation-name: slideInLeft;
}
@-webkit-keyframes slideInRight {
    0% {
        opacity: 0;
        -webkit-transform: translateX(2000px);
        transform: translateX(2000px);
    }
    100% {
        -webkit-transform: translateX(0);
        transform: translateX(0);
    }
}
@keyframes slideInRight {
    0% {
        opacity: 0;
        -webkit-transform: translateX(2000px);
        -ms-transform: translateX(2000px);
        transform: translateX(2000px);
    }
    100% {
        -webkit-transform: translateX(0);
        -ms-transform: translateX(0);
        transform: translateX(0);
    }
}
.slideInRight {
    -webkit-animation-name: slideInRight;
    animation-name: slideInRight;
}
@-webkit-keyframes slideInUp {
    0% {
        opacity: 0;
        -webkit-transform: translateY(2000px);
        transform: translateY(2000px);
    }
    100% {
        -webkit-transform: translateY(0);
        transform: translateY(0);
    }
}
@keyframes slideInUp {
    0% {
        opacity: 0;
        -webkit-transform: translateY(2000px);
        -ms-transform: translateY(2000px);
        transform: translateY(2000px);
    }
    100% {
        -webkit-transform: translateY(0);
        -ms-transform: translateY(0);
        transform: translateY(0);
    }
}
.slideInUp {
    -webkit-animation-name: slideInUp;
    animation-name: slideInUp;
}
@-webkit-keyframes slideOutLeft {
    0% {
        -webkit-transform: translateX(0);
        transform: translateX(0);
    }
    100% {
        opacity: 0;
        -webkit-transform: translateX(-2000px);
        transform: translateX(-2000px);
    }
}
@keyframes slideOutLeft {
    0% {
        -webkit-transform: translateX(0);
        -ms-transform: translateX(0);
        transform: translateX(0);
    }
    100% {
        opacity: 0;
        -webkit-transform: translateX(-2000px);
        -ms-transform: translateX(-2000px);
        transform: translateX(-2000px);
    }
}
.slideOutLeft {
    -webkit-animation-name: slideOutLeft;
    animation-name: slideOutLeft;
}
@-webkit-keyframes slideOutRight {
    0% {
        -webkit-transform: translateX(0);
        transform: translateX(0);
    }
    100% {
        opacity: 0;
        -webkit-transform: translateX(2000px);
        transform: translateX(2000px);
    }
}
@keyframes slideOutRight {
    0% {
        -webkit-transform: translateX(0);
        -ms-transform: translateX(0);
        transform: translateX(0);
    }
    100% {
        opacity: 0;
        -webkit-transform: translateX(2000px);
        -ms-transform: translateX(2000px);
        transform: translateX(2000px);
    }
}
.slideOutRight {
    -webkit-animation-name: slideOutRight;
    animation-name: slideOutRight;
}
@-webkit-keyframes slideOutUp {
    0% {
        -webkit-transform: translateY(0);
        transform: translateY(0);
    }
    100% {
        opacity: 0;
        -webkit-transform: translateY(-2000px);
        transform: translateY(-2000px);
    }
}
@keyframes slideOutUp {
    0% {
        -webkit-transform: translateY(0);
        -ms-transform: translateY(0);
        transform: translateY(0);
    }
    100% {
        opacity: 0;
        -webkit-transform: translateY(-2000px);
        -ms-transform: translateY(-2000px);
        transform: translateY(-2000px);
    }
}
.slideOutUp {
    -webkit-animation-name: slideOutUp;
    animation-name: slideOutUp;
}
@-webkit-keyframes hinge {
    0% {
        -webkit-transform: rotate(0);
        transform: rotate(0);
        -webkit-transform-origin: top left;
        transform-origin: top left;
        -webkit-animation-timing-function: ease-in-out;
        animation-timing-function: ease-in-out;
    }
    20%, 60% {
        -webkit-transform: rotate(80deg);
        transform: rotate(80deg);
        -webkit-transform-origin: top left;
        transform-origin: top left;
        -webkit-animation-timing-function: ease-in-out;
        animation-timing-function: ease-in-out;
    }
    40% {
        -webkit-transform: rotate(60deg);
        transform: rotate(60deg);
        -webkit-transform-origin: top left;
        transform-origin: top left;
        -webkit-animation-timing-function: ease-in-out;
        animation-timing-function: ease-in-out;
    }
    80% {
        -webkit-transform: rotate(60deg) translateY(0);
        transform: rotate(60deg) translateY(0);
        opacity: 1;
        -webkit-transform-origin: top left;
        transform-origin: top left;
        -webkit-animation-timing-function: ease-in-out;
        animation-timing-function: ease-in-out;
    }
    100% {
        -webkit-transform: translateY(700px);
        transform: translateY(700px);
        opacity: 0;
    }
}
@keyframes hinge {
    0% {
        -webkit-transform: rotate(0);
        -ms-transform: rotate(0);
        transform: rotate(0);
        -webkit-transform-origin: top left;
        -ms-transform-origin: top left;
        transform-origin: top left;
        -webkit-animation-timing-function: ease-in-out;
        animation-timing-function: ease-in-out;
    }
    20%, 60% {
        -webkit-transform: rotate(80deg);
        -ms-transform: rotate(80deg);
        transform: rotate(80deg);
        -webkit-transform-origin: top left;
        -ms-transform-origin: top left;
        transform-origin: top left;
        -webkit-animation-timing-function: ease-in-out;
        animation-timing-function: ease-in-out;
    }
    40% {
        -webkit-transform: rotate(60deg);
        -ms-transform: rotate(60deg);
        transform: rotate(60deg);
        -webkit-transform-origin: top left;
        -ms-transform-origin: top left;
        transform-origin: top left;
        -webkit-animation-timing-function: ease-in-out;
        animation-timing-function: ease-in-out;
    }
    80% {
        -webkit-transform: rotate(60deg) translateY(0);
        -ms-transform: rotate(60deg) translateY(0);
        transform: rotate(60deg) translateY(0);
        opacity: 1;
        -webkit-transform-origin: top left;
        -ms-transform-origin: top left;
        transform-origin: top left;
        -webkit-animation-timing-function: ease-in-out;
        animation-timing-function: ease-in-out;
    }
    100% {
        -webkit-transform: translateY(700px);
        -ms-transform: translateY(700px);
        transform: translateY(700px);
        opacity: 0;
    }
}
.hinge {
    -webkit-animation-name: hinge;
    animation-name: hinge;
}
/* originally authored by Nick Pettit - https://github.com/nickpettit/glide */
 @-webkit-keyframes rollIn {
    0% {
        opacity: 0;
        -webkit-transform: translateX(-100%) rotate(-120deg);
        transform: translateX(-100%) rotate(-120deg);
    }
    100% {
        opacity: 1;
        -webkit-transform: translateX(0px) rotate(0deg);
        transform: translateX(0px) rotate(0deg);
    }
}
@keyframes rollIn {
    0% {
        opacity: 0;
        -webkit-transform: translateX(-100%) rotate(-120deg);
        -ms-transform: translateX(-100%) rotate(-120deg);
        transform: translateX(-100%) rotate(-120deg);
    }
    100% {
        opacity: 1;
        -webkit-transform: translateX(0px) rotate(0deg);
        -ms-transform: translateX(0px) rotate(0deg);
        transform: translateX(0px) rotate(0deg);
    }
}
.rollIn {
    -webkit-animation-name: rollIn;
    animation-name: rollIn;
}
/* originally authored by Nick Pettit - https://github.com/nickpettit/glide */
 @-webkit-keyframes rollOut {
    0% {
        opacity: 1;
        -webkit-transform: translateX(0px) rotate(0deg);
        transform: translateX(0px) rotate(0deg);
    }
    100% {
        opacity: 0;
        -webkit-transform: translateX(100%) rotate(120deg);
        transform: translateX(100%) rotate(120deg);
    }
}
@keyframes rollOut {
    0% {
        opacity: 1;
        -webkit-transform: translateX(0px) rotate(0deg);
        -ms-transform: translateX(0px) rotate(0deg);
        transform: translateX(0px) rotate(0deg);
    }
    100% {
        opacity: 0;
        -webkit-transform: translateX(100%) rotate(120deg);
        -ms-transform: translateX(100%) rotate(120deg);
        transform: translateX(100%) rotate(120deg);
    }
}
.rollOut {
    -webkit-animation-name: rollOut;
    animation-name: rollOut;
}
/*
==============================================
Spin that shit
==============================================
*/
 .spin {
    /*animation*/
    -webkit-animation:spin 3s linear infinite;
    -moz-animation:spin 3s linear infinite;
    -ms-animation:spin 3s linear infinite;
    -o-animation:spin 3s linear infinite;
    animation:spin 3s linear infinite;
}
@-webkit-keyframes spin {
    0% {
        -webkit-transform: rotate(0deg);
    }
    100% {
        -webkit-transform: rotate(360deg);
    }
}
@-moz-keyframes spin {
    0% {
        -webkit-transform: rotate(0deg);
    }
    100% {
        -webkit-transform: rotate(360deg);
    }
}
@-ms-keyframes spin {
    0% {
        -webkit-transform: rotate(0deg);
    }
    100% {
        -webkit-transform: rotate(360deg);
    }
}
@-o-keyframes spin {
    0% {
        -webkit-transform: rotate(0deg);
    }
    100% {
        -webkit-transform: rotate(360deg);
    }
}
@keyframes spin {
    0% {
        -webkit-transform: rotate(0deg);
    }
    100% {
        -webkit-transform: rotate(360deg);
    }
}
/*
==============================================
Flip that shit
==============================================
*/

/* entire container, keeps perspective */
 body .flip-container {
    display: inline-block;
    width: 160px;
    height: 300px;
}
body .flip-container .flipper {
    position: relative;
}
/* hide back of pane during swap */
 body .flip-container .flipper .front, body .flip-container .flipper .back {
    left: 0;
    position: absolute;
    top: 0;
    width: 100%;
    -webkit-backface-visibility: hidden;
    -moz-backface-visibility: hidden;
    backface-visibility: hidden;
    -webkit-transform: perspective(1000px) rotateY(180deg);
    -moz-transform: perspective(1000px) rotateY(180deg);
    -o-transform: perspective(1000px) rotateY(180deg);
    transform: perspective(1000px) rotateY(180deg);
    -webkit-transition: 0.6s;
    -moz-transition: 0.6s;
    -o-transition: 0.6s;
    transition: 0.6s;
}
/* front pane, placed above back */
 body .flip-container .flipper .front {
    z-index: 2;
    -webkit-transform: perspective(1000px) rotateY(0);
    -moz-transform: perspective(1000px) rotateY(0);
    -o-transform: perspective(1000px) rotateY(0);
    transform: perspective(1000px) rotateY(0);
}
/* front pane, placed above back */
 body .flip-container:hover .flipper .front {
    -webkit-animation: 0;
    opactity: 0;
    -webkit-transform: perspective(1000px) rotateY(-179.9deg);
    -moz-transform: perspective(1000px) rotateY(-179.9deg);
    -o-transform: perspective(1000px) rotateY(-179.9deg);
    transform: perspective(1000px) rotateY(-179.9deg);
}
/* back, initially hidden pane */
 body .flip-container:hover .flipper .back {
    opcaity: .1;
    position: absolute;
    z-index:3;
    -webkit-transform: perspective(1000px) rotateY(0);
    -moz-transform: perspective(1000px) rotateY(0);
    -o-transform: perspective(1000px) rotateY(0);
    transform: perspective(1000px) rotateY(0);
}
/*
==============================================
floating
==============================================
*/
 .ghost {
    -webkit-transition: all 1s ease-in;
    -moz-transition: all 1s ease-in;
    -o-transition: all 1s ease-in;
    transition:transition: all 1s ease-in;
    animation-name: floating;
    -webkit-animation-name: floating;
    -moz-animation-name: floating;
    -o-animation-name: floating;
    animation-duration: 1.5s;
    -webkit-animation-duration: 1.5s;
    -moz-animation-duration: 1.5s;
    -o-animation-duration: 1.5s;
    animation-iteration-count: infinite;
    -webkit-animation-iteration-count: infinite;
    -moz-animation-iteration-count: infinite;
    -o-animation-iteration-count: infinite;
}
.floating {
    -webkit-transition: all 1s ease-in;
    -moz-transition: all 1s ease-in;
    -o-transition: all 1s ease-in;
    transition:transition: all 1s ease-in;
    animation-name: floating;
    -webkit-animation-name: floating;
    -moz-animation-name: floating;
    -o-animation-name: floating;
    animation-duration: 1.5s;
    -webkit-animation-duration: 1.5s;
    -moz-animation-duration: 1.5s;
    -o-animation-duration: 1.5s;
    animation-iteration-count: infinite;
    -webkit-animation-iteration-count: infinite;
    -moz-animation-iteration-count: infinite;
    -o-animation-iteration-count: infinite;
}
.floating:hover {
    -webkit-transition: all .5s ease-in;
    -moz-transition: all .5s ease-in;
    -o-transition: all .5s ease-in;
    transition:transition: all .5s ease-in;
    -webkit-animation:pause;
    -moz-animation:pause;
    -o-animation:pause;
    animation:pause;
    margin-top: -20px;
}
@keyframes floating {
    0% {
        transform: translateY(0%);
    }
    50% {
        transform: translateY(8%);
    }
    100% {
        transform: translateY(0%);
    }
}
@-webkit-keyframes floating {
    0% {
        -webkit-transform: translateY(0%);
    }
    50% {
        -webkit-transform: translateY(8%);
    }
    100% {
        -webkit-transform: translateY(0%);
    }
}
@-moz-keyframes floating {
    0% {
        -moz-transform: translateY(0%);
    }
    50% {
        -moz-transform: translateY(8%);
    }
    100% {
        -moz-transform: translateY(0%);
    }
}
@-o-keyframes floating {
    0% {
        -o-transform: translateY(0%);
    }
    50% {
        -o-transform: translateY(8%);
    }
    100% {
        -o-transform: translateY(0%);
    }
}
/*
==============================================
Custom BS3
==============================================
*/
 .jumbo-profile {
    background: #2c3e50;
    color: #fff;
}
.jumbo-docs {
    background: #ecf0f1;
    color:;
}
.jumbo-docs-well {
    background:;
}
.jumbo-singledoc {
    background: #34495e;
}
.profile-jumbo-text .small {
    color: #fff;
}
.progress {
    /*    background:transparent !important;*/
    background: #eee !important;
    box-shadow:none !important;
    height: 5px;
    border-radius: 2px;
    margin-bottom: 10px;
}
/* Custom Full Calendar */

/*
  button states
  borrowed from twitter bootstrap (http://twitter.github.com/bootstrap/)
*/
 .fc-state-default {
    background-color: #fff;
    background-image: none;
    background-image: none;
    background-image: none;
    background-image: none background-image: none;
    background-repeat:none;
    border-color: #ccc;
    border-color: #ccc;
    color: #333;
    text-shadow: none;
    box-shadow: none;
}
.fc-state-default:hover {
    color: #333;
    background-color: #ebebeb;
    border-color: #adadad;
}
/* Global Event Styles
------------------------------------------------------------------------*/
 .fc-event {
    border: 1px solid #357ebd;
    /* changed BORDER color */
    background-color: #428bca;
    /* changed BACKGROUND color */
}
.fc-event: hover {
    border: 1px solid #357ebd;
    /* changed BORDER color */
    background-color: #357ebd;
    /* changed BACKGROUND color */
}
/* Horizontal Events
------------------------------------------------------------------------*/

/* resizable */
 .fc-event-hori .ui-resizable-e {
    top: 0 !important;
    /* importants override pre jquery ui 1.7 styles */
    right: -3px !important;
    width: 20px !important;
    height: 100% !important;
    cursor: e-resize;
}
.fc-event-hori .ui-resizable-w {
    top: 0 !important;
    left: -3px !important;
    width: 2px !important;
    height: 100% !important;
    cursor: w-resize;
}
/* stylish circle */
 .stylish {
    display:block;
    width:100px;
    height:100px;
    border-radius:66px;
    border:4px double #ccc;
    font-size:20px;
    color:#666;
    line-height:100px;
    text-align:center;
    text-decoration:none;
    text-shadow:0 1px 0 #fff;
    background:#ddd
}
.stylish:hover {
    border:4px double #bbb;
    color:#aaa;
    text-decoration:none;
    background:#e6e6e6
}
/* Alert Transitions
------------------------------------------------------------------------*/
 .growl-animated {
    -webkit-transition: all 0.5s ease-in-out;
    -moz-transition: all 0.5s ease-in-out;
    -o-transition: all 0.5s ease-in-out;
    -ms-transition: all 0.5s ease-in-out;
    transition: all 0.5s ease-in-out;
}
/* Vertical Center
------------------------------------------------------------------------*/
 .vcenter {
    display: inline-block;
    vertical-align: middle;
}
/* Notification Item
------------------------------------------------------------------------*/
 .notification-item {
    min-width: 250px !important;
    border-radius: 0px !important;
    border-top-width: 1px !important;
    border-left-width: 0px !important;
    border-right-width: 0px !important;
    border-bottom-width: 1px !important;
}
#notification-list > li:first-child {
    border-top-width: 0px !important;
    border-radius: 0px !important;
}
#notification-list > li:last-child {
    border-bottom-width: 0px !important;
    border-radius: 0px !important;
}
/* BALL BOUNCING
------------------------------------------------------------------------*/
 #ballWrapper {
    width: 150px;
    height: 300px;
    position: relative;
    display: inline-block;
    /*left: 20%;
    top: 5%;
	margin-left: -0px;*/
    z-index: 100;
    -webkit-transform: scale(1);
    -moz-transform: scale(1);
    -ms-transform: scale(1);
    -o-transform: scale(1);
    transform: scale(1);
    -webkit-transition: all 5s linear 0s;
    -moz-transition: all 5s linear 0s;
    transition: all 5s linear 0s;
    cursor: pointer;
    -webkit-animation: appear 4s ease-out;
}
/*#ballWrapper:active {
    -webkit-transform: scale(2);
    z-index: 999;
    -moz-transform: scale(0);
    -ms-transform: scale(0);
    -o-transform: scale(0);
    transform: scale(0);
    cursor: pointer;
}*/
 @-webkit-keyframes appear {
    0% {
        -webkit-transform: scale(0);
        -moz-transform: scale(0);
        -ms-transform: scale(0);
        -o-transform: scale(0);
        transform: scale(0);
    }
    100% {
        -webkit-transform: scale(1);
        -moz-transform: scale(1);
        -ms-transform: scale(1);
        -o-transform: scale(1);
        transform: scale(1);
        cursor: pointer;
    }
}
#ball {
    width: 150px;
    height: 150px;
    border-radius: 75px;
    background-color: white;
    /*background: -moz-linear-gradient(top,  rgba(187,187,187,1) 0%, rgba(119,119,119,1) 99%);
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(187,187,187,1)), color-stop(99%,rgba(119,119,119,1)));
	background: -webkit-linear-gradient(top,  rgba(187,187,187,1) 0%,rgba(119,119,119,1) 99%);
	background: -o-linear-gradient(top,  rgba(187,187,187,1) 0%,rgba(119,119,119,1) 99%);
	background: -ms-linear-gradient(top,  rgba(187,187,187,1) 0%,rgba(119,119,119,1) 99%);
	background: linear-gradient(top,  rgba(187,187,187,1) 0%,rgba(119,119,119,1) 99%);
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#bbbbbb', endColorstr='#777777',GradientType=0 );
    /*background: url("http://new.mycollegehomepage.com/images/svg/money.svg"); */
    box-shadow: inset 0 -5px 15px rgba(255, 255, 255, 0.4), inset -2px -1px 40px rgba(0, 0, 0, 0.4), 0 0 0px #000;
    border: 0px solid grey;
    background-position: center;
    background-repeat: no-repeat;
    position: absolute;
    top: 0;
    z-index: 11;
    -webkit-animation: jump 1.5s infinite;
    -moz-animation: jump 1s infinite;
    -o-animation: jump 1s infinite;
    -ms-animation: jump 1s infinite;
    animation: jump 1s infinite;
    cursor: pointer;
}
/*#ball::after {
	content: "";
	width: 80px; 
	height: 40px; 
	position: absolute;
	left: 30px;
	top: 10px;
	z-index: 10;
	background: url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/Pgo8c3ZnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgd2lkdGg9IjEwMCUiIGhlaWdodD0iMTAwJSIgdmlld0JveD0iMCAwIDEgMSIgcHJlc2VydmVBc3BlY3RSYXRpbz0ibm9uZSI+CiAgPGxpbmVhckdyYWRpZW50IGlkPSJncmFkLXVjZ2ctZ2VuZXJhdGVkIiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIgeDE9IjAlIiB5MT0iMCUiIHgyPSIwJSIgeTI9IjEwMCUiPgogICAgPHN0b3Agb2Zmc2V0PSIwJSIgc3RvcC1jb2xvcj0iI2U4ZThlOCIgc3RvcC1vcGFjaXR5PSIxIi8+CiAgICA8c3RvcCBvZmZzZXQ9IjElIiBzdG9wLWNvbG9yPSIjZThlOGU4IiBzdG9wLW9wYWNpdHk9IjEiLz4KICAgIDxzdG9wIG9mZnNldD0iMTAwJSIgc3RvcC1jb2xvcj0iI2ZmZmZmZiIgc3RvcC1vcGFjaXR5PSIwIi8+CiAgPC9saW5lYXJHcmFkaWVudD4KICA8cmVjdCB4PSIwIiB5PSIwIiB3aWR0aD0iMSIgaGVpZ2h0PSIxIiBmaWxsPSJ1cmwoI2dyYWQtdWNnZy1nZW5lcmF0ZWQpIiAvPgo8L3N2Zz4=);
	background: -moz-linear-gradient(top,  rgba(232,232,232,1) 0%, rgba(232,232,232,1) 1%, rgba(255,255,255,0) 100%);
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(232,232,232,1)), color-stop(1%,rgba(232,232,232,1)), color-stop(100%,rgba(255,255,255,0)));
	background: -webkit-linear-gradient(top,  rgba(232,232,232,1) 0%,rgba(232,232,232,1) 1%,rgba(255,255,255,0) 100%);
	background: -o-linear-gradient(top,  rgba(232,232,232,1) 0%,rgba(232,232,232,1) 1%,rgba(255,255,255,0) 100%);
	background: -ms-linear-gradient(top,  rgba(232,232,232,1) 0%,rgba(232,232,232,1) 1%,rgba(255,255,255,0) 100%);
	background: linear-gradient(top,  rgba(232,232,232,1) 0%,rgba(232,232,232,1) 1%,rgba(255,255,255,0) 100%);
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#e8e8e8', endColorstr='#00ffffff',GradientType=0 );
	border-radius: 40px / 20px;	
}*/
 #ballShadow {
    position: absolute;
    left: 50%;
    bottom: 0;
    z-index: 10;
    margin-left: 50px;
    width: 60px;
    height: 75px;
    background: rgba(20, 20, 20, .1);
    box-shadow: 0px 0 20px 35px rgba(20, 20, 20, .1);
    border-radius: 30px / 40px;
    -webkit-transform: scaleY(.3);
    -moz-transform: scaleY(.3);
    -ms-transform: scaleY(.3);
    -o-transform: scaleY(.3);
    transform: scaleY(.3);
    -webkit-animation: shrink 1.5s infinite;
    -moz-animation: shrink 1.5s infinite;
    -o-animation: shrink 1.5s infinite;
    -ms-animation: shrink 1.5s infinite;
    animation: shrink 1.5s infinite;
}
/* Animations */
 @-webkit-keyframes jump {
    0% {
        top: 0;
        -webkit-animation-timing-function: ease-in;
    }
    40% {
    }
    50% {
        top: 140px;
        height: 140px;
        -webkit-animation-timing-function: ease-out;
    }
    55% {
        top: 160px;
        height: 120px;
        border-radius: 70px / 60px;
        -webkit-animation-timing-function: ease-in;
    }
    65% {
        top: 120px;
        height: 140px;
        border-radius: 70px;
        -webkit-animation-timing-function: ease-out;
    }
    95% {
        top: 0;
        -webkit-animation-timing-function: ease-in;
    }
    100% {
        top: 0;
        -webkit-animation-timing-function: ease-in;
    }
}
@-moz-keyframes jump {
    0% {
        top: 0;
        -moz-animation-timing-function: ease-in;
    }
    40% {
    }
    50% {
        top: 140px;
        height: 140px;
        -moz-animation-timing-function: ease-out;
    }
    55% {
        top: 160px;
        height: 120px;
        border-radius: 70px / 60px;
        -moz-animation-timing-function: ease-in;
    }
    65% {
        top: 120px;
        height: 140px;
        border-radius: 70px;
        -moz-animation-timing-function: ease-out;
    }
    95% {
        top: 0;
        -moz-animation-timing-function: ease-in;
    }
    100% {
        top: 0;
        -moz-animation-timing-function: ease-in;
    }
}
@-o-keyframes jump {
    0% {
        top: 0;
        -o-animation-timing-function: ease-in;
    }
    40% {
    }
    50% {
        top: 140px;
        height: 140px;
        -o-animation-timing-function: ease-out;
    }
    55% {
        top: 160px;
        height: 120px;
        border-radius: 70px / 60px;
        -o-animation-timing-function: ease-in;
    }
    65% {
        top: 120px;
        height: 140px;
        border-radius: 70px;
        -o-animation-timing-function: ease-out;
    }
    95% {
        top: 0;
        -o-animation-timing-function: ease-in;
    }
    100% {
        top: 0;
        -o-animation-timing-function: ease-in;
    }
}
@-ms-keyframes jump {
    0% {
        top: 0;
        -ms-animation-timing-function: ease-in;
    }
    40% {
    }
    50% {
        top: 140px;
        height: 140px;
        -ms-animation-timing-function: ease-out;
    }
    55% {
        top: 160px;
        height: 120px;
        border-radius: 70px / 60px;
        -ms-animation-timing-function: ease-in;
    }
    65% {
        top: 120px;
        height: 140px;
        border-radius: 70px;
        -ms-animation-timing-function: ease-out;
    }
    95% {
        top: 0;
        -ms-animation-timing-function: ease-in;
    }
    100% {
        top: 0;
        -ms-animation-timing-function: ease-in;
    }
}
@keyframes jump {
    0% {
        top: 0;
        animation-timing-function: ease-in;
    }
    50% {
        top: 140px;
        height: 140px;
        animation-timing-function: ease-out;
    }
    55% {
        top: 160px;
        height: 120px;
        border-radius: 70px / 60px;
        animation-timing-function: ease-in;
    }
    65% {
        top: 120px;
        height: 140px;
        border-radius: 70px;
        animation-timing-function: ease-out;
    }
    95% {
        top: 0;
        animation-timing-function: ease-in;
    }
    100% {
        top: 0;
        animation-timing-function: ease-in;
    }
}
@-webkit-keyframes shrink {
    0% {
        bottom: 0;
        margin-left: -30px;
        width: 60px;
        height: 75px;
        background: rgba(20, 20, 20, .1);
        box-shadow: 0px 0 20px 35px rgba(20, 20, 20, .1);
        border-radius: 30px / 40px;
        -webkit-animation-timing-function: ease-in;
    }
    50% {
        bottom: 30px;
        margin-left: -10px;
        width: 20px;
        height: 5px;
        background: rgba(20, 20, 20, .3);
        box-shadow: 0px 0 20px 35px rgba(20, 20, 20, .3);
        border-radius: 20px / 20px;
        -webkit-animation-timing-function: ease-out;
    }
    100% {
        bottom: 0;
        margin-left: -30px;
        width: 60px;
        height: 75px;
        background: rgba(20, 20, 20, .1);
        box-shadow: 0px 0 20px 35px rgba(20, 20, 20, .1);
        border-radius: 30px / 40px;
        -webkit-animation-timing-function: ease-in;
    }
}
@-moz-keyframes shrink {
    0% {
        bottom: 0;
        margin-left: -30px;
        width: 60px;
        height: 75px;
        background: rgba(20, 20, 20, .1);
        box-shadow: 0px 0 20px 35px rgba(20, 20, 20, .1);
        border-radius: 30px / 40px;
        -moz-animation-timing-function: ease-in;
    }
    50% {
        bottom: 30px;
        margin-left: -10px;
        width: 20px;
        height: 5px;
        background: rgba(20, 20, 20, .3);
        box-shadow: 0px 0 20px 35px rgba(20, 20, 20, .3);
        border-radius: 20px / 20px;
        -moz-animation-timing-function: ease-out;
    }
    100% {
        bottom: 0;
        margin-left: -30px;
        width: 60px;
        height: 75px;
        background: rgba(20, 20, 20, .1);
        box-shadow: 0px 0 20px 35px rgba(20, 20, 20, .1);
        border-radius: 30px / 40px;
        -moz-animation-timing-function: ease-in;
    }
}
@-o-keyframes shrink {
    0% {
        bottom: 0;
        margin-left: -30px;
        width: 60px;
        height: 75px;
        background: rgba(20, 20, 20, .1);
        box-shadow: 0px 0 20px 35px rgba(20, 20, 20, .1);
        border-radius: 30px / 40px;
        -o-animation-timing-function: ease-in;
    }
    50% {
        bottom: 30px;
        margin-left: -10px;
        width: 20px;
        height: 5px;
        background: rgba(20, 20, 20, .3);
        box-shadow: 0px 0 20px 35px rgba(20, 20, 20, .3);
        border-radius: 20px / 20px;
        -o-animation-timing-function: ease-out;
    }
    100% {
        bottom: 0;
        margin-left: -30px;
        width: 60px;
        height: 75px;
        background: rgba(20, 20, 20, .1);
        box-shadow: 0px 0 20px 35px rgba(20, 20, 20, .1);
        border-radius: 30px / 40px;
        -o-animation-timing-function: ease-in;
    }
}
@-ms-keyframes shrink {
    0% {
        bottom: 0;
        margin-left: -30px;
        width: 60px;
        height: 75px;
        background: rgba(20, 20, 20, .1);
        box-shadow: 0px 0 20px 35px rgba(20, 20, 20, .1);
        border-radius: 30px / 40px;
        -ms-animation-timing-function: ease-in;
    }
    50% {
        bottom: 30px;
        margin-left: -10px;
        width: 20px;
        height: 5px;
        background: rgba(20, 20, 20, .3);
        box-shadow: 0px 0 20px 35px rgba(20, 20, 20, .3);
        border-radius: 20px / 20px;
        -ms-animation-timing-function: ease-out;
    }
    100% {
        bottom: 0;
        margin-left: -30px;
        width: 60px;
        height: 75px;
        background: rgba(20, 20, 20, .1);
        box-shadow: 0px 0 20px 35px rgba(20, 20, 20, .1);
        border-radius: 30px / 40px;
        -ms-animation-timing-function: ease-in;
    }
}
@keyframes shrink {
    0% {
        bottom: 0;
        margin-left: -30px;
        width: 60px;
        height: 75px;
        background: rgba(20, 20, 20, .1);
        box-shadow: 0px 0 20px 35px rgba(20, 20, 20, .1);
        border-radius: 30px / 40px;
        animation-timing-function: ease-in;
    }
    50% {
        bottom: 30px;
        margin-left: -10px;
        width: 20px;
        height: 5px;
        background: rgba(20, 20, 20, .3);
        box-shadow: 0px 0 20px 35px rgba(20, 20, 20, .3);
        border-radius: 20px / 20px;
        animation-timing-function: ease-out;
    }
    100% {
        bottom: 0;
        margin-left: -30px;
        width: 60px;
        height: 75px;
        background: rgba(20, 20, 20, .1);
        box-shadow: 0px 0 20px 35px rgba(20, 20, 20, .1);
        border-radius: 30px / 40px;
        animation-timing-function: ease-in;
    }
}</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


 

<div class="container text-center">
      <h1>THANK YOU FOR SHOPPING</h1>

    <p class="lead">visit again... and have fun!!!!!!</p>
         <hr>
    <div class="row">
        <div class="col-sm-6 col-sm-offset-3">
          
        </div>
    </div>
    <br></br>
    <div class="row text-center">
        <div class="flip-container" ontouchstart="this.classList.toggle('hover');">
            <div class="flipper">
                <div class="front">
                    <div id="ballWrapper">
                        <div id="ball">
                            <img class="center-block img-responsive" src="http://new.mycollegehomepage.com/images/svg/bag.svg" alt="THANKYOU" width="75" style="margin: 25px 0px 0px 37px;">
                        </div>
                        <div id="ballShadow"></div>
                    </div>
                </div>
                 <div class="back">
                    <div class="panel panel-warning">
                        <div class="panel-heading">
                             <h3 class="panel-title">THANK YOU</h3>
 
                        </div>
                        <div class="panel-body">
                            <p class="text-center"><i class="fa fa-check fa-3x text-warning"></i> 
                            </p>THANK YOU FOR SHOPPING!!!!!</div>
                    </div>
                </div>
            </div>
        </div> 
        <div class="flip-container" ontouchstart="this.classList.toggle('hover');">
            <div class="flipper">
                <div class="front">
                    <div id="ballWrapper" class="animated-lg">
                        <div id="ball">
                            <img class="center-block img-responsive" src="http://new.mycollegehomepage.com/images/svg/money.svg" alt="THANKYOU" width="90" style="margin: 25px 0px 0px 30px;">
                        </div>
                        <div id="ballShadow"></div>
                    </div>
                </div>
                <div class="back">
                    <div class="panel panel-success">
                        <div class="panel-heading">
                             <h3 class="panel-title">THANK YOU</h3>
 
                        </div>
                        <div class="panel-body">
                            <p class="text-center"><i class="fa fa-money fa-3x text-success"></i> 
                            </p>THANK YOU FOR SHOPPING!!!!!</div>
                    </div>
                </div>
            </div>
        </div> 
        <div class="flip-container" ontouchstart="this.classList.toggle('hover');">
            <div class="flipper">
                <div class="front">
                    <div id="ballWrapper">
                        <div id="ball">
                            <img class="center-block img-responsive" src="http://new.mycollegehomepage.com/images/svg/book.svg" alt="THANKYOU" width="73" style="margin: 34px 0px 0px 38px;">
                        </div>
                        <div id="ballShadow"></div>
                    </div>
                </div>
                 <div class="back">
                    <div class="panel panel-danger">
                        <div class="panel-heading">
                             <h3 class="panel-title">THANK YOU</h3>

                        </div>
                        <div class="panel-body">
                            <p class="text-center"><i class="fa fa-book fa-3x text-danger"></i> 
                            </p>THANK YOU FOR SHOPPING!!!!!</div>
                    </div>
                </div>
            </div> 
        </div>
        <div class="flip-container" ontouchstart="this.classList.toggle('hover');">
            <div class="flipper">
                <div class="front">
                    <div id="ballWrapper">
                        <div id="ball">
                            <img class="center-block img-responsive" src="http://new.mycollegehomepage.com/images/svg/storage.svg" alt="THANKYOU" width="90" style="margin: 32px 0px 0px 30px;">
                        </div>
                        <div id="ballShadow"></div>
                    </div>
                </div>
                <div class="back">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                             <h3 class="panel-title">THANK YOU</h3>

                        </div>
                        <div class="panel-body">
                            <p class="text-center"><i class="fa fa-file-o fa-3x text-info"></i> 
                            </p>THANK YOU FOR SHOPPING!!!!!</div>
                    </div> 
                </div>
            </div>
        </div>
        <div class="flip-container hidden-sm hidden-xs" ontouchstart="this.classList.toggle('hover');">
            <div class="flipper">
                <div class="front">
                    <div id="ballWrapper">
                        <div id="ball">
                            <img class="center-block img-responsive" src="http://new.mycollegehomepage.com/images/svg/ipad.svg" alt="THANKYOU" width="80" style="margin: 32px 0px 0px 45px;">
                        </div>
                        <div id="ballShadow"></div>
                    </div>
                </div>
                 <div class="back">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                             <h3 class="panel-title">THANK YOU</h3>

                        </div>
                        <div class="panel-body">
                            <p class="text-center"><i class="fa fa-mobile fa-3x text-default"></i> 
                            </p>THANK YOU FOR SHOPPING!!!!!</div>
                            
                          
			<br>
                    </div> 
                </div>
            </div>
        </div>
    </div>

  <a href="home" role="btn btn-success"> Visit Again For More Shopping </a> <br>

   

</body>
</html>