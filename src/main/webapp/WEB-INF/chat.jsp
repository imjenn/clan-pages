<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<!-- CSS -->
	<link rel="stylesheet" type="text/css" href="/css/chat.css">
	
	<!-- Bootstrap -->
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<script src="/webjars/jquery/jquery.min.js"></script>
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
	
	<!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
   	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Hind&display=swap" rel="stylesheet">
    
    <!-- Icons -->
    <script src="https://use.fontawesome.com/b4a0ba9277.js"></script>
    
	<script type="application/javascript">
		let ws;
		
        function connect() {
            ws = new WebSocket("ws://localhost:8080/chat");
            ws.onmessage = function (e) {
                printMessage(e.data);
            }
            document.getElementById("connectButton").disabled = true;
            document.getElementById("connectButton").value = "Connected";
            document.getElementById("name").disabled = true;
        }

        function printMessage(data) {
            let messages = document.getElementById("messages");
            let messageData = JSON.parse(data);
            let newMessage = document.createElement("div");
            newMessage.innerHTML = messageData.name + ": " + messageData.message;
            messages.appendChild(newMessage);
        }

        function sendToGroupChat() {
            let messageText = document.getElementById("message").value;
            document.getElementById("message").value="";
            let name = document.getElementById("name").value;
            let messageObject = {
                name: name,
                message: messageText
            }
            ws.send(JSON.stringify(messageObject))
        }
    </script>
</head>
<body id="body">
	<div id="container">
		<h1 class="header"><a href="/">CLΛN<i class="fa fa-gamepad" aria-hidden="true"></i></a></h1>
		<div class="chat-body">
			<input type="text" id="name" placeholder="Enter your name to connect">
			<button id="connectButton" type="button" onclick="connect()"><i class="fa fa-plug" aria-hidden="true"></i></button>
			<!-- <input id="connectButton" type="button" value="Connect" onclick="connect()"> -->
			<div class="bot-msg">
				<div class="user">
					<span><i class="fa fa-user" aria-hidden="true"></i></span>
					<p class="bot-name">Bot</p>
				</div>
				<div>
					<p class="msg">Welcome to our chat!</p>
					<p class="msg">Start by saying hi to everyone!</p>
				</div>
			</div>
			<div id="messages"></div>
			<div class="message-section">
				<input type="text" id="message" placeholder="Type your message here">
				<button class="send-btn" onclick="sendToGroupChat()"><i class="fa fa-paper-plane-o" aria-hidden="true"></i></button>
			</div>
		</div>
		<!-- <input type="button" value="send" onclick="sendToGroupChat()"> -->
	</div>
</body>
</html>