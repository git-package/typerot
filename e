<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Text Encoder</title>
    <script>
        function encodeText() {
            const input = document.getElementById("inputText").value;
            const mapping = {
                a: "$)",
                b: "($",
                c: "$(“",
                d: ")$",
                e: "()",
                f: "$/",
                g: "/$",
                h: "//",
                i: "$\",
                j: "\$",
                k: "\\",
                l: "#$",
                m: "$#",
                n: "&$",
                o: "$&",
                p: "$$",
                q: "@$",
                r: "$@",
                s: "@@",
                t: "##",
                u: ")(",
                v: "'$",
                w: "$'",
                x: "$:",
                y: ":$",
                z: "&&"
            };

            const encoded = input.split('').map(char => {
                return mapping[char] ? mapping[char] : char;
            }).join('|');

            document.getElementById("outputText").innerText = encoded;
        }
    </script>
</head>
<body>
    <h1>Text Encoder</h1>
    <textarea id="inputText" rows="4" cols="50" placeholder="Enter text to encode..."></textarea><br>
    <button onclick="encodeText()">Encode</button>
    <h2>Encoded Output:</h2>
    <p id="outputText"></p>
</body>
</html>
