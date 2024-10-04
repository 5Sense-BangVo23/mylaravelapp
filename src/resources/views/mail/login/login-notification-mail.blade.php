<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Notification</title>
    <style>
        /* Reset styles */
        body, html {
            margin: 0;
            padding: 0;
            font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;
            line-height: 1.6;
            background-color: #f9f9f9;
            color: #333;
        }

        /* Container styles */
        .container {
            max-width: 600px;
            margin: 20px auto;
            background-color: #fff;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            padding: 30px;
            overflow: hidden;
        }

        /* Header styles */
        .header {
            text-align: center;
            padding-bottom: 20px;
            border-bottom: 1px solid #e0e0e0;
        }

        .header h1 {
            margin: 0;
            font-size: 28px;
            color: #3498db;
        }

        /* Content styles */
        .content {
            padding: 20px 0;
        }

        .content p {
            margin: 10px 0;
            font-size: 16px;
            color: #555;
        }

        /* Footer styles */
        .footer {
            text-align: center;
            padding-top: 20px;
            font-size: 12px;
            color: #aaa;
            border-top: 1px solid #e0e0e0;
        }

        .footer p {
            margin: 0;
        }

        /* Responsive styles */
        @media only screen and (max-width: 600px) {
            .container {
                padding: 15px;
            }

            .header h1 {
                font-size: 24px;
            }

            .content p {
                font-size: 14px;
            }

            .footer {
                font-size: 10px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>Hello, {{ $name }}!</h1>
        </div>
        <div class="content">
            <p>You have successfully logged in to your account on {{ $loginTime }}.</p>
            <p>For security reasons, please remember to log out when you're done.</p>
        </div>
        <div class="footer">
            <p>This email was sent to {{ $email }}. If you received this email by mistake, please ignore it.</p>
        </div>
    </div>
</body>
</html>
