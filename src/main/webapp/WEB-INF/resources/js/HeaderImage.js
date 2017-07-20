/**
 * handling the header image
 */
var backgroundImage;
var currentImage;
var interval;
var images = ['res/images/headers/header_0.jpg','res/images/headers/header_1.jpg','res/images/headers/header_2.jpg','res/images/headers/header_3.jpg'];
var titles = [];
var availableLanguages = ['fr', 'en', 'mg'];
var offres = [];
var offre;
var offreDescription;
var currentAlpha;
var alphaInterval;

var slideIndex = 0;

function carousel(){
	var i;
	var x = document.getElementsByClassName("HeaderImage");
	for (i = 0; i < x.length; i++) {
		x[i].style.display = "none";
	}
	slideIndex++;
	if (slideIndex > x.length) {slideIndex = 1}
	x[slideIndex-1].style.display = "block";
	setTimeout(carousel, 5000);
}

/*var everythingLoaded = setInterval(function() {
	if (/loaded|complete/.test(document.readyState)) {
		clearInterval(everythingLoaded);
		init(); // this is the function that gets called when everything is loaded
	}
}, 10);*/

window.onload = function initializeHeader(){
	currentImage = 0;
	currentAlpha = 0;
	registerAllText();
	//changeLanguage('en');
	//applyBrowserLanguage();
	initializeBody();
	var languageBtn = document.getElementById("menu_language");
	languageBtn.addEventListener('click', function(e) {
		//document.getElementById("language_dropdown")
		//alert('coucouuu');
	});
	carousel()
}

function registerAllText(){
	titles.push(document.getElementById('circuit_west'));
	titles.push(document.getElementById('circuit_south'));
	titles.push(document.getElementById('circuit_east'));
	titles.push(document.getElementById('circuit_north'));
	titles.push(document.getElementById('type_cultural'));
	titles.push(document.getElementById('type_relax'));
	titles.push(document.getElementById('type_freestyle'));
	/*document.getElementById('language_french').addEventListener('click', function(e) {
		changeLanguage('fr');
	});
	document.getElementById('language_english').addEventListener('click', function(e) {
		changeLanguage('en');
	});
	document.getElementById('language_malagasy').addEventListener('click', function(e) {
		changeLanguage('mg');
	});*/
}

window.onresize = function windowResized(){
	//initializeBody();
}

function scheduleHeaderImageChanging(){
	interval = setInterval(function() {
		changeHeaderImage();
	}, 5000);
	alphaInterval = setInterval(function() {
		incrementAlpha();
	}, 100);
}

function incrementAlpha(){
	currentAlpha += 0.1;
	offre.style.opacity = currentAlpha;
	offreDescription.style.opacity = currentAlpha;
}

function changeHeaderImage(){
	window.clearInterval(interval);
	window.clearInterval(alphaInterval);
	currentAlpha = 0;
	offre.style.opacity = currentAlpha;
	offreDescription.style.opacity = currentAlpha;
	currentImage = (currentImage + 1) % images.length;
	backgroundImage.src = images[currentImage];
	offre.innerHTML = offres[currentImage].split("=")[0];
	offreDescription.innerHTML = offres[currentImage].split("=")[1];
	scheduleHeaderImageChanging();
}

function initializeBody(){
	var centerContainer = document.getElementById('center_container');
	var centerContainerRect = centerContainer.getBoundingClientRect();
	var offresContainer = document.getElementById('offres_container');
	/*var offresRect = offresContainer.getBoundingClientRect();
	offresContainer.style.height = ((offresRect.right - offresRect.left) / 3) + 'px';

	var destinationsLine1 = document.getElementById('destinations_line1');
	var destinationsLine2 = document.getElementById('destinations_line2');
	destinationsLine1.style.height = ((destinationsLine1.getBoundingClientRect().right - offresRect.left) / 2) + 'px';
	destinationsLine2.style.height = ((destinationsLine2.getBoundingClientRect().right - offresRect.left) / 2) + 'px';*/

	//centerContainer.style.right = centerContainer.clientWidth - centerContainer.offsetWidth + "px";
}

function getHeight(){
	var body = document.body,
	html = document.documentElement;
	var height = Math.max( body.scrollHeight, body.offsetHeight, 
			html.clientHeight, html.scrollHeight, html.offsetHeight );
	return height;
}

function applyBrowserLanguage(){
	var userLang = navigator.language || navigator.userLanguage;
	for(i = 0; i < availableLanguages.length; i++){
		if(availableLanguages[i] === userLang){
			changeLanguage(userLang);
			break;
		}
	}
}

function changeLanguage(language){
	var xmlhttp;
	if(window.XMLHttpRequest){
		xmlhttp = new XMLHttpRequest();
	}else{
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function(){
		if(xmlhttp.readyState == 4){
			var json = xmlhttp.responseText;
			var obj = JSON.parse(json);
			var i = 0;
			for(var k in obj){
				var txt = document.getElementById(k);
				txt.innerHtml = obj[k];
				//alert(obj[k]);
			}
			for(i = 0; i < titles.length; i++) {
				titles[i].innerHTML = 'Test ' + i;
			}
			/*offres.length = 0;
			while(i < lines.length){
				offres.push(lines[i]);
				i++;
			}
			offre.innerHTML = offres[currentImage].split("=")[0];
			offreDescription.innerHTML = offres[currentImage].split("=")[1];*/
		}
	}
	xmlhttp.open('GET', 'res/language/' + language + '.txt', true);
	xmlhttp.send();
}