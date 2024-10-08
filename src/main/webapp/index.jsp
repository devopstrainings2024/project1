<!doctype html>
<html>
<head>
    <title>DevOps Job Application form</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <style>
      html, body {
      min-height: 100%;
      }
     <!-- commemt -->
      body, div, form, input, select, p {
      padding: 0;
      margin: 0;
      outline: none;
      font-family: Roboto, Arial, sans-serif;
      font-size: 40px;
      color: #012;
      line-height: 29px;
      }
      h1 {
      position: absolute;
      margin: 0;
      font-size: 50px;
      color: #FFF;
      z-index: 2;
      }
      p.top-info {
      margin: 10px 0;
      }
      .testbox {
      display: flex;
      justify-content: center;
      align-items: center;
      height: inherit;
      padding: 20px;
      }
      form {
      width: 100%;
      padding: 20px;
      border-radius: 6px;
      background: #FFF;
      box-shadow: 0 0 25px 0 #000;
      }
     .banner {
      position: relative;
      height: 150px;
      background-image: url("/uploads/media/default/0001/02/fb57ab781c34da322c884532bfec751e843e36fc.jpeg");
      background-size: cover;
      display: flex;
      justify-content: center;
      align-items: center;
      text-align: center;
      }
      .banner::after {
      content: "";
      background-color: steelblue;
      position: absolute;
      width: 100%;
      height: 100%;
      }
      input, select, textarea {
      margin-bottom: 10px;
      border: 1px solid #EEE;
      border-radius: 3px;
      }
      input {
      width: calc(100% - 10px);
      padding: 5px;
      }
      input[type="date"] {
      padding: 4px 5px;
      }
      select {
      width: 100%;
      padding: 7px 0;
      background: transparent;
      }
      .item:hover p, .item:hover i, .question:hover p, .question label:hover, input:hover::placeholder {
      color: #1c87c9;
      }
      .item input:hover, .item select:hover {
      border: 1px solid transparent;
      box-shadow: 0 0 6px 0 #1c87c9;
      color: #1c87c9;
      }
      .item {
      position: relative;
      margin: 10px 0;
      }
      input[type="date"]::-webkit-inner-spin-button {
      display: none;
      }
      .item i, input[type="date"]::-webkit-calendar-picker-indicator {
      position: absolute;
      font-size: 40px;
      color: #a9a9a9;
      }
      .item i {
      right: 2%;
      top: 30px;
      z-index: 1;
      }
      [type="date"]::-webkit-calendar-picker-indicator {
      right: 1%;
      z-index: 2;
      opacity: 0;
      cursor: pointer;
      }
      input[type=radio]  {
      display: none;
      }
      label.radio {
      position: relative;
      display: inline-block;
      margin: 5px 20px 10px 0;
      cursor: pointer;
      }
      .question span {
      margin-left: 30px;
      }
      span.required {
      margin-left: 0;
      color: #FAEBE7;
      }
      label.radio:before {
      content: "";
      position: absolute;
      left: 0;
      width: 17px;
      height: 17px;
      border-radius: 50%;
      border: 2px solid #ccc;
      }
      input[type=radio]:checked + label:before, label.radio:hover:before {
      border: 2px solid #1c87c9;
      }
      label.radio:after {
      content: "";
      position: absolute;
      top: 6px;
      left: 5px;
      width: 8px;
      height: 4px;
      border: 3px solid #1c87c9;
      border-top: none;
      border-right: none;
      transform: rotate(-45deg);
      opacity: 0;
      }
      input[type=radio]:checked + label:after {
      opacity: 1;
      }
      .btn-block {
      margin-top: 10px;
      text-align: center;
      }
      button {
      width: auto;
      padding: 10px;
      border: none;
      border-radius: 5px;
      background: #000;
      font-size: 20px;
      font-weight: 900;
      color: #FAEBE7;
      cursor: pointer;
      }
      button:hover {
      background: #1e6fa0;
      }
      @media (min-width: 568px) {
      .name-item, .contact-item, .position-item {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      }
      .name-item input {
      width: calc(50% - 20px);
      }
      .contact-item .item, .position-item .item {
      width: calc(50% - 8px);
      }
      .contact-item input, .position-item input {
      width: calc(100% - 12px);
      }
      .position-item select {
      width: 100%;
      }
      }
    </style>
  </head>
  <body>
    <h1>Quiz: Identify the Version Control Tool</h1>
    <form>
        <p>Which of the following is a version control tool?</p>
        <input type="radio" id="git" name="tool" value="git">
        <label for="git">Git</label><br>
        <input type="radio" id="maven" name="tool" value="maven">
        <label for="maven">Maven</label><br>
        <input type="radio" id="jenkins" name="tool" value="jenkins">
        <label for="jenkins">Jenkins</label><br>
        <input type="radio" id="docker" name="tool" value="docker">
        <label for="docker">Docker</label><br>
        <input type="submit" value="Submit">
    </form>
    <p id="result"></p>

    <script>
        document.getElementById('quizForm').addEventListener('submit', function(event) {
            event.preventDefault();
            const selectedTool = document.querySelector('input[name="tool"]:checked');
            const result = document.getElementById('result');
            if (selectedTool) {
                if (selectedTool.value === 'git') {
                    result.textContent = 'Correct! Git is a version control tool.';
                } else {
                    result.textContent = 'Incorrect. The correct answer is Git.';
                }
            } else {
                result.textContent = 'Please select an option.';
            }
        });
    </script>
  </body>
</html>
