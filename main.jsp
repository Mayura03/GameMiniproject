<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Game Page</title>
</head>
<body>
    <h1>WELCOME <%=request.getAttribute("username")%>!</h1>
    <p class="a">Click your move, submit and let the showdown begin!<br> Battle it out, score by score, until one triumphs with a resounding 3.<br></p>
    <p class="moto">Your LUCK in your CLICK !</p>
    <h1 class="box">Your score=<%= request.getAttribute("uscore")%> | System's score=<%= request.getAttribute("cscore")%> </h1>
    <h1><%= (request.getAttribute("result") != null) ? request.getAttribute("result") : "" %></h1>
    <form method="post" action="MainServlet?user=<%= request.getAttribute("username")%>">
        <div class="wholebox">
            <div class="row">
                <div class="column">
                    <img src="im/sn.gif" alt="Snow" style="width:40%">
                </div>
                <div class="column">
                    <img src="https://media2.giphy.com/media/v1.Y2lkPTc5MGI3NjExaGR4aGFpcWlnZWNlM2w1Y2ltb25iajZ2cDBtb2hvZWljNjM4cXZjNyZlcD12MV9naWZzX3NlYXJjaCZjdD1n/MagjwsUK2vunGimNXT/giphy.webp" alt="water" style="width:50%">
                </div>
                <div class="column">
                    <img src="https://media.tenor.com/7a1G16xlDY8AAAAi/pistol-joypixels.gif" alt="Mountains" style="width:50%">
                </div>
            </div>
        </div><br>
        <div class="imageGallery">
            <input type="radio" id="snake" name="gps" value="1">
            <input type="radio" id="water" name="gps" value="2">
            <input type="radio" id="gun" name="gps" value="3">
            <input type="hidden" id="uscore" name="uscore" value="<%= request.getAttribute("uscore")%>">
            <input type="hidden" id="cscore" name="cscore" value="<%= request.getAttribute("cscore")%>">
        </div>
        <center><button type="submit">SUBMIT</button></center>
    </form>
</body>
<style>
.imageGallery {
         display: flex;
         flex-wrap: wrap;
         gap: 16rem;
         justify-content: center;  
         margin-top:20px;
         margin-left:30px;
        
         }
         
         .moto{
            font-size:30px;
            text-align:center;
            font-weight:bold;
         }

         body {
         background-image:url('https://wallpapers.com/images/high/cartoon-sky-background-2n6tiaxbu27a1etx.webp');      
         background-repeat: no-repeat;
         background-attachment: fixed;
         background-size: cover;
         width:100%;
}
         
 button{
   margin-top:70px;
  margin-bottom:30px;
  margin-left:40px;
   
    width: 100px; /* Set the desired width */
    height: 40px; /* Set the desired height */
    background-color: #3c3c3c; /* Set the background color */
    color: white; /* Set the text color */
    border: none;
    border-radius: 15px; /* Set half of the button height to make it oval */
    cursor: pointer;
  
  }
  h1{
  /* margin-left:550px; */
  text-align:center;}
  .box{
  border: 1px solid black;
            padding: 1px;
            margin: 10px;
            
            margin-left:520px;
            border-radius: 10px;
            width:520px;
           
            background: rgba(0, 0, 0, 0.0);
  }
  .wholebox{
           border: 2px solid black;
           padding: 1px;
            border-radius: 10px;
            width:1000px;
            height:200px;
/*             background: rgba(0, 0, 0, 0.0); */
            background:white;
            margin-left:260px;
  }
  .a{
    text-align:center;
    font-size:20px;
  }
  .gif-container {
            margin-top: 20px;
            text-align: center;
            position: relative;}
  .snake{
      margin-left:1px;
      margin-right:100px;
       }
  * {
  box-sizing: border-box;
  }

  .column {
  float: left;
  width: 33.33%;
  padding: 5px;
  }

/* Clearfix (clear floats) */
.row::after {
  content: "";
  clear: both;
 }
 .row{
 margin-top:50px;
 margin-left:170px;
 }
 
 input[type="radio"] {
    width: 30px; /* Set the desired width */
    height: 30px; /* Set the desired height */
    appearance: none;
    border-radius: 50%;
    border: 2px solid black; /* Set the desired border color */
    outline: none;
    margin-right: 5px;
  }

  input[type="radio"]:checked {
    background-color: #113547; /* Set the desired background color when checked */
  }
</style>
</html>
