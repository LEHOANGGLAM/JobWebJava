/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


var firebaseConfig = {
  apiKey: "AIzaSyDS26cd4ZoKSzt1AP9i1F_ijhWkLjJ94XY",
  authDomain: "online-chat-d4269.firebaseapp.com",
  databaseURL: "https://online-chat-d4269-default-rtdb.firebaseio.com",
  projectId: "online-chat-d4269",
  storageBucket: "online-chat-d4269.appspot.com",
  messagingSenderId: "730890693569",
  appId: "1:730890693569:web:f143df95b13ca906c11d40",
  measurementId: "G-XBGLNCLSSL"
};
firebase.initializeApp(firebaseConfig);
const db = firebase.database();
const username = prompt("Please Tell Us Your Name");

document.getElementById("message-form").addEventListener("submit", sendMessage);

function sendMessage(e) {
  e.preventDefault();

  // get values to be submitted
  const timestamp = Date.now();
  const messageInput = document.getElementById("message-input");
  const message = messageInput.value;

  // clear the input box
  messageInput.value = "";

  //auto scroll to bottom
  document
    .getElementById("messages")
    .scrollIntoView({ behavior: "smooth", block: "end", inline: "nearest" });

  // create db collection and send in the data
  db.ref("messages/" + timestamp).set({
    username,
    message,
  });
}

const fetchChat = db.ref("messages/");
fetchChat.on("child_added", function (snapshot) {
  const messages = snapshot.val();
  const message = `<li class=${
    username === messages.username ? "sent" : "receive"
  }><span>${messages.username}: </span>${messages.message}</li>`;
  // append the message on the page
  document.getElementById("messages").innerHTML += message;
});