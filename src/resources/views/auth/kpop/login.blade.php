<x-kpop-layout>
    <x-slot name="title">Kpop Auth</x-slot>
    <x-slot name="meta">
        <meta name="description" content="Kpop Dashboard">
        <meta property="og:description" content="Kpop Dashboard" />
        <meta property="og:url" content="http://localhost:8000/kpop/login" />
        <meta property="og:path" content="kpop/dashboard" />
        <meta property="og:image" content="http://localhost:8000/images/favicons/favicon-32x32.png" />
        <meta name="csrf-token" content="{{ csrf_token() }}">
    </x-slot>
    
    <x-slot name="head">
        <style>
            body {
                background-color: #f0f0f0;
                font-family: 'Arial', sans-serif;
            }

            main {
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                background: url('http://localhost:8000/images/kpop_background.jpg') no-repeat center center fixed;
                background-size: cover;
                padding: 20px;
            }

            .login-container {
                background-color: rgba(255, 255, 255, 0.9);
                padding: 40px;
                border-radius: 15px;
                box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
                text-align: center;
                max-width: 400px;
                width: 100%;
                opacity: 0; /* Initial opacity for fade-in */
                transform: translateY(20px); /* Initial position for slide effect */
                animation: fadeInUp 0.5s forwards; /* Fade-in and slide-up animation */
            }

            @keyframes fadeInUp {
                to {
                    opacity: 1; /* Final opacity */
                    transform: translateY(0); /* Final position */
                }
            }

            h1 {
                color: #ff4081;
                font-size: 2.5rem;
                margin-bottom: 20px;
                animation: bounce 1s infinite; /* Adding bounce animation to the heading */
            }

            @keyframes bounce {
                0%, 20%, 50%, 80%, 100% {
                    transform: translateY(0);
                }
                40% {
                    transform: translateY(-10px);
                }
                60% {
                    transform: translateY(-5px);
                }
            }

            .input-group {
                margin-bottom: 20px;
            }

            .input-group input {
                width: 100%;
                padding: 10px;
                border: 2px solid #ff4081;
                border-radius: 10px;
                font-size: 1rem;
                outline: none;
                transition: border-color 0.3s, transform 0.3s; /* Add transition for transform */
            }

            .input-group input:focus {
                border-color: #ff80ab;
                transform: scale(1.02); /* Scale effect on focus */
            }

            .login-button {
                background-color: #ff4081;
                color: white;
                border: none;
                padding: 10px 20px;
                border-radius: 10px;
                font-size: 1.2rem;
                cursor: pointer;
                transition: background-color 0.3s, transform 0.3s; /* Add transition for transform */
            }

            .login-button:hover {
                background-color: #ff80ab;
                transform: translateY(-3px); /* Bounce effect on hover */
            }

            .footer {
                margin-top: 20px;
                font-size: 0.9rem;
                color: #555;
            }

        </style>
    </x-slot>
    
    <main>
        <div class="login-container">
            <h1>Login</h1>
            <form method="POST" action="{{ route('kpop.post.login') }}">
                @csrf 
                <div class="input-group">
                    <input type="text" name="email" placeholder="Email" required>
                </div>
                <div class="input-group">
                    <input type="password" name="password" placeholder="Password" required>
                </div>
                <button type="submit" class="login-button">Login</button>
            </form>
            <div class="footer">
            </div>
        </div>
    </main>
</x-kpop-layout>
