<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Auto Notification Logout</title>
</head>
<body>
    <div class="container">
        <div class="header">
            <h>Auto Notification Logout</h>
        </div>
        <div class="content">
            <p> {{ $user->name }},</p>
            <p>You have been automatically logged out of your account. If you did not perform this action, please contact us immediately.</p>
        </div>
        <div class="footer">
            <p>&copy; {{ date('Y') }} {{ config('app.name') }}. All rights reserved.</p>
        </div>
    </div>
</body>
</html>
