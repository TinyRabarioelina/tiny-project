<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<link rel="SHORTCUT ICON" href="resources/images/logo.png">
<head>
<meta charset="UTF-8">
<title>Amazing Madagascar</title>
<meta name="description"
	content="AMadagascar est une agence de voyage vous accompagnant à travers votre voyage à Madagascar">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- CSS -->
<link rel="stylesheet" type="text/css" href="<c:url value="/res/css/MainStyle.css"/>">

<!-- Scripts -->
<script type="text/javascript" src="<c:url value="/res/js/jquery.js"/>"></script>
<script type="text/javascript" src="<c:url value="/res/js/HeaderImage.js"/>"></script>
<script type="text/javascript" src="<c:url value="/res/js/Main.js"/>"></script>
<script>
	if (/Android|webOS|iPhone|iPad|iPod|BlackBerry|BB|PlayBook|IEMobile|Windows Phone|Kindle|Silk|Opera Mini/i.test(navigator.userAgent)) {
		window.location.replace("mobile/home");
	}
</script>
</head>

<body>
	<!-- Menu -->
	<div class="MenuContainer">
		<div class="Menu">
			<img src="<c:url value="/res/images/old_logo.png"/>" id="home"
				style="display: block; max-height: 100%; width: auto; height: auto; cursor: pointer;">
			<div class="MenuSection" style="right: 48vw;">
				<span id="about" class="MenuTitle">About</span>
			</div>
			<div class="MenuSection" style="right: 36vw;">
				<span id="private" class="MenuTitle">Private Circuit</span>
			</div>
			<div class="MenuSection" style="right: 24vw;">
				<span id="contact" class="MenuTitle">Contact</span>
			</div>
			<div class="MenuSection" style="right: 12vw;">
				<span id="dating" class="MenuTitle">Dating</span>
			</div>
			<div class="MenuSection" id="menu_language" style="right: 0px;">
				<span id="language" class="MenuTitle">Language</span>
				<div class="MenuDropDown" id="language_dropdown">
					<span class="MenuDropDownCell">English</span> <span
						class="MenuDropDownCell">Français</span> <span
						class="MenuDropDownCell">Malagasy</span> <span
						class="MenuDropDownCell">Español</span>
				</div>
			</div>
		</div>
	</div>
	<!-- Corps -->
	<div id="body">
		<div id="body_with_marging" class="MainContainer">
			<div class="MainBody">
				<div id="center_container" class="CenterContainer">
					<div class="HeaderImageContainer">
						<img class="HeaderImage" src="<c:url value="/res/images/headers/header_0.jpg"/>"/>
						<img class="HeaderImage" src="<c:url value="/res/images/headers/header_1.jpg"/>" />
						<img class="HeaderImage" src="<c:url value="/res/images/headers/header_2.jpg"/>" />
						<img class="HeaderImage" src="<c:url value="/res/images/headers/header_3.jpg"/>" />
						<span class="HeaderText">Another vision of Holiday</span>
					</div>

					<!-- Destinations standard -->
					<div class="Paragraph">
						<span>Travel to the four corners of Madagascar</span>
					</div>
					<div style="width: 100%;" align="center">
						<div class="DestinationContainer">
							<div class="Destination" id="circuit_north"
								onclick="window.open('north','_self');"
								style="background-image: url('/res/images/north.jpg');">
								<div class="DestinationTextBackground"></div>
								<span id="circuit_north_text" class="DestinationText">North
									Circuit :</span> <img class="DestinationMarker"
									src="<c:url value="/res/images/marker.ico"/>" />
								<div class="DestinationDescription">
									<span class="DestinationDescriptionText">- For two
										persons</span> <span class="DestinationDescriptionText">- 7
										days and 6 nights</span> <span class="DestinationDescriptionText">-
										Breakfast</span> <span class="DestinationDescriptionText">-
										Diner</span> <span class="DestinationDescriptionText">- 300$</span>
								</div>
							</div>
							<div class="Destination" id="circuit_east"
								onclick="window.open('east','_self');"
								style="background-image: url('/res/images/east.jpg'); margin-left: 20px;">
								<div class="DestinationTextBackground"></div>
								<span id="circuit_east_text" class="DestinationText">East
									Circuit :</span> <img class="DestinationMarker"
									src="<c:url value="/res/images/marker.ico"/>" />
								<div class="DestinationDescription">
									<span class="DestinationDescriptionText">- For two
										persons</span> <span class="DestinationDescriptionText">- 7
										days and 6 nights</span> <span class="DestinationDescriptionText">-
										Breakfast</span> <span class="DestinationDescriptionText">-
										Diner</span> <span class="DestinationDescriptionText">- 300$</span>
								</div>
							</div>
						</div>
						<div class="DestinationContainer">
							<div class="Destination" id="circuit_west"
								onclick="window.open('west','_self');"
								style="background-image: url('/res/images/west.jpg');">
								<div class="DestinationTextBackground"></div>
								<span id="circuit_west_text" class="DestinationText">West
									Circuit :</span> <img class="DestinationMarker"
									src="<c:url value="/res/images/marker.ico"/>" />
								<div class="DestinationDescription">
									<span class="DestinationDescriptionText">- For two
										persons</span> <span class="DestinationDescriptionText">- 7
										days and 6 nights</span> <span class="DestinationDescriptionText">-
										Breakfast</span> <span class="DestinationDescriptionText">-
										Diner</span> <span class="DestinationDescriptionText">- 300$</span>
								</div>
							</div>
							<div class="Destination" id="circuit_south"
								onclick="window.open('south','_self');"
								style="background-image: url('/res/images/south.jpg'); margin-left: 20px;">
								<div class="DestinationTextBackground"></div>
								<span id="circuit_south_text" class="DestinationText">South
									Circuit :</span> <img class="DestinationMarker"
									src="<c:url value="/res/images/marker.ico"/>" />
								<div class="DestinationDescription">
									<span class="DestinationDescriptionText">- For two
										persons</span> <span class="DestinationDescriptionText">- 7
										days and 6 nights</span> <span class="DestinationDescriptionText">-
										Breakfast</span> <span class="DestinationDescriptionText">-
										Diner</span> <span class="DestinationDescriptionText">- 300$</span>
								</div>
							</div>
						</div>
					</div>

					<!-- Parcours à thème -->
					<div class="Paragraph">
						<span>Choose one of our themes</span>
					</div>
					<div class="DestinationContainer">
						<div class="Destination" id="circuit_cultural"
							style="background-image: url('/res/images/cultural.jpg');">
							<div class="DestinationTextBackground"></div>
							<span id="circuit_north_text" class="DestinationText">Cultural
								:</span>
						</div>
						<div class="Destination" id="circuit_relax"
							style="background-image: url('/res/images/relax.jpg'); margin-left: 20px;">
							<div class="DestinationTextBackground"></div>
							<span id="circuit_relax_text" class="DestinationText">Relax
								:</span>
						</div>
					</div>

					<div class="DestinationContainer">
						<div class="Destination" id="circuit_open"
							style="background-image: url('/res/images/freestyle.jpg');">
							<div class="DestinationTextBackground"></div>
							<span id="circuit_open_text" class="DestinationText">Open
								path :</span>
						</div>
					</div>

					<!-- Applications mobile -->
					<div class="Paragraph">
						<span>Use our mobile application</span>
					</div>

					<div class="DestinationContainer">
						<div class="Destination" id="apk"
							onclick="var link = document.createElement('a');link.download = 'amada.apk';link.href = 'amada.apk';document.body.appendChild(link);link.click();document.body.removeChild(link);"
							style="background-image: url('/res/images/android.jpg');"></div>
					</div>

					<div style="height: 100px;"></div>
				</div>
			</div>
		</div>
		<div class="Footer">
			<div style="height: 30px;"></div>
			<span class="FooterText">Amazing Madagascar, 01 rue
				Andrianampoinimerina<br>Tel: +261 32 00 000 00
			</span>
		</div>
	</div>
</body>
</html>