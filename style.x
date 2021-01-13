* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
//Vars
$body-width: 1000px;
$nav-height: 60px;
$primary: #28e;
$secondary: #e14;
$accent: complement($primary);
$accent2: complement($secondary);
$bgcolour: #2a2c30;
$bgcolour2: linear-gradient(to bottom right,$accent,$accent2);

@function neutral ($a,$b:3) {
  @if $b == 1 {
		@return desaturate(lighten($a,25%),70%);
	}
	@if $b == 2 {
		@return desaturate(lighten($a,15%),70%);
	}
	@if $b == 3 {
		@return desaturate($a,70%);
	}
	@if $b == 4 {
		@return desaturate(darken($a,15%),70%);
	}
	@if $b == 5 {
		@return desaturate(darken($a,25%),70%);
	}
}
//TODO
//- Add button styling DONE(ish)
//- Tweak typography
//- Add images
//- Add simple grid

html, body {
  font-family: 'Nunito Sans', sans-serif;
  color: #333;
  font-size: 16px;
}

p {
  line-height: 1.6;
  max-width: 50em;
}

button,input {
  font-family: Hind, sans-serif;
  font-size: 1rem;
  outline: none;
}

.wrap {
  margin: 0 auto;
  max-width: $body-width;
}

.nav {
  position: fixed;
  display: flexbox;
  justify-content: center;
  align-items: center;
  z-index: 3;
  height: 60px;
  width: 100%;
  transition: 300ms ease;
}

.brand {
  float: left;
  line-height: 60px;
  color: white;
  font-weight: 500;
  padding-left: 1rem;
  span {
    font-size: .9em;
    font-weight: 700;
  }
  img {
    vertical-align: middle;
    height: calc(#{$nav-height} - 1rem);
    margin-right: .5rem;
  }
}

.top-menu {
  display: flexbox;
  justify-content: center;
  align-items: center;
  width: 100%;
  @media screen and (min-width: 640px) {
    display: block;
  }
  position: relative;
  transition: 200ms ease;
  font-weight: 300;
  //position: absolute;
  height: $nav-height;
  li {
    display: block;
    float: left;
    height: 60px;
    a {
      display: block;
      height: 60px;
      line-height: 60px;
      text-decoration: none;
      color: #fff;
      padding: 0 1em;
      &:hover {
        background: linear-gradient(to bottom,rgba(black,0.1),rgba(black,0));
        //border-top: 5px solid white;
        //border-bottom: 2px solid white;
      }
    }
  }
}

.mobile-open {
  display: block;
}

.hamburger-btn {
  @media screen and (min-width: 640px) {
    display: none;
  }
	float: right;
	display: block;
  border: none;
  background: transparent;
  color: #fff;
	height: calc(#{$nav-height} - 1rem);
	width: calc(#{$nav-height} - 1rem);
	margin: 0.5rem 0.5rem 0 0;
	padding: 0;
	position: relative;
&:hover {
  background: rgba(black,0.1);
}
	.hamburger-line {
		height: 2px;
		width: calc(#{$nav-height} - 2rem);
		background: #fff;
		display: block;
		position: absolute;
		left: calc(0.5rem - 1px);
		transition: transform 150ms ease-in,
			top 150ms ease-out 150ms,
			bottom 150ms ease-out 150ms,
			opacity 150ms ease 75ms;
		&:first-child {
			top: 0.75rem;
		}
		&:nth-child(2) {
			top: calc(50% - 1px);
		}
		&:last-child {
			bottom: 0.75rem;
		}
	}
}

.hamburger-cross {
	.hamburger-line {
		transition: transform 150ms ease-out 150ms,
			top 150ms ease-in,
			bottom 150ms ease-in,
			opacity 150ms ease 75ms;
		&:first-child {
			transform: rotate(45deg);
			top: calc(50% - 1px);
		}
		&:nth-child(2) {
			top: calc(50% - 1px);
			opacity: 0;
		}
		&:last-child {
			transform: rotate(-45deg);
			bottom: calc(50% - 1px);
		}
	}
}

.scroll {
  background: #222429;
  box-shadow: 0 1px 4px rgba(black,0.2);
  .top-menu li a, .brand {
    color: white;
  }
  .hamburger-line {
    background: #000;
  }
}

.hero {
  position: relative;
  z-index: 1;
  height: 100vh;
  max-height: 1080px;
  background-image: url('./assets/images/bg.jpg');
  background-size: cover;
  background-attachment: fixed;
  background-position: center;
  color: #fff;
  display: table;
  width: 100%;
  text-align: center;
  text-shadow: 1px 2px 4px rgba(#000,0.2);
  &:after {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background: $bgcolour;
    opacity: 0.97;
    z-index: -1;
  }
  h1 {
    font-size: 4em;
    margin-bottom: 1rem;
    
  }
  p {
    font-size: 2em;
    max-width: 80%;
    margin-left: auto;
    margin-right: auto;
    font-weight: 300;
  }
  .content {
    display: table-cell;
    vertical-align: middle;
  }
}

h1,h2,p {
  margin: 1em 0;
}

h2 {
  font-size: 2rem;
  line-height: 0.5;
}

a {
  color: $secondary;
  text-decoration: none;
  &:hover {
    text-decoration: underline;
  }
}

%clearfix {
  &:after {
    content: "";
    display: table;
    clear: both;
  }
}

.row, .tab-row {
  @extend %clearfix;
    display: block;
    @extend .wrap;
  }

.tab-row {
  display: table;
  height: 100%;
  vertical-align: middle;
}

.main {
  background: #f8f8f8;
  .row, .tab-row {
    min-height: 200px;
    &:before, &:after{
      content: '';
      display: table;
    }
  }
  section {
    padding: 0 1rem;
    min-height: 400px;
    height: 62vh;
  }
}
.feature {
  background-image: url('./assets/images/bg2.jpg');
  background-attachment: fixed;
  background-size: cover;
  background-position: center;
  position: relative;
  z-index: 1;
  color: #fff;
  text-align: center;
  &:after {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background: $bgcolour2;
    opacity: 0.9;
    z-index: -1;
  }
}

.footer {
  background: neutral($primary,3);
  color: #ddd;
  padding: 2rem;
  li {
    line-height: 1.5;
  }
  a {
    color: #aaa;
  }
  hr {
    max-width: $body-width;
    border: 0;
    height: 1px;
    background: neutral($primary,2);
  }
}

%col {
  width: 100%;
  @media screen and (min-width: 640px) {
    float: left;
  }
  .tab-row>& {
    display: table-cell;
    vertical-align: middle;
    height: 100%;
    float: none;
  }
}

.col-4 {
  @extend %col;
  @media screen and (min-width: 640px) {
    width: 33%;
  }
}

.col-6 {
  @extend %col;
  @media screen and (min-width: 640px) {
    width: 50%;
  }
}

.col-12 {
  @extend %col;
  //width: 100%;
}

button.cta {
  padding: 0.75em 1.5em;
  background: white;
  color: black;
  border: none;
  cursor: pointer;
  transition: 200ms ease;
  box-shadow: 0 1px 2px rgba(black,0.2);
  border-radius: 2px;
  &:hover {
    color: $secondary;
    box-shadow: 0 0.25em 10px rgba(black,0.2);
  }
}