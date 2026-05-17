<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">
    <title>NexusShop | Futuristic E‑Commerce Experience</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700&family=Space+Grotesk:wght@400;500;600;700&display=swap" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            background: #050b14;
            font-family: 'Inter', sans-serif;
            color: #eef5ff;
            line-height: 1.5;
            scroll-behavior: smooth;
        }

        h1, h2, h3, h4, .logo, .btn, .price {
            font-family: 'Space Grotesk', sans-serif;
        }

        /* custom scroll */
        ::-webkit-scrollbar {
            width: 6px;
        }
        ::-webkit-scrollbar-track {
            background: #0f1725;
        }
        ::-webkit-scrollbar-thumb {
            background: #3b82f6;
            border-radius: 8px;
        }

        .container {
            max-width: 1300px;
            margin: 0 auto;
            padding: 0 24px;
        }

        /* glass header */
        header {
            background: rgba(8, 15, 26, 0.85);
            backdrop-filter: blur(16px);
            border-bottom: 1px solid rgba(59, 130, 246, 0.25);
            position: sticky;
            top: 0;
            z-index: 200;
        }

        .header-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 16px 0;
            gap: 20px;
            flex-wrap: wrap;
        }

        .logo {
            font-size: 28px;
            font-weight: 700;
            background: linear-gradient(135deg, #ffffff, #3b82f6);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            letter-spacing: -0.5px;
        }
        .logo span {
            background: linear-gradient(135deg, #60a5fa, #a855f7);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
        }

        nav ul {
            display: flex;
            gap: 28px;
            list-style: none;
        }
        nav ul li a {
            text-decoration: none;
            color: #cbd5e6;
            font-weight: 500;
            font-size: 0.95rem;
            transition: 0.2s;
            display: flex;
            align-items: center;
            gap: 6px;
        }
        nav ul li a i { font-size: 0.9rem; }
        nav ul li a:hover { color: #60a5fa; }

        .dropdown {
            position: relative;
        }
        .dropdown-content {
            position: absolute;
            top: 35px;
            left: -20px;
            background: rgba(18, 25, 40, 0.95);
            backdrop-filter: blur(12px);
            min-width: 200px;
            border-radius: 20px;
            padding: 12px 0;
            border: 1px solid rgba(59,130,246,0.3);
            opacity: 0;
            visibility: hidden;
            transition: 0.2s;
            z-index: 150;
        }
        .dropdown:hover .dropdown-content {
            opacity: 1;
            visibility: visible;
        }
        .dropdown-content a {
            padding: 10px 20px;
            color: #e2e8f0;
            font-size: 0.85rem;
        }
        .dropdown-content a:hover { background: rgba(59,130,246,0.2); color: white; }

        /* search modern */
        .search-bar {
            background: rgba(255,255,255,0.06);
            border: 1px solid rgba(59,130,246,0.4);
            border-radius: 48px;
            padding: 8px 18px;
            display: flex;
            align-items: center;
            width: 260px;
            backdrop-filter: blur(4px);
        }
        .search-bar input {
            background: transparent;
            border: none;
            color: white;
            width: 100%;
            outline: none;
            font-size: 0.85rem;
        }
        .search-bar input::placeholder { color: #7f8ea3; }
        .search-bar button { background: none; border: none; color: #60a5fa; cursor: pointer; }

        .header-icons {
            display: flex;
            align-items: center;
            gap: 20px;
        }
        .header-icons a {
            color: #e2e8f0;
            font-size: 1.25rem;
            position: relative;
            transition: 0.2s;
        }
        .header-icons a:hover { color: #60a5fa; }
        .cart-count {
            position: absolute;
            top: -8px;
            right: -12px;
            background: #3b82f6;
            font-size: 10px;
            font-weight: bold;
            width: 18px;
            height: 18px;
            border-radius: 30px;
            display: flex;
            align-items: center;
            justify-content: center;
            box-shadow: 0 0 6px #3b82f6;
        }
        .mobile-menu-btn {
            display: none;
            background: none;
            border: none;
            font-size: 26px;
            color: white;
            cursor: pointer;
        }

        /* HERO — futuristic */
        .hero {
            min-height: 85vh;
            display: flex;
            align-items: center;
            position: relative;
            overflow: hidden;
            background: radial-gradient(circle at 20% 30%, #0a1a2f, #03070f);
        }
        .hero::before {
            content: "";
            position: absolute;
            width: 100%;
            height: 100%;
            background: url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=2000&q=80') center/cover;
            opacity: 0.2;
            filter: blur(2px);
        }
        .hero-content {
            position: relative;
            max-width: 700px;
            z-index: 2;
        }
        .hero h1 {
            font-size: 4rem;
            font-weight: 700;
            line-height: 1.2;
            background: linear-gradient(to right, #fff, #90cdf4);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
        }
        .hero .glow-text {
            font-size: 1.2rem;
            color: #94a3b8;
            margin: 20px 0 32px;
        }
        .btn-group { display: flex; gap: 16px; flex-wrap: wrap; }
        .btn {
            padding: 12px 32px;
            border-radius: 40px;
            font-weight: 600;
            text-decoration: none;
            transition: 0.25s;
            display: inline-flex;
            align-items: center;
            gap: 8px;
            border: 1px solid transparent;
        }
        .btn-primary {
            background: linear-gradient(105deg, #3b82f6, #a855f7);
            color: white;
            box-shadow: 0 8px 18px rgba(59,130,246,0.3);
        }
        .btn-primary:hover { transform: translateY(-3px); filter: brightness(1.05); box-shadow: 0 14px 26px rgba(59,130,246,0.4); }
        .btn-outline {
            border-color: #60a5fa;
            color: #e0f2fe;
            background: rgba(255,255,255,0.03);
        }
        .btn-outline:hover { background: rgba(59,130,246,0.2); border-color: #3b82f6; transform: translateY(-2px); }

        /* section headers */
        .section-title {
            text-align: center;
            margin: 70px 0 40px;
        }
        .section-title h2 {
            font-size: 2.2rem;
            font-weight: 600;
            background: linear-gradient(135deg, #f0f9ff, #7aa2f7);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            display: inline-block;
        }
        .section-title p { color: #94a3b8; margin-top: 10px; }

        /* categories glass cards */
        .categories {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
            gap: 24px;
            margin-bottom: 60px;
        }
        .category-card {
            background: rgba(18, 28, 40, 0.6);
            backdrop-filter: blur(12px);
            border: 1px solid rgba(59,130,246,0.25);
            border-radius: 32px;
            padding: 28px 12px;
            text-align: center;
            transition: 0.25s;
        }
        .category-card:hover { transform: translateY(-8px); border-color: #3b82f6; background: rgba(20, 32, 48, 0.8); }
        .category-icon { font-size: 2.6rem; color: #60a5fa; margin-bottom: 14px; }
        .category-card h3 { font-size: 1.1rem; font-weight: 600; }
        .category-card p { font-size: 0.75rem; color: #8ba0bc; }

        /* product grid premium */
        .products {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(260px, 1fr));
            gap: 28px;
            margin-bottom: 70px;
        }
        .product-card {
            background: #0f1725;
            border-radius: 28px;
            overflow: hidden;
            transition: 0.25s;
            border: 1px solid #1e2a3a;
            box-shadow: 0 12px 24px -12px rgba(0,0,0,0.5);
        }
        .product-card:hover { transform: translateY(-6px); border-color: #3b82f6; box-shadow: 0 20px 30px -12px rgba(59,130,246,0.2); }
        .product-badge {
            position: absolute;
            top: 14px;
            left: 14px;
            background: #3b82f6;
            padding: 4px 12px;
            border-radius: 40px;
            font-size: 0.7rem;
            font-weight: bold;
            z-index: 2;
        }
        .product-img {
            width: 100%;
            height: 220px;
            object-fit: cover;
            transition: 0.3s;
        }
        .product-card:hover .product-img { transform: scale(1.02); }
        .product-info {
            padding: 18px 16px 22px;
            position: relative;
        }
        .product-info h3 { font-size: 1rem; font-weight: 600; margin-bottom: 8px; color: #eef5ff; }
        .price { font-weight: 700; font-size: 1.3rem; color: #90cdf4; margin: 8px 0; }
        .old-price { font-size: 0.85rem; color: #7f8ea3; text-decoration: line-through; margin-left: 8px; font-weight: normal; }
        .rating { color: #fbbf24; font-size: 0.8rem; margin-bottom: 14px; }
        .add-to-cart {
            width: 100%;
            background: rgba(59,130,246,0.2);
            border: 1px solid #3b82f6;
            border-radius: 40px;
            padding: 10px 0;
            font-weight: 600;
            color: white;
            cursor: pointer;
            transition: 0.2s;
        }
        .add-to-cart:hover { background: #3b82f6; border-color: #3b82f6; box-shadow: 0 0 10px #3b82f6; }

        /* deals section luminous */
        .deals {
            background: linear-gradient(120deg, #07111f, #0a1424);
            border-radius: 48px;
            margin: 40px 24px 70px;
            padding: 20px;
        }
        .deal-container {
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            background: rgba(5, 12, 22, 0.7);
            border-radius: 32px;
            backdrop-filter: blur(8px);
            overflow: hidden;
        }
        .deal-img {
            width: 50%;
            min-height: 320px;
            object-fit: cover;
        }
        .deal-content { width: 50%; padding: 40px; }
        .deal-timer { display: flex; gap: 16px; margin: 20px 0; }
        .timer-box {
            background: #0a1220;
            border-radius: 20px;
            padding: 12px 16px;
            text-align: center;
            min-width: 70px;
            border: 1px solid #2d3a5e;
        }
        .timer-box span:first-child { font-size: 1.8rem; font-weight: 700; color: #60a5fa; display: block; }
        .deal-price { font-size: 2rem; font-weight: 700; color: #facc15; margin: 16px 0; }
        .deal-old-price { text-decoration: line-through; color: #a0afc0; font-size: 1.1rem; margin-left: 12px; }
        .deal-discount { background: #ef4444; border-radius: 30px; padding: 2px 8px; font-size: 0.8rem; margin-left: 10px; }

        /* testimonials slider glass */
        .testimonials { margin: 70px 0; }
        .testimonial-slider {
            display: flex;
            gap: 28px;
            overflow-x: auto;
            scroll-snap-type: x mandatory;
            padding: 10px 0 20px;
        }
        .testimonial-card {
            min-width: 320px;
            background: rgba(15, 25, 40, 0.7);
            backdrop-filter: blur(12px);
            border-radius: 32px;
            padding: 28px;
            border: 1px solid rgba(59,130,246,0.3);
            scroll-snap-align: start;
        }
        .user-avatar { width: 48px; height: 48px; border-radius: 50%; object-fit: cover; margin-right: 14px; border: 2px solid #3b82f6; }

        /* newsletter modern */
        .newsletter {
            background: radial-gradient(circle at 70% 10%, #0a1a2f, #03070f);
            border-radius: 48px;
            margin: 20px 24px 60px;
            padding: 60px 30px;
            text-align: center;
            border: 1px solid #2d3a5e;
        }
        .newsletter-form {
            display: flex;
            max-width: 520px;
            margin: 30px auto 0;
            gap: 12px;
            flex-wrap: wrap;
        }
        .newsletter-form input {
            flex: 1;
            padding: 14px 24px;
            border-radius: 60px;
            border: none;
            background: #111a2a;
            color: white;
            outline: none;
            border: 1px solid #2d3a5e;
        }
        .newsletter-form button {
            background: linear-gradient(95deg, #3b82f6, #a855f7);
            padding: 14px 32px;
            border-radius: 60px;
            font-weight: bold;
            border: none;
            color: white;
            cursor: pointer;
        }

        /* footer */
        footer {
            background: #030811;
            border-top: 1px solid #1e2a44;
            padding: 60px 0 30px;
        }
        .footer-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(210px, 1fr));
            gap: 40px;
        }
        .footer-col h3 { margin-bottom: 20px; font-size: 1.2rem; position: relative; display: inline-block; }
        .footer-col h3::after { content: ''; height: 2px; width: 40px; background: #3b82f6; bottom: -6px; left: 0; position: absolute; }
        .footer-col ul li { margin-bottom: 12px; list-style: none; }
        .footer-col a { color: #9aaec9; text-decoration: none; transition: 0.2s; }
        .footer-col a:hover { color: #60a5fa; }
        .social-links { display: flex; gap: 14px; margin-top: 20px; }
        .social-links a { background: #0f1828; width: 38px; height: 38px; border-radius: 50%; display: inline-flex; align-items: center; justify-content: center; }

        @media (max-width: 860px) {
            .header-container { flex-direction: row; flex-wrap: wrap; }
            nav { display: none; width: 100%; order: 4; }
            nav.active { display: block; }
            nav ul { flex-direction: column; gap: 12px; padding: 20px 0; }
            .dropdown-content { position: static; opacity: 1; visibility: visible; display: none; background: transparent; border: none; padding-left: 20px; }
            .dropdown.active .dropdown-content { display: block; }
            .mobile-menu-btn { display: block; }
            .search-bar { width: 180px; }
            .deal-img, .deal-content { width: 100%; }
            .hero h1 { font-size: 2.5rem; }
        }
        @media (max-width: 580px) {
            .categories, .products { grid-template-columns: 1fr; }
            .container { padding: 0 18px; }
        }
    </style>
</head>
<body>

<header>
    <div class="container header-container">
        <a href="#" class="logo">NEXUS<span>SHOP</span></a>
        <nav id="mainNav">
            <ul>
                <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
                <li class="dropdown">
                    <a href="#"><i class="fas fa-th-large"></i> Categories <i class="fas fa-chevron-down"></i></a>
                    <div class="dropdown-content">
                        <a href="#"><i class="fas fa-mobile-alt"></i> Smartphones</a><a href="#"><i class="fas fa-laptop"></i> Laptops</a>
                        <a href="#"><i class="fas fa-tshirt"></i> Clothing</a><a href="#"><i class="fas fa-headphones"></i> Gadgets</a>
                        <a href="#"><i class="fas fa-shoe-prints"></i> Footwear</a><a href="#"><i class="fas fa-watch"></i> Accessories</a>
                    </div>
                </li>
                <li><a href="#"><i class="fas fa-fire"></i> Trending</a></li><li><a href="#"><i class="fas fa-percent"></i> Deals</a></li>
                <li><a href="#"><i class="fas fa-info-circle"></i> About</a></li><li><a href="#"><i class="fas fa-envelope"></i> Contact</a></li>
            </ul>
        </nav>
        <div class="search-bar"><input type="text" placeholder="Search ..."><button><i class="fas fa-search"></i></button></div>
        <div class="header-icons">
            <a href="#"><i class="far fa-user"></i></a><a href="#"><i class="far fa-heart"></i></a>
            <a href="#"><i class="fas fa-shopping-cart"></i><span class="cart-count">3</span></a>
            <button class="mobile-menu-btn" id="mobileMenuBtn"><i class="fas fa-bars"></i></button>
        </div>
    </div>
</header>

<section class="hero">
    <div class="container hero-content">
        <h1>Limitless <br>Digital Bazaar</h1>
        <p class="glow-text">Experience shopping like never before — futuristic deals, curated tech, style & speed.</p>
        <div class="btn-group"><a href="#" class="btn btn-primary">Shop Now <i class="fas fa-arrow-right"></i></a><a href="#" class="btn btn-outline">Explore Drops</a></div>
    </div>
</section>

<div class="container">
    <div class="section-title"><h2>Explore Collections</h2><p>Navigate through top-tier categories</p></div>
    <div class="categories">
        <div class="category-card"><div class="category-icon"><i class="fas fa-mobile-alt"></i></div><h3>Smartphones</h3><p>Flagship power</p></div>
        <div class="category-card"><div class="category-icon"><i class="fas fa-laptop"></i></div><h3>Laptops</h3><p>Work & play</p></div>
        <div class="category-card"><div class="category-icon"><i class="fas fa-tshirt"></i></div><h3>Clothing</h3><p>Streetwear</p></div>
        <div class="category-card"><div class="category-icon"><i class="fas fa-headphones"></i></div><h3>Gadgets</h3><p>Smart life</p></div>
        <div class="category-card"><div class="category-icon"><i class="fas fa-shoe-prints"></i></div><h3>Footwear</h3><p>Sneakers</p></div>
        <div class="category-card"><div class="category-icon"><i class="fas fa-watch"></i></div><h3>Accessories</h3><p>Finish look</p></div>
    </div>
</div>

<div class="container">
    <div class="section-title"><h2>Trending 🔥</h2><p>Most wanted this season</p></div>
    <div class="products">
        <div class="product-card"><span class="product-badge">New</span><img class="product-img" src="https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?w=600&auto=format" alt="iPhone"><div class="product-info"><h3>iPhone 14 Pro Max</h3><div class="price">$1,099 <span class="old-price">$1,199</span></div><div class="rating">★★★★★ <span>(128)</span></div><button class="add-to-cart">Add to Cart</button></div></div>
        <div class="product-card"><img class="product-img" src="https://images.unsplash.com/photo-1593642632823-8f785ba67e45?w=600&auto=format" alt="MacBook"><div class="product-info"><h3>MacBook Pro 14"</h3><div class="price">$1,999</div><div class="rating">★★★★☆ <span>(86)</span></div><button class="add-to-cart">Add to Cart</button></div></div>
        <div class="product-card"><span class="product-badge">-25%</span><img class="product-img" src="https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?w=600&auto=format" alt="Watch"><div class="product-info"><h3>Apple Watch Series 8</h3><div class="price">$349 <span class="old-price">$399</span></div><div class="rating">★★★★★ <span>(214)</span></div><button class="add-to-cart">Add to Cart</button></div></div>
        <div class="product-card"><img class="product-img" src="https://images.unsplash.com/photo-1542272604-787c3835535d?w=600&auto=format" alt="Sneakers"><div class="product-info"><h3>Nike Air Max 270</h3><div class="price">$150</div><div class="rating">★★★★☆ <span>(53)</span></div><button class="add-to-cart">Add to Cart</button></div></div>
        <div class="product-card"><img class="product-img" src="https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?w=600&auto=format" alt="Camera"><div class="product-info"><h3>Sony A7 IV</h3><div class="price">$2,499</div><div class="rating">★★★★★ <span>(42)</span></div><button class="add-to-cart">Add to Cart</button></div></div>
        <div class="product-card"><span class="product-badge">Bestseller</span><img class="product-img" src="https://images.unsplash.com/photo-1585386959984-a4155224a1ad?w=600&auto=format" alt="Perfume"><div class="product-info"><h3>Chanel No.5</h3><div class="price">$120</div><div class="rating">★★★★★ <span>(189)</span></div><button class="add-to-cart">Add to Cart</button></div></div>
        <div class="product-card"><img class="product-img" src="https://images.unsplash.com/photo-1551232864-3f0890e580d9?w=600&auto=format" alt="Backpack"><div class="product-info"><h3>Travel Backpack</h3><div class="price">$79 <span class="old-price">$99</span></div><div class="rating">★★★★☆ <span>(67)</span></div><button class="add-to-cart">Add to Cart</button></div></div>
        <div class="product-card"><img class="product-img" src="https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?w=600&auto=format" alt="Headphones"><div class="product-info"><h3>Sony WH-1000XM5</h3><div class="price">$399</div><div class="rating">★★★★★ <span>(156)</span></div><button class="add-to-cart">Add to Cart</button></div></div>
    </div>
</div>

<section class="deals">
    <div class="container" style="padding:0"><div class="section-title"><h2>⚡ Flash Sale ⚡</h2><p>Limited hours only</p></div>
    <div class="deal-container"><img class="deal-img" src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?w=1200&auto=format" alt="Macbook Air"><div class="deal-content"><h3>MacBook Air M2</h3><p>Ultraportable performance, all‑day battery life.</p><div class="deal-timer"><div class="timer-box"><span id="hours">24</span><span>Hrs</span></div><div class="timer-box"><span id="minutes">59</span><span>Min</span></div><div class="timer-box"><span id="seconds">59</span><span>Sec</span></div></div><div class="deal-price">$999 <span class="deal-old-price">$1,199</span><span class="deal-discount">-17%</span></div><p>🔥 Only <strong>12</strong> items left</p><button class="btn btn-primary" style="margin-top:20px;">Grab Deal</button></div></div></div>
</section>

<div class="container testimonials"><div class="section-title"><h2>Voices of Nexus</h2><p>Real feedback, real experiences</p></div>
<div class="testimonial-slider">
    <div class="testimonial-card"><div class="rating">★★★★★</div><p>"Mindblowing quality and insane delivery speed. The UI itself is a pleasure."</p><div class="user-info"><img class="user-avatar" src="https://randomuser.me/api/portraits/women/43.jpg"><div><div class="user-name">Sarah J.</div><div class="user-title">Tech Enthusiast</div></div></div></div>
    <div class="testimonial-card"><div class="rating">★★★★★</div><p>"Flash deals actually feel premium. Got my laptop in 2 days. Stellar support."</p><div class="user-info"><img class="user-avatar" src="https://randomuser.me/api/portraits/men/32.jpg"><div><div class="user-name">Michael T.</div><div class="user-title">Pro Gamer</div></div></div></div>
    <div class="testimonial-card"><div class="rating">★★★★★</div><p>"Modern, fast and great product curation. My go-to shop for gadgets."</p><div class="user-info"><img class="user-avatar" src="https://randomuser.me/api/portraits/women/65.jpg"><div><div class="user-name">Emma L.</div><div class="user-title">Fashion Insider</div></div></div></div>
    <div class="testimonial-card"><div class="rating">★★★★★</div><p>"NexusShop is next level – packaging feels luxurious, prices are fair."</p><div class="user-info"><img class="user-avatar" src="https://randomuser.me/api/portraits/men/75.jpg"><div><div class="user-name">David K.</div><div class="user-title">Content Creator</div></div></div></div>
</div></div>

<section class="newsletter"><div class="container"><h2>Join the Nexus Circle</h2><p>Subscribe and unlock 10% off your first order + early access to exclusive drops.</p><form class="newsletter-form"><input type="email" placeholder="Your email address" required><button type="submit">Subscribe →</button></form></div></section>

<footer><div class="container"><div class="footer-container"><div class="footer-col"><h3>NexusShop</h3><p>Beyond the ordinary — premium e‑commerce redefined.</p><div class="social-links"><a href="#"><i class="fab fa-facebook-f"></i></a><a href="#"><i class="fab fa-twitter"></i></a><a href="#"><i class="fab fa-instagram"></i></a><a href="#"><i class="fab fa-youtube"></i></a></div></div><div class="footer-col"><h3>Shop</h3><ul><li><a href="#">All Products</a></li><li><a href="#">New Arrivals</a></li><li><a href="#">On Sale</a></li><li><a href="#">Gift Cards</a></li></ul></div><div class="footer-col"><h3>Support</h3><ul><li><a href="#">Contact Us</a></li><li><a href="#">FAQs</a></li><li><a href="#">Shipping</a></li><li><a href="#">Returns</a></li></ul></div><div class="footer-col"><h3>Legal</h3><ul><li><a href="#">Privacy</a></li><li><a href="#">Terms</a></li><li><a href="#">Cookie Policy</a></li></ul><div class="payment-methods" style="display:flex; gap:10px; margin-top:14px;"><i class="fab fa-cc-visa fa-2x" style="opacity:0.7"></i><i class="fab fa-cc-mastercard fa-2x"></i><i class="fab fa-cc-paypal fa-2x"></i></div></div></div><div class="footer-bottom" style="text-align:center; margin-top: 40px; padding-top:20px; border-top:1px solid #1e2a44;">© 2026 NexusShop — Futuristic Commerce</div></div></footer>

<script>
    const mobileBtn = document.getElementById('mobileMenuBtn'), nav = document.getElementById('mainNav');
    mobileBtn?.addEventListener('click', () => nav.classList.toggle('active'));
    document.querySelectorAll('.dropdown').forEach(dd => { dd.addEventListener('click', (e) => { if(window.innerWidth <= 768) { e.preventDefault(); dd.classList.toggle('active'); } }); });
    function updateTimer() { let e = new Date(), t = new Date(); t.setHours(23,59,59,999); let n = t - e, h = Math.floor((n % 86400000) / 3600000), m = Math.floor((n % 3600000) / 60000), s = Math.floor((n % 60000) / 1000); document.getElementById('hours').innerText = String(h).padStart(2,'0'); document.getElementById('minutes').innerText = String(m).padStart(2,'0'); document.getElementById('seconds').innerText = String(s).padStart(2,'0'); } setInterval(updateTimer,1000); updateTimer();
    let cartCount = document.querySelector('.cart-count'); let cartVal = parseInt(cartCount.innerText);
    document.querySelectorAll('.add-to-cart').forEach(btn => { btn.addEventListener('click', function() { let original = this.innerText; this.innerText = '✓ Added'; this.style.background = '#10b981'; cartVal++; cartCount.innerText = cartVal; setTimeout(() => { this.innerText = original; this.style.background = ''; }, 900); }); });
    const slider = document.querySelector('.testimonial-slider'); let isDown=false, startX, scrollLeft; if(slider){ slider.addEventListener('mousedown',(e)=>{isDown=true; startX=e.pageX-slider.offsetLeft; scrollLeft=slider.scrollLeft;}); slider.addEventListener('mouseleave',()=>isDown=false); slider.addEventListener('mouseup',()=>isDown=false); slider.addEventListener('mousemove',(e)=>{if(!isDown) return; e.preventDefault(); const x=e.pageX-slider.offsetLeft; const walk=(x-startX)*1.5; slider.scrollLeft=scrollLeft-walk;});}
</script>
</body>
</html>
