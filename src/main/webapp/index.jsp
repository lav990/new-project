<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NexusShop - Modern E-Commerce</title>
    <link rel="stylesheet" href="[cdnjs.cloudflare.com](https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css)">
    <link href="[fonts.googleapis.com](https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@300;400;500;600;700&family=Inter:wght@300;400;500&display=swap)" rel="stylesheet">
    <style>
        :root {
            --primary: #6366f1;
            --primary-dark: #4f46e5;
            --secondary: #0ea5e9;
            --dark: #0f172a;
            --light: #f8fafc;
            --gray: #64748b;
            --gray-light: #e2e8f0;
            --success: #10b981;
            --warning: #f59e0b;
            --danger: #ef4444;
            --accent: #8b5cf6;
            --surface: #ffffff;
            --shadow: 0 4px 20px rgba(0, 0, 0, 0.08);
            --radius: 12px;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Inter', sans-serif;
            color: var(--dark);
            background-color: var(--light);
            line-height: 1.6;
            overflow-x: hidden;
        }

        h1, h2, h3, h4 {
            font-family: 'Space Grotesk', sans-serif;
            font-weight: 700;
        }

        .container {
            width: 100%;
            max-width: 1440px;
            margin: 0 auto;
            padding: 0 24px;
        }

        /* Header - Glass Morphism */
        header {
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(20px);
            -webkit-backdrop-filter: blur(20px);
            border-bottom: 1px solid rgba(255, 255, 255, 0.2);
            position: sticky;
            top: 0;
            z-index: 1000;
            box-shadow: 0 2px 30px rgba(99, 102, 241, 0.1);
        }

        .header-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 16px 0;
        }

        .logo {
            display: flex;
            align-items: center;
            gap: 12px;
            text-decoration: none;
        }

        .logo-icon {
            width: 36px;
            height: 36px;
            background: linear-gradient(135deg, var(--primary), var(--accent));
            border-radius: 10px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-weight: bold;
            font-size: 18px;
        }

        .logo-text {
            font-family: 'Space Grotesk', sans-serif;
            font-size: 28px;
            font-weight: 700;
            background: linear-gradient(135deg, var(--primary), var(--accent));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        /* Navigation - Floating Menu */
        .nav-menu {
            display: flex;
            gap: 8px;
            background: rgba(248, 250, 252, 0.9);
            padding: 8px;
            border-radius: 16px;
            border: 1px solid var(--gray-light);
        }

        .nav-item {
            padding: 10px 20px;
            text-decoration: none;
            color: var(--dark);
            font-weight: 500;
            border-radius: 12px;
            transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
            position: relative;
            overflow: hidden;
        }

        .nav-item:hover {
            background: white;
            color: var(--primary);
            box-shadow: var(--shadow);
            transform: translateY(-2px);
        }

        .nav-item.active {
            background: var(--primary);
            color: white;
            box-shadow: 0 4px 12px rgba(99, 102, 241, 0.3);
        }

        /* Search - Modern Bar */
        .search-container {
            flex: 0 1 400px;
            position: relative;
        }

        .search-bar {
            width: 100%;
            padding: 14px 20px 14px 48px;
            border: 2px solid var(--gray-light);
            border-radius: 50px;
            font-size: 16px;
            transition: all 0.3s;
            background: white;
        }

        .search-bar:focus {
            outline: none;
            border-color: var(--primary);
            box-shadow: 0 0 0 3px rgba(99, 102, 241, 0.1);
        }

        .search-icon {
            position: absolute;
            left: 20px;
            top: 50%;
            transform: translateY(-50%);
            color: var(--gray);
        }

        /* Header Actions */
        .header-actions {
            display: flex;
            gap: 16px;
            align-items: center;
        }

        .action-btn {
            position: relative;
            width: 44px;
            height: 44px;
            border-radius: 12px;
            background: white;
            border: 1px solid var(--gray-light);
            color: var(--dark);
            cursor: pointer;
            transition: all 0.3s;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .action-btn:hover {
            background: var(--primary);
            color: white;
            border-color: var(--primary);
            transform: scale(1.05);
        }

        .badge {
            position: absolute;
            top: -6px;
            right: -6px;
            background: var(--danger);
            color: white;
            font-size: 11px;
            font-weight: 600;
            min-width: 20px;
            height: 20px;
            border-radius: 10px;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 0 6px;
        }

        /* Hero Section - Parallax Effect */
        .hero {
            position: relative;
            padding: 120px 0;
            background: linear-gradient(135deg, var(--dark) 0%, #1e293b 100%);
            overflow: hidden;
        }

        .hero::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: radial-gradient(circle at 20% 50%, rgba(99, 102, 241, 0.1) 0%, transparent 50%),
                        radial-gradient(circle at 80% 30%, rgba(14, 165, 233, 0.1) 0%, transparent 50%);
        }

        .hero-content {
            position: relative;
            z-index: 2;
            max-width: 650px;
        }

        .hero-tag {
            display: inline-block;
            background: rgba(99, 102, 241, 0.2);
            color: var(--primary);
            padding: 8px 20px;
            border-radius: 50px;
            font-weight: 600;
            margin-bottom: 24px;
            backdrop-filter: blur(10px);
            border: 1px solid rgba(99, 102, 241, 0.3);
        }

        .hero-title {
            font-size: 56px;
            line-height: 1.1;
            margin-bottom: 24px;
            background: linear-gradient(135deg, white, #c7d2fe);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .hero-description {
            font-size: 18px;
            color: #cbd5e1;
            margin-bottom: 40px;
            max-width: 540px;
        }

        .hero-actions {
            display: flex;
            gap: 20px;
        }

        .btn {
            padding: 16px 32px;
            border-radius: 12px;
            font-weight: 600;
            text-decoration: none;
            display: inline-flex;
            align-items: center;
            gap: 10px;
            transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
            border: none;
            cursor: pointer;
            font-family: 'Inter', sans-serif;
        }

        .btn-primary {
            background: linear-gradient(135deg, var(--primary), var(--accent));
            color: white;
            box-shadow: 0 4px 15px rgba(99, 102, 241, 0.4);
        }

        .btn-primary:hover {
            transform: translateY(-3px);
            box-shadow: 0 6px 25px rgba(99, 102, 241, 0.5);
        }

        .btn-secondary {
            background: rgba(255, 255, 255, 0.1);
            color: white;
            backdrop-filter: blur(10px);
            border: 1px solid rgba(255, 255, 255, 0.2);
        }

        .btn-secondary:hover {
            background: rgba(255, 255, 255, 0.2);
            transform: translateY(-3px);
        }

        /* Floating Product Cards */
        .hero-products {
            position: absolute;
            right: 5%;
            top: 50%;
            transform: translateY(-50%);
            width: 500px;
            height: 500px;
            pointer-events: none;
        }

        .floating-card {
            position: absolute;
            background: white;
            border-radius: var(--radius);
            padding: 20px;
            box-shadow: var(--shadow);
            animation: float 6s ease-in-out infinite;
            pointer-events: auto;
            cursor: pointer;
            transition: all 0.3s;
        }

        .floating-card:hover {
            transform: scale(1.05) rotate(2deg);
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.15);
        }

        .floating-card:nth-child(1) {
            top: 10%;
            right: 10%;
            animation-delay: 0s;
        }

        .floating-card:nth-child(2) {
            top: 40%;
            right: 30%;
            animation-delay: 2s;
        }

        .floating-card:nth-child(3) {
            bottom: 15%;
            right: 15%;
            animation-delay: 4s;
        }

        @keyframes float {
            0%, 100% { transform: translateY(0px) rotate(0deg); }
            50% { transform: translateY(-20px) rotate(1deg); }
        }

        /* Categories - Card Grid */
        .section-header {
            text-align: center;
            margin: 100px 0 60px;
        }

        .section-title {
            font-size: 42px;
            margin-bottom: 16px;
            background: linear-gradient(135deg, var(--dark), var(--primary));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .section-subtitle {
            color: var(--gray);
            font-size: 18px;
            max-width: 700px;
            margin: 0 auto;
        }

        .categories-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
            gap: 30px;
            margin-bottom: 100px;
        }

        .category-card {
            background: white;
            border-radius: var(--radius);
            padding: 40px 30px;
            text-align: center;
            transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
            position: relative;
            overflow: hidden;
            border: 1px solid var(--gray-light);
        }

        .category-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            height: 4px;
            background: linear-gradient(90deg, var(--primary), var(--secondary));
            transform: scaleX(0);
            transition: transform 0.4s ease;
        }

        .category-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 25px 50px rgba(0, 0, 0, 0.1);
            border-color: transparent;
        }

        .category-card:hover::before {
            transform: scaleX(1);
        }

        .category-icon {
            width: 80px;
            height: 80px;
            margin: 0 auto 24px;
            background: linear-gradient(135deg, var(--light), white);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 32px;
            color: var(--primary);
            box-shadow: 0 10px 30px rgba(99, 102, 241, 0.15);
            transition: all 0.3s;
        }

        .category-card:hover .category-icon {
            transform: scale(1.1) rotate(5deg);
            background: linear-gradient(135deg, var(--primary), var(--accent));
            color: white;
        }

        /* Products - Masonry Grid */
        .products-masonry {
            column-count: 4;
            column-gap: 30px;
            margin-bottom: 100px;
        }

        .product-card {
            break-inside: avoid;
            background: white;
            border-radius: var(--radius);
            overflow: hidden;
            margin-bottom: 30px;
            transition: all 0.3s;
            border: 1px solid var(--gray-light);
        }

        .product-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 25px 50px rgba(0, 0, 0, 0.12);
            border-color: transparent;
        }

        .product-media {
            position: relative;
            overflow: hidden;
            height: 280px;
        }

        .product-image {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.5s ease;
        }

        .product-card:hover .product-image {
            transform: scale(1.05);
        }

        .product-badge {
            position: absolute;
            top: 20px;
            left: 20px;
            padding: 6px 16px;
            border-radius: 20px;
            font-size: 12px;
            font-weight: 600;
            color: white;
        }

        .badge-new { background: var(--success); }
        .badge-sale { background: var(--danger); }
        .badge-popular { background: var(--warning); }

        .product-actions {
            position: absolute;
            top: 20px;
            right: 20px;
            display: flex;
            flex-direction: column;
            gap: 10px;
            transform: translateX(50px);
            opacity: 0;
            transition: all 0.3s;
        }

        .product-card:hover .product-actions {
            transform: translateX(0);
            opacity: 1;
        }

        .product-action-btn {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            background: white;
            border: none;
            color: var(--dark);
            cursor: pointer;
            transition: all 0.3s;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }

        .product-action-btn:hover {
            background: var(--primary);
            color: white;
            transform: scale(1.1);
        }

        .product-info {
            padding: 24px;
        }

        .product-category {
            color: var(--gray);
            font-size: 12px;
            font-weight: 500;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            margin-bottom: 8px;
        }

        .product-title {
            font-size: 18px;
            font-weight: 600;
            margin-bottom: 12px;
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            overflow: hidden;
        }

        .product-price {
            display: flex;
            align-items: center;
            gap: 12px;
            margin-bottom: 20px;
        }

        .current-price {
            font-size: 20px;
            font-weight: 700;
            color: var(--primary);
        }

        .original-price {
            font-size: 16px;
            color: var(--gray);
            text-decoration: line-through;
        }

        .product-rating {
            display: flex;
            align-items: center;
            gap: 8px;
            margin-bottom: 20px;
        }

        .stars {
            color: var(--warning);
        }

        .rating-count {
            color: var(--gray);
            font-size: 14px;
        }

        .add-to-cart-btn {
            width: 100%;
            padding: 14px;
            background: var(--dark);
            color: white;
            border: none;
            border-radius: 8px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
        }

        .add-to-cart-btn:hover {
            background: var(--primary);
            transform: translateY(-2px);
        }

        /* Feature Showcase */
        .features {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
            margin-bottom: 100px;
        }

        .feature-card {
            background: white;
            border-radius: var(--radius);
            padding: 40px;
            text-align: center;
            border: 1px solid var(--gray-light);
            transition: all 0.3s;
        }

        .feature-card:hover {
            border-color: var(--primary);
            box-shadow: 0 15px 40px rgba(99, 102, 241, 0.1);
        }

        .feature-icon {
            width: 80px;
            height: 80px;
            margin: 0 auto 24px;
            background: linear-gradient(135deg, var(--primary-light), var(--primary));
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 32px;
            color: white;
        }

        /* Newsletter - Glass Effect */
        .newsletter-section {
            background: linear-gradient(135deg, var(--primary), var(--accent));
            padding: 80px 0;
            position: relative;
            overflow: hidden;
            margin-bottom: 100px;
        }

        .newsletter-section::before {
            content: '';
            position: absolute;
            width: 300px;
            height: 300px;
            background: rgba(255, 255, 255, 0.1);
            border-radius: 50%;
            top: -150px;
            right: -150px;
        }

        .newsletter-section::after {
            content: '';
            position: absolute;
            width: 200px;
            height: 200px;
            background: rgba(255, 255, 255, 0.1);
            border-radius: 50%;
            bottom: -100px;
            left: -100px;
        }

        .newsletter-content {
            position: relative;
            z-index: 2;
            text-align: center;
            color: white;
            max-width: 700px;
            margin: 0 auto;
        }

        .newsletter-form {
            display: flex;
            gap: 16px;
            margin-top: 40px;
            max-width: 500px;
            margin-left: auto;
            margin-right: auto;
        }

        .newsletter-input {
            flex: 1;
            padding: 16px 24px;
            border: 2px solid rgba(255, 255, 255, 0.3);
            border-radius: 12px;
            background: rgba(255, 255, 255, 0.1);
            color: white;
            font-size: 16px;
            backdrop-filter: blur(10px);
        }

        .newsletter-input::placeholder {
            color: rgba(255, 255, 255, 0.7);
        }

        .newsletter-input:focus {
            outline: none;
            border-color: white;
            background: rgba(255, 255, 255, 0.2);
        }

        /* Footer - Modern Design */
        footer {
            background: var(--dark);
            color: white;
            padding: 80px 0 40px;
        }

        .footer-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 60px;
            margin-bottom: 60px;
        }

        .footer-brand h3 {
            font-size: 28px;
            margin-bottom: 20px;
            background: linear-gradient(135deg, white, #c7d2fe);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .footer-description {
            color: #94a3b8;
            margin-bottom: 30px;
            line-height: 1.8;
        }

        .footer-social {
            display: flex;
            gap: 16px;
        }

        .social-link {
            width: 44px;
            height: 44px;
            border-radius: 12px;
            background: rgba(255, 255, 255, 0.05);
            display: flex;
            align-items: center;
            justify-content: center;
            color: #94a3b8;
            transition: all 0.3s;
        }

        .social-link:hover {
            background: var(--primary);
            color: white;
            transform: translateY(-3px);
        }

        .footer-links h4 {
            margin-bottom: 24px;
            font-size: 18px;
            color: white;
        }

        .footer-links ul {
            list-style: none;
        }

        .footer-links li {
            margin-bottom: 12px;
        }

        .footer-links a {
            color: #94a3b8;
            text-decoration: none;
            transition: all 0.3s;
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .footer-links a:hover {
            color: white;
            transform: translateX(5px);
        }

        .footer-links a i {
            font-size: 12px;
            opacity: 0;
            transition: all 0.3s;
        }

        .footer-links a:hover i {
            opacity: 1;
        }

        .footer-bottom {
            text-align: center;
            padding-top: 40px;
            border-top: 1px solid rgba(255, 255, 255, 0.1);
            color: #94a3b8;
            font-size: 14px;
        }

        /* Animations */
        @keyframes slideUp {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .animate {
            animation: slideUp 0.6s ease-out forwards;
        }

        /* Responsive Design */
        @media (max-width: 1200px) {
            .products-masonry {
                column-count: 3;
            }
            
            .hero-products {
                display: none;
            }
        }

        @media (max-width: 992px) {
            .products-masonry {
                column-count: 2;
            }
            
            .nav-menu {
                display: none;
            }
            
            .mobile-menu-btn {
                display: block;
            }
            
            .hero-title {
                font-size: 42px;
            }
        }

        @media (max-width: 768px) {
            .products-masonry {
                column-count: 1;
            }
            
            .newsletter-form {
                flex-direction: column;
            }
            
            .hero-actions {
                flex-direction: column;
                align-items: flex-start;
            }
            
            .section-title {
                font-size: 32px;
            }
        }

        @media (max-width: 576px) {
            .container {
                padding: 0 16px;
            }
            
            .hero {
                padding: 80px 0;
            }
            
            .hero-title {
                font-size: 32px;
            }
            
            .categories-grid {
                grid-template-columns: 1fr;
            }
        }

        /* Mobile Menu Toggle */
        .mobile-menu-btn {
            display: none;
            background: none;
            border: none;
            color: var(--dark);
            font-size: 24px;
            cursor: pointer;
            width: 44px;
            height: 44px;
            border-radius: 12px;
            transition: all 0.3s;
        }

        .mobile-menu-btn:hover {
            background: var(--gray-light);
        }

        @media (max-width: 992px) {
            .mobile-menu-btn {
                display: block;
            }
            
            .search-container {
                order: 3;
                flex: 1 0 100%;
                margin-top: 16px;
            }
            
            .header-container {
                flex-wrap: wrap;
            }
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header>
        <div class="container header-container">
            <a href="#" class="logo">
                <div class="logo-icon">N</div>
                <div class="logo-text">NexusShop</div>
            </a>
            
            <nav class="nav-menu">
                <a href="#" class="nav-item active"><i class="fas fa-home"></i> Home</a>
                <a href="#" class="nav-item"><i class="fas fa-th-large"></i> Categories</a>
                <a href="#" class="nav-item"><i class="fas fa-bolt"></i> Trending</a>
                <a href="#" class="nav-item"><i class="fas fa-fire"></i> Hot Deals</a>
                <a href="#" class="nav-item"><i class="fas fa-star"></i> New</a>
            </nav>
            
            <div class="search-container">
                <i class="fas fa-search search-icon"></i>
                <input type="text" class="search-bar" placeholder="Search products, brands, categories...">
            </div>
            
            <div class="header-actions">
                <button class="action-btn">
                    <i class="far fa-user"></i>
                </button>
                <button class="action-btn">
                    <i class="far fa-heart"></i>
                    <span class="badge">2</span>
                </button>
                <button class="action-btn">
                    <i class="fas fa-shopping-bag"></i>
                    <span class="badge">3</span>
                </button>
                <button class="mobile-menu-btn" id="mobileMenuBtn">
                    <i class="fas fa-bars"></i>
                </button>
            </div>
        </div>
    </header>

    <!-- Hero Section -->
    <section class="hero">
        <div class="container">
            <div class="hero-content">
                <span class="hero-tag">Summer Collection 2026</span>
                <h1 class="hero-title">Elevate Your Digital Lifestyle</h1>
                <p class="hero-description">Discover cutting-edge technology and premium fashion curated for the modern enthusiast. Experience seamless shopping with exclusive deals and priority access.</p>
                <div class="hero-actions">
                    <a href="#" class="btn btn-primary">
                        <i class="fas fa-shopping-bag"></i>
                        Shop Collection
                    </a>
                    <a href="#" class="btn btn-secondary">
                        <i class="fas fa-play-circle"></i>
                        How It Works
                    </a>
                </div>
            </div>
            
            <!-- Floating Product Cards -->
            <div class="hero-products">
                <div class="floating-card">
                    <div class="product-image" style="
                        width: 120px;
                        height: 120px;
                        background: linear-gradient(135deg, #667eea, #764ba2);
                        border-radius: 12px;
                        margin-bottom: 12px;
                    "></div>
                    <h4 style="margin-bottom: 8px;">AirPods Pro</h4>
                    <p style="color: var(--primary); font-weight: 600;">$249</p>
                </div>
                <div class="floating-card">
                    <div class="product-image" style="
                        width: 120px;
                        height: 120px;
                        background: linear-gradient(135deg, #f093fb, #f5576c);
                        border-radius: 12px;
                        margin-bottom: 12px;
                    "></div>
                    <h4 style="margin-bottom: 8px;">Apple Watch</h4>
                    <p style="color: var(--primary); font-weight: 600;">$399</p>
                </div>
                <div class="floating-card">
                    <div class="product-image" style="
                        width: 120px;
                        height: 120px;
                        background: linear-gradient(135deg, #4facfe, #00f2fe);
                        border-radius: 12px;
                        margin-bottom: 12px;
                    "></div>
                    <h4 style="margin-bottom: 8px;">MacBook Air</h4>
                    <p style="color: var(--primary); font-weight: 600;">$999</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Categories -->
    <section class="container">
        <div class="section-header">
            <h2 class="section-title">Explore Collections</h2>
            <p class="section-subtitle">Browse through our carefully curated categories designed for every aspect of your digital life</p>
        </div>
        
        <div class="categories-grid">
            <div class="category-card">
                <div class="category-icon">
                    <i class="fas fa-mobile-alt"></i>
                </div>
                <h3>Smart Devices</h3>
                <p>Latest phones, tablets, and wearables</p>
                <span class="category-count">128 products</span>
            </div>
            <div class="category-card">
                <div class="category-icon">
                    <i class="fas fa-laptop"></i>
                </div>
                <h3>Computing</h3>
                <p>Laptops, desktops, and accessories</p>
                <span class="category-count">72 products</span>
            </div>
            <div class="category-card">
                <div class="category-icon">
                    <i class="fas fa-headphones"></i>
                </div>
                <h3>Audio & Music</h3>
                <p>Headphones, speakers, and audio gear</p>
                <span class="category-count">94 products</span>
            </div>
            <div class="category-card">
                <div class="category-icon">
                    <i class="fas fa-camera"></i>
                </div>
                <h3>Photography</h3>
                <p>Cameras, lenses, and equipment</p>
                <span class="category-count">56 products</span>
            </div>
        </div>
    </section>

    <!-- Featured Products -->
    <section class="container">
        <div class="section-header">
            <h2 class="section-title">Trending Now</h2>
            <p class="section-subtitle">Discover what's popular among our community of tech enthusiasts</p>
        </div>
        
        <div class="products-masonry">
            <!-- Product 1 -->
            <div class="product-card">
                <div class="product-media">
                    <div style="
                        width: 100%;
                        height: 100%;
                        background: linear-gradient(135deg, #667eea, #764ba2);
                    "></div>
                    <span class="product-badge badge-new">New</span>
                    <div class="product-actions">
                        <button class="product-action-btn"><i class="far fa-heart"></i></button>
                        <button class="product-action-btn"><i class="fas fa-eye"></i></button>
                        <button class="product-action-btn"><i class="fas fa-share"></i></button>
                    </div>
                </div>
                <div class="product-info">
                    <span class="product-category">SMARTPHONES</span>
                    <h3 class="product-title">iPhone 15 Pro Max - Titanium</h3>
                    <div class="product-price">
                        <span class="current-price">$1,199</span>
                        <span class="original-price">$1,399</span>
                    </div>
                    <div class="product-rating">
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                        </div>
                        <span class="rating-count">(248 reviews)</span>
                    </div>
                    <button class="add-to-cart-btn">
                        <i class="fas fa-shopping-bag"></i>
                        Add to Cart
                    </button>
                </div>
            </div>
            
            <!-- Product 2 -->
            <div class="product-card">
                <div class="product-media">
                    <div style="
                        width: 100%;
                        height: 100%;
                        background: linear-gradient(135deg, #f093fb, #f5576c);
                    "></div>
                    <span class="product-badge badge-sale">-25%</span>
                    <div class="product-actions">
                        <button class="product-action-btn"><i class="far fa-heart"></i></button>
                        <button class="product-action-btn"><i class="fas fa-eye"></i></button>
                        <button class="product-action-btn"><i class="fas fa-share"></i></button>
                    </div>
                </div>
                <div class="product-info">
                    <span class="product-category">AUDIO</span>
                    <h3 class="product-title">Sony WH-1000XM5 Wireless Headphones</h3>
                    <div class="product-price">
                        <span class="current-price">$349</span>
                        <span class="original-price">$449</span>
                    </div>
                    <div class="product-rating">
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                        <span class="rating-count">(512 reviews)</span>
                    </div>
                    <button class="add-to-cart-btn">
                        <i class="fas fa-shopping-bag"></i>
                        Add to Cart
                    </button>
                </div>
            </div>
            
            <!-- Product 3 -->
            <div class="product-card">
                <div class="product-media">
                    <div style="
                        width: 100%;
                        height: 100%;
                        background: linear-gradient(135deg, #4facfe, #00f2fe);
                    "></div>
                    <span class="product-badge badge-popular">Bestseller</span>
                    <div class="product-actions">
                        <button class="product-action-btn"><i class="far fa-heart"></i></button>
                        <button class="product-action-btn"><i class="fas fa-eye"></i></button>
                        <button class="product-action-btn"><i class="fas fa-share"></i></button>
                    </div>
                </div>
                <div class="product-info">
                    <span class="product-category">COMPUTING</span>
                    <h3 class="product-title">MacBook Air M3 - 13-inch</h3>
                    <div class="product-price">
                        <span class="current-price">$1,299</span>
                    </div>
                    <div class="product-rating">
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                        </div>
                        <span class="rating-count">(189 reviews)</span>
                    </div>
                    <button class="add-to-cart-btn">
                        <i class="fas fa-shopping-bag"></i>
                        Add to Cart
                    </button>
                </div>
            </div>
        </div>
    </section>

    <!-- Features -->
    <section class="container">
        <div class="features">
            <div class="feature-card">
                <div class="feature-icon">
                    <i class="fas fa-shipping-fast"></i>
                </div>
                <h3>Free Shipping</h3>
                <p>Free delivery on orders over $50. Fast shipping worldwide.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon">
                    <i class="fas fa-shield-alt"></i>
                </div>
                <h3>Secure Payment</h3>
                <p>100% secure payment processing with bank-level encryption.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon">
                    <i class="fas fa-undo-alt"></i>
                </div>
                <h3>Easy Returns</h3>
                <p>30-day return policy. No questions asked.</p>
            </div>
        </div>
    </section>

    <!-- Newsletter -->
    <section class="newsletter-section">
        <div class="container">
            <div class="newsletter-content">
                <h2 style="font-size: 42px; margin-bottom: 16px;">Stay in the Loop</h2>
                <p style="font-size: 18px; opacity: 0.9; margin-bottom: 40px;">
                    Subscribe to receive exclusive deals, early access to sales, and tech insights delivered to your inbox.
                </p>
                <form class="newsletter-form">
                    <input type="email" class="newsletter-input" placeholder="Enter your email address" required>
                    <button type="submit" class="btn btn-primary" style="white-space: nowrap;">
                        <i class="fas fa-paper-plane"></i>
                        Subscribe
                    </button>
                </form>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="footer-container">
                <div class="footer-brand">
                    <h3>NexusShop</h3>
                    <p class="footer-description">
                        Where innovation meets style. We curate the finest technology and fashion for the modern digital lifestyle.
                    </p>
                    <div class="footer-social">
                        <a href="#" class="social-link"><i class="fab fa-twitter"></i></a>
                        <a href="#" class="social-link"><i class="fab fa-instagram"></i></a>
                        <a href="#" class="social-link"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" class="social-link"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
                
                <div class="footer-links">
                    <h4>Shop</h4>
                    <ul>
                        <li><a href="#">All Products <i class="fas fa-chevron-right"></i></a></li>
                        <li><a href="#">New Arrivals <i class="fas fa-chevron-right"></i></a></li>
                        <li><a href="#">Best Sellers <i class="fas fa-chevron-right"></i></a></li>
                        <li><a href="#">Deals <i class="fas fa-chevron-right"></i></a></li>
                        <li><a href="#">Gift Cards <i class="fas fa-chevron-right"></i></a></li>
                    </ul>
                </div>
                
                <div class="footer-links">
                    <h4>Support</h4>
                    <ul>
                        <li><a href="#">Help Center <i class="fas fa-chevron-right"></i></a></li>
                        <li><a href="#">Contact Us <i class="fas fa-chevron-right"></i></a></li>
                        <li><a href="#">Shipping Info <i class="fas fa-chevron-right"></i></a></li>
                        <li><a href="#">Returns <i class="fas fa-chevron-right"></i></a></li>
                        <li><a href="#">Warranty <i class="fas fa-chevron-right"></i></a></li>
                    </ul>
                </div>
                
                <div class="footer-links">
                    <h4>Company</h4>
                    <ul>
                        <li><a href="#">About Us <i class="fas fa-chevron-right"></i></a></li>
                        <li><a href="#">Careers <i class="fas fa-chevron-right"></i></a></li>
                        <li><a href="#">Press <i class="fas fa-chevron-right"></i></a></li>
                        <li><a href="#">Blog <i class="fas fa-chevron-right"></i></a></li>
                        <li><a href="#">Sustainability <i class="fas fa-chevron-right"></i></a></li>
                    </ul>
                </div>
            </div>
            
            <div class="footer-bottom">
                <p>&copy; 2026 NexusShop. All rights reserved. | Privacy Policy | Terms of Service</p>
            </div>
        </div>
    </footer>

    <script>
        // Mobile Menu Toggle
        const mobileMenuBtn = document.getElementById('mobileMenuBtn');
        const navMenu = document.querySelector('.nav-menu');
        
        mobileMenuBtn.addEventListener('click', () => {
            navMenu.style.display = navMenu.style.display === 'flex' ? 'none' : 'flex';
        });
        
        // Animation on scroll
        const observerOptions = {
            threshold: 0.1,
            rootMargin: '0px 0px -50px 0px'
        };
        
        const observer = new IntersectionObserver((entries) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    entry.target.classList.add('animate');
                }
            });
        }, observerOptions);
        
        // Observe elements for animation
        document.querySelectorAll('.category-card, .product-card, .feature-card, .feature-card').forEach(el => {
            observer.observe(el);
        });
        
        // Add to cart functionality
        document.querySelectorAll('.add-to-cart-btn').forEach(button => {
            button.addEventListener('click', function() {
                const badge = document.querySelector('.header-actions .badge:nth-child(3)');
                let count = parseInt(badge.textContent);
                badge.textContent = count + 1;
                
                // Animation feedback
                this.innerHTML = '<i class="fas fa-check"></i> Added!';
                this.style.background = 'var(--success)';
                
                setTimeout(() => {
                    this.innerHTML = '<i class="fas fa-shopping-bag"></i> Add to Cart';
                    this.style.background = 'var(--dark)';
                }, 1500);
            });
        });
        
        // Product action buttons
        document.querySelectorAll('.product-action-btn').forEach(btn => {
            btn.addEventListener('click', function(e) {
                e.stopPropagation();
                const icon = this.querySelector('i');
                
                if (icon.classList.contains('fa-heart')) {
                    if (icon.classList.contains('far')) {
                        icon.classList.replace('far', 'fas');
                        icon.style.color = 'var(--danger)';
                    } else {
                        icon.classList.replace('fas', 'far');
                        icon.style.color = '';
                    }
                }
            });
        });
        
        // Newsletter form submission
        const newsletterForm = document.querySelector('.newsletter-form');
        newsletterForm.addEventListener('submit', function(e) {
            e.preventDefault();
            const input = this.querySelector('.newsletter-input');
            const button = this.querySelector('.btn');
            
            button.innerHTML = '<i class="fas fa-check"></i> Subscribed!';
            button.style.background = 'var(--success)';
            input.value = '';
            
            setTimeout(() => {
                button.innerHTML = '<i class="fas fa-paper-plane"></i> Subscribe';
                button.style.background = '';
            }, 2000);
        });
        
        // Update active nav item on scroll
        window.addEventListener('scroll', () => {
            const sections = document.querySelectorAll('section');
            const navItems = document.querySelectorAll('.nav-item');
            
            let current = '';
            sections.forEach(section => {
                const sectionTop = section.offsetTop;
                const sectionHeight = section.clientHeight;
                if (scrollY >= (sectionTop - 200)) {
                    current = section.getAttribute('id');
                }
            });
            
            navItems.forEach(item => {
                item.classList.remove('active');
                if (item.getAttribute('href').substring(1) === current) {
                    item.classList.add('active');
                }
            });
        });
    </script>
</body>
</html>
