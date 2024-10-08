<!doctype html>
<html>
<head>
    <title>DevOps Job Application form</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
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
