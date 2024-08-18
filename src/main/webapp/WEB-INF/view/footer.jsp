<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Footer</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <style>
        /* Footer styles */
        .footer {
            background-color: #007bff;
            color: #000;
            padding: 20px 0;
            text-align: center;
            box-shadow: 0 -4px 6px rgba(0, 0, 0, 0.1);
            position: relative;
            overflow: hidden;
        }

        .footer .created-by {
            font-weight: bold;
            color: white;
            animation: slide-in 2s ease-out;
        }

        .footer a {
            color: #007bff;
            transition: color 0.3s ease;
        }

        .footer a:hover {
            color: #0056b3;
        }

        @keyframes slide-in {
            0% {
                transform: translateY(100%);
                opacity: 0;
            }
            100% {
                transform: translateY(0);
                opacity: 1;
            }
        }

        .footer .wave {
            position: absolute;
            top: -100px;
            left: 50%;
            width: 200%;
            height: 200px;
            background-color: #007bff;
            transform: translateX(-50%);
            border-radius: 50%;
            animation: wave-animation 4s infinite ease-in-out;
            z-index: -1;
        }

        @keyframes wave-animation {
            0%, 100% {
                transform: translateX(-50%) translateY(0);
            }
            50% {
                transform: translateX(-50%) translateY(-20px);
            }
        }

    </style>
</head>
<body>
    <footer class="footer">
        <div class="wave"></div>
        <div class="container">
            <p class="created-by">Created By: Shubham Pawar</p>
        </div>
    </footer>
</body>
</html>
