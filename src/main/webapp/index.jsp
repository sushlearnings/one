<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

```
<title>NexusShop | Modern Shopping</title>

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Poppins:wght@600;700;800&display=swap" rel="stylesheet">

<link rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>
:root {
--primary: #16213e;
--primary-dark: #0f172a;
--accent: #2563eb;
--accent-light: #eff6ff;
--success: #16a34a;
--danger: #ef4444;
--warning: #f59e0b;

```
/* Updated grey application background */
--background: #e5e7eb;

--surface: #ffffff;
--surface-soft: #f1f5f9;

--text: #1e293b;
--muted: #64748b;
--border: #d1d5db;

--radius-sm: 10px;
--radius: 16px;
--radius-lg: 24px;

--shadow-sm: 0 4px 12px rgba(15, 23, 42, 0.06);
--shadow: 0 10px 30px rgba(15, 23, 42, 0.10);
--shadow-lg: 0 20px 50px rgba(15, 23, 42, 0.15);

--container: 1200px;
```

}


    * {
        box-sizing: border-box;
    }

    html {
        scroll-behavior: smooth;
    }

    body {
        margin: 0;
        font-family: "Inter", sans-serif;
        background: var(--background);
        color: var(--text);
        line-height: 1.5;
    }

    button,
    input {
        font: inherit;
    }

    button {
        cursor: pointer;
    }

    a {
        text-decoration: none;
        color: inherit;
    }

    img {
        max-width: 100%;
    }

    .container {
        width: min(100% - 32px, var(--container));
        margin: auto;
    }

    /* ================= HEADER ================= */

    header {
        position: sticky;
        top: 0;
        z-index: 1000;
        background: rgba(255, 255, 255, 0.95);
        backdrop-filter: blur(12px);
        border-bottom: 1px solid var(--border);
    }

    .header-inner {
        min-height: 72px;
        display: flex;
        align-items: center;
        justify-content: space-between;
        gap: 24px;
    }

    .brand {
        font-family: "Poppins", sans-serif;
        font-size: 22px;
        font-weight: 800;
        white-space: nowrap;
    }

    .brand span:last-child {
        color: var(--accent);
    }

    .main-nav ul {
        display: flex;
        list-style: none;
        gap: 8px;
        padding: 0;
        margin: 0;
    }

    .main-nav a {
        display: flex;
        align-items: center;
        gap: 8px;
        padding: 10px 14px;
        border-radius: var(--radius-sm);
        color: var(--muted);
        font-weight: 600;
        transition: 0.2s;
    }

    .main-nav a:hover {
        color: var(--accent);
        background: var(--accent-light);
    }

    .header-right {
        display: flex;
        align-items: center;
        gap: 12px;
    }

    .search-box {
        display: flex;
        align-items: center;
        background: var(--surface-soft);
        border: 1px solid transparent;
        border-radius: 12px;
        padding: 0 12px;
        width: 260px;
        transition: 0.2s;
    }

    .search-box:focus-within {
        background: white;
        border-color: var(--accent);
        box-shadow: 0 0 0 3px rgba(37, 99, 235, 0.12);
    }

    .search-box input {
        width: 100%;
        border: none;
        outline: none;
        background: transparent;
        padding: 11px 8px;
    }

    .icon-button {
        border: none;
        background: transparent;
        width: 42px;
        height: 42px;
        border-radius: 12px;
        color: var(--text);
        position: relative;
        font-size: 17px;
        transition: 0.2s;
    }

    .icon-button:hover {
        background: var(--surface-soft);
        color: var(--accent);
    }

    .cart-button {
        position: relative;
    }

    .cart-count {
        position: absolute;
        top: 2px;
        right: 2px;
        width: 19px;
        height: 19px;
        display: grid;
        place-items: center;
        border-radius: 50%;
        background: var(--accent);
        color: white;
        font-size: 11px;
        font-weight: 700;
    }

    .mobile-toggle {
        display: none;
    }

    /* ================= MOBILE MENU ================= */

    .mobile-menu {
        display: none;
        border-top: 1px solid var(--border);
        padding: 12px 0 16px;
    }

    .mobile-menu.active {
        display: block;
    }

    .mobile-menu a {
        display: block;
        padding: 12px 4px;
        font-weight: 600;
        color: var(--muted);
    }

    /* ================= HERO ================= */

    .hero {
        min-height: 520px;
        display: flex;
        align-items: center;
        color: white;
        background:
            linear-gradient(
                90deg,
                rgba(15, 23, 42, 0.92),
                rgba(15, 23, 42, 0.55)
            ),
            url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1800&q=85")
            center/cover;
    }

    .hero-content {
        max-width: 700px;
    }

    .hero-badge {
        display: inline-flex;
        align-items: center;
        gap: 8px;
        padding: 8px 14px;
        border-radius: 999px;
        background: rgba(255,255,255,0.12);
        border: 1px solid rgba(255,255,255,0.2);
        font-size: 14px;
        margin-bottom: 18px;
    }

    .hero h1 {
        font-family: "Poppins", sans-serif;
        font-size: clamp(40px, 6vw, 70px);
        line-height: 1.08;
        margin: 0 0 18px;
    }

    .hero p {
        font-size: 18px;
        max-width: 620px;
        color: rgba(255,255,255,0.85);
        margin-bottom: 30px;
    }

    .hero-actions {
        display: flex;
        flex-wrap: wrap;
        gap: 14px;
    }

    /* ================= BUTTONS ================= */

    .btn {
        border: none;
        padding: 13px 22px;
        border-radius: 12px;
        font-weight: 700;
        display: inline-flex;
        align-items: center;
        justify-content: center;
        gap: 10px;
        transition: 0.2s;
    }

    .btn-primary {
        background: var(--accent);
        color: white;
    }

    .btn-primary:hover {
        transform: translateY(-2px);
        box-shadow: var(--shadow);
        background: #1d4ed8;
    }

    .btn-outline {
        background: rgba(255,255,255,0.1);
        border: 1px solid rgba(255,255,255,0.35);
        color: white;
    }

    .btn-outline:hover {
        background: rgba(255,255,255,0.18);
    }

    /* ================= SECTIONS ================= */

    .section {
        padding: 80px 0;
    }

    .section-header {
        text-align: center;
        margin-bottom: 36px;
    }

    .section-header h2 {
        font-family: "Poppins", sans-serif;
        font-size: 32px;
        margin: 0 0 8px;
    }

    .section-header p {
        margin: 0;
        color: var(--muted);
    }

    /* ================= CATEGORIES ================= */

    .categories {
        display: grid;
        grid-template-columns: repeat(6, 1fr);
        gap: 16px;
    }

    .category-card {
        background: var(--surface);
        padding: 22px 12px;
        border-radius: var(--radius);
        text-align: center;
        border: 1px solid var(--border);
        cursor: pointer;
        transition: 0.25s;
    }

    .category-card:hover,
    .category-card.active {
        transform: translateY(-5px);
        border-color: var(--accent);
        box-shadow: var(--shadow);
    }

    .category-icon {
        width: 58px;
        height: 58px;
        margin: auto;
        display: grid;
        place-items: center;
        border-radius: 16px;
        background: var(--accent-light);
        color: var(--accent);
        font-size: 24px;
        margin-bottom: 12px;
    }

    .category-card h4 {
        margin: 0;
        font-size: 15px;
    }

    /* ================= FILTER BAR ================= */

    .product-toolbar {
        display: flex;
        align-items: center;
        justify-content: space-between;
        gap: 16px;
        margin-bottom: 24px;
    }

    .result-count {
        color: var(--muted);
    }

    .clear-filter {
        display: none;
        background: var(--accent-light);
        color: var(--accent);
        border: none;
        padding: 9px 14px;
        border-radius: 10px;
        font-weight: 600;
    }

    .clear-filter.show {
        display: inline-block;
    }

    /* ================= PRODUCTS ================= */

    .products {
        display: grid;
        grid-template-columns: repeat(4, 1fr);
        gap: 22px;
    }

    .product-card {
        background: var(--surface);
        border: 1px solid var(--border);
        border-radius: var(--radius);
        overflow: hidden;
        transition: 0.25s;
        position: relative;
        display: flex;
        flex-direction: column;
    }

    .product-card:hover {
        transform: translateY(-6px);
        box-shadow: var(--shadow-lg);
    }

    .product-image {
        height: 220px;
        background: var(--surface-soft);
        overflow: hidden;
    }

    .product-image img {
        width: 100%;
        height: 100%;
        object-fit: cover;
        transition: transform 0.4s;
    }

    .product-card:hover .product-image img {
        transform: scale(1.06);
    }

    .badge {
        position: absolute;
        top: 14px;
        left: 14px;
        padding: 6px 10px;
        border-radius: 8px;
        font-size: 12px;
        color: white;
        font-weight: 700;
        z-index: 2;
    }

    .badge.new {
        background: var(--success);
    }

    .badge.sale {
        background: var(--danger);
    }

    .wishlist-btn {
        position: absolute;
        top: 12px;
        right: 12px;
        z-index: 2;
        background: white;
        border: none;
        width: 40px;
        height: 40px;
        border-radius: 50%;
        box-shadow: var(--shadow-sm);
        font-size: 16px;
    }

    .wishlist-btn.active {
        color: var(--danger);
    }

    .product-body {
        padding: 16px;
        display: flex;
        flex-direction: column;
        flex: 1;
    }

    .product-category {
        color: var(--accent);
        font-size: 12px;
        font-weight: 700;
        text-transform: capitalize;
    }

    .product-title {
        font-size: 16px;
        margin: 7px 0;
    }

    .rating {
        color: var(--warning);
        font-size: 13px;
        margin-bottom: 12px;
    }

    .review-count {
        color: var(--muted);
    }

    .product-bottom {
        margin-top: auto;
    }

    .price-row {
        display: flex;
        align-items: center;
        gap: 8px;
        margin-bottom: 14px;
    }

    .price {
        font-size: 20px;
        font-weight: 800;
    }

    .old-price {
        color: var(--muted);
        text-decoration: line-through;
        font-size: 13px;
    }

    .add-cart {
        width: 100%;
        background: var(--primary);
        color: white;
        border: none;
        padding: 12px;
        border-radius: 10px;
        font-weight: 700;
        transition: 0.2s;
    }

    .add-cart:hover {
        background: var(--accent);
    }

    .no-results {
        grid-column: 1 / -1;
        text-align: center;
        padding: 50px;
        color: var(--muted);
    }

    /* ================= FLASH SALE ================= */

    .deal {
        display: grid;
        grid-template-columns: 1fr 1fr;
        background: var(--surface);
        border-radius: var(--radius-lg);
        overflow: hidden;
        box-shadow: var(--shadow);
    }

    .deal-image {
        min-height: 420px;
    }

    .deal-image img {
        width: 100%;
        height: 100%;
        object-fit: cover;
    }

    .deal-content {
        padding: 50px;
        display: flex;
        flex-direction: column;
        justify-content: center;
    }

    .deal-label {
        color: var(--danger);
        font-weight: 800;
        text-transform: uppercase;
        letter-spacing: 1px;
        font-size: 13px;
    }

    .deal-content h2 {
        font-family: "Poppins", sans-serif;
        font-size: 36px;
        margin: 8px 0;
    }

    .deal-content p {
        color: var(--muted);
    }

    .timer {
        display: grid;
        grid-template-columns: repeat(4, 1fr);
        gap: 10px;
        margin: 25px 0;
    }

    .time-box {
        background: var(--primary);
        color: white;
        text-align: center;
        padding: 12px 8px;
        border-radius: 12px;
    }

    .time-value {
        font-size: 22px;
        font-weight: 800;
    }

    .time-label {
        font-size: 11px;
        opacity: 0.7;
    }

    .deal-price {
        font-size: 30px;
        font-weight: 800;
        margin-bottom: 16px;
    }

    /* ================= TESTIMONIALS ================= */

    .testimonial-grid {
        display: grid;
        grid-template-columns: repeat(3, 1fr);
        gap: 20px;
    }

    .testimonial {
        background: white;
        padding: 24px;
        border-radius: var(--radius);
        border: 1px solid var(--border);
    }

    .testimonial p {
        color: var(--muted);
    }

    .customer {
        display: flex;
        align-items: center;
        gap: 12px;
        margin-top: 20px;
    }

    .customer img {
        width: 46px;
        height: 46px;
        border-radius: 50%;
        object-fit: cover;
    }

    /* ================= NEWSLETTER ================= */

    .newsletter {
        background:
            linear-gradient(135deg, #172554, #2563eb);
        color: white;
        border-radius: var(--radius-lg);
        padding: 60px 24px;
        text-align: center;
    }

    .newsletter h2 {
        font-family: "Poppins", sans-serif;
        margin-top: 0;
    }

    .newsletter p {
        opacity: 0.85;
    }

    .newsletter-form {
        max-width: 520px;
        margin: 24px auto 0;
        display: flex;
        gap: 10px;
    }

    .newsletter-form input {
        flex: 1;
        border: none;
        outline: none;
        padding: 14px 16px;
        border-radius: 12px;
    }

    /* ================= CART DRAWER ================= */

    .cart-overlay {
        position: fixed;
        inset: 0;
        background: rgba(15,23,42,0.5);
        opacity: 0;
        visibility: hidden;
        transition: 0.25s;
        z-index: 2000;
    }

    .cart-overlay.show {
        opacity: 1;
        visibility: visible;
    }

    .cart-panel {
        position: absolute;
        top: 0;
        right: 0;
        height: 100%;
        width: min(420px, 100%);
        background: white;
        transform: translateX(100%);
        transition: 0.3s;
        display: flex;
        flex-direction: column;
    }

    .cart-overlay.show .cart-panel {
        transform: translateX(0);
    }

    .cart-header {
        padding: 20px;
        border-bottom: 1px solid var(--border);
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    .cart-items {
        flex: 1;
        overflow-y: auto;
        padding: 20px;
    }

    .cart-item {
        display: flex;
        gap: 12px;
        padding-bottom: 16px;
        margin-bottom: 16px;
        border-bottom: 1px solid var(--border);
    }

    .cart-item img {
        width: 70px;
        height: 70px;
        object-fit: cover;
        border-radius: 10px;
    }

    .cart-item-info {
        flex: 1;
    }

    .cart-item-info h4 {
        margin: 0 0 5px;
    }

    .cart-footer {
        padding: 20px;
        border-top: 1px solid var(--border);
    }

    .cart-total {
        display: flex;
        justify-content: space-between;
        font-size: 18px;
        font-weight: 800;
        margin-bottom: 15px;
    }

    .empty-cart {
        text-align: center;
        color: var(--muted);
        padding-top: 50px;
    }

    /* ================= TOAST ================= */

    .toast {
        position: fixed;
        bottom: 25px;
        right: 25px;
        background: var(--primary);
        color: white;
        padding: 14px 18px;
        border-radius: 12px;
        box-shadow: var(--shadow-lg);
        transform: translateY(100px);
        opacity: 0;
        transition: 0.3s;
        z-index: 3000;
    }

    .toast.show {
        transform: translateY(0);
        opacity: 1;
    }

    /* ================= FOOTER ================= */

    footer {
        background: var(--primary-dark);
        color: white;
        padding: 50px 0 20px;
        margin-top: 40px;
    }

    .footer-grid {
        display: grid;
        grid-template-columns: 2fr 1fr 1fr;
        gap: 40px;
    }

    .footer-grid p,
    .footer-grid a {
        color: #94a3b8;
    }

    .footer-links {
        display: flex;
        flex-direction: column;
        gap: 9px;
    }

    .socials {
        display: flex;
        gap: 10px;
    }

    .socials a {
        width: 38px;
        height: 38px;
        display: grid;
        place-items: center;
        background: rgba(255,255,255,0.08);
        border-radius: 10px;
    }

    .copyright {
        text-align: center;
        color: #64748b;
        padding-top: 30px;
        margin-top: 30px;
        border-top: 1px solid rgba(255,255,255,0.08);
    }

    /* ================= RESPONSIVE ================= */

    @media (max-width: 1050px) {

        .main-nav {
            display: none;
        }

        .mobile-toggle {
            display: inline-grid;
            place-items: center;
        }

        .categories {
            grid-template-columns: repeat(3, 1fr);
        }

        .products {
            grid-template-columns: repeat(3, 1fr);
        }

        .testimonial-grid {
            grid-template-columns: 1fr 1fr;
        }
    }

    @media (max-width: 800px) {

        .header-inner {
            gap: 10px;
        }

        .search-box {
            width: 200px;
        }

        .deal {
            grid-template-columns: 1fr;
        }

        .deal-image {
            min-height: 280px;
        }

        .products {
            grid-template-columns: repeat(2, 1fr);
        }

        .footer-grid {
            grid-template-columns: 1fr 1fr;
        }
    }

    @media (max-width: 600px) {

        .header-right .icon-button:not(.cart-button) {
            display: none;
        }

        .search-box {
            width: auto;
            flex: 1;
        }

        .header-inner {
            min-height: 64px;
        }

        .brand {
            font-size: 18px;
        }

        .hero {
            min-height: 500px;
        }

        .section {
            padding: 55px 0;
        }

        .categories {
            grid-template-columns: repeat(2, 1fr);
        }

        .products {
            grid-template-columns: 1fr;
        }

        .testimonial-grid {
            grid-template-columns: 1fr;
        }

        .newsletter-form {
            flex-direction: column;
        }

        .footer-grid {
            grid-template-columns: 1fr;
        }

        .deal-content {
            padding: 28px;
        }

        .timer {
            gap: 6px;
        }

        .time-value {
            font-size: 17px;
        }

        .product-toolbar {
            flex-direction: column;
            align-items: flex-start;
        }
    }
</style>
```

</head>

<body>

<header>
    <div class="container header-inner">

```
    <button class="icon-button mobile-toggle"
            id="mobileToggle"
            aria-label="Open navigation">
        <i class="fas fa-bars"></i>
    </button>

    <a href="#" class="brand">
        Nexus<span>Shop</span>
    </a>

    <nav class="main-nav">
        <ul>
            <li><a href="#"><i class="fas fa-house"></i> Home</a></li>
            <li><a href="#categories"><i class="fas fa-grid-2"></i> Categories</a></li>
            <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
            <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
        </ul>
    </nav>

    <div class="header-right">

        <div class="search-box">
            <i class="fas fa-search"></i>
            <input
                type="search"
                id="searchInput"
                placeholder="Search products..."
                aria-label="Search products">
        </div>

        <button class="icon-button" aria-label="Account">
            <i class="far fa-user"></i>
        </button>

        <button class="icon-button cart-button"
                id="cartButton"
                aria-label="Shopping cart">
            <i class="fas fa-shopping-cart"></i>
            <span class="cart-count" id="cartCount">0</span>
        </button>

    </div>
</div>

<div class="mobile-menu" id="mobileMenu">
    <div class="container">
        <a href="#">Home</a>
        <a href="#categories">Categories</a>
        <a href="#products">Trending Products</a>
        <a href="#deals">Deals</a>
    </div>
</div>
```

</header>

<main>

```
<!-- HERO -->

<section class="hero">
    <div class="container hero-content">

        <div class="hero-badge">
            <i class="fas fa-sparkles"></i>
            New arrivals are here
        </div>

        <h1>
            Discover products you'll love.
        </h1>

        <p>
            Explore trending technology, fashion and lifestyle products
            with great prices and exclusive limited-time offers.
        </p>

        <div class="hero-actions">
            <button class="btn btn-primary" id="shopNow">
                Shop Now
                <i class="fas fa-arrow-right"></i>
            </button>

            <button class="btn btn-outline" id="exploreDeals">
                Explore Deals
            </button>
        </div>

    </div>
</section>


<!-- CATEGORIES -->

<section class="section" id="categories">

    <div class="container">

        <div class="section-header">
            <h2>Shop by Category</h2>
            <p>Find exactly what you're looking for.</p>
        </div>

        <div class="categories" id="categoriesGrid"></div>

    </div>

</section>


<!-- PRODUCTS -->

<section class="section" id="products">

    <div class="container">

        <div class="section-header">
            <h2>Trending Products</h2>
            <p>Popular products chosen by our customers.</p>
        </div>

        <div class="product-toolbar">

            <div class="result-count">
                Showing <strong id="productCount">0</strong> products
            </div>

            <button class="clear-filter" id="clearFilter">
                <i class="fas fa-xmark"></i>
                Clear Filter
            </button>

        </div>

        <div class="products" id="productsGrid"></div>

    </div>

</section>


<!-- FLASH SALE -->

<section class="section" id="deals">

    <div class="container">

        <div class="deal">

            <div class="deal-image">
                <img
                    src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=85"
                    alt="Laptop on special offer">
            </div>

            <div class="deal-content">

                <span class="deal-label">
                    <i class="fas fa-bolt"></i>
                    Flash Sale
                </span>

                <h2>MacBook Air M2</h2>

                <p>
                    Thin, light and powerful. Get exceptional performance
                    with this limited-time offer.
                </p>

                <div class="timer">

                    <div class="time-box">
                        <div class="time-value" id="dealDays">00</div>
                        <div class="time-label">Days</div>
                    </div>

                    <div class="time-box">
                        <div class="time-value" id="dealHours">00</div>
                        <div class="time-label">Hours</div>
                    </div>

                    <div class="time-box">
                        <div class="time-value" id="dealMinutes">00</div>
                        <div class="time-label">Minutes</div>
                    </div>

                    <div class="time-box">
                        <div class="time-value" id="dealSeconds">00</div>
                        <div class="time-label">Seconds</div>
                    </div>

                </div>

                <div class="deal-price">
                    $999
                    <span class="old-price">$1,199</span>
                </div>

                <button class="btn btn-primary"
                        id="buyDeal">
                    <i class="fas fa-cart-plus"></i>
                    Add Deal to Cart
                </button>

            </div>

        </div>

    </div>

</section>


<!-- TESTIMONIALS -->

<section class="section">

    <div class="container">

        <div class="section-header">
            <h2>What Customers Say</h2>
            <p>Real experiences from our happy customers.</p>
        </div>

        <div class="testimonial-grid">

            <div class="testimonial">

                <div class="rating">
                    ★★★★★
                </div>

                <p>
                    "The shopping experience was smooth and delivery was
                    faster than expected. Highly recommended!"
                </p>

                <div class="customer">
                    <img
                        src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=100&q=80"
                        alt="Customer Ava">

                    <div>
                        <strong>Ava Martin</strong><br>
                        <small>Verified Buyer</small>
                    </div>
                </div>

            </div>


            <div class="testimonial">

                <div class="rating">
                    ★★★★★
                </div>

                <p>
                    "Great product selection and a very simple checkout
                    process. I will definitely shop here again."
                </p>

                <div class="customer">
                    <img
                        src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=100&q=80"
                        alt="Customer Michael">

                    <div>
                        <strong>Michael Lee</strong><br>
                        <small>Frequent Customer</small>
                    </div>
                </div>

            </div>


            <div class="testimonial">

                <div class="rating">
                    ★★★★★
                </div>

                <p>
                    "Easy navigation, great prices and excellent customer
                    experience from browsing to checkout."
                </p>

                <div class="customer">
                    <img
                        src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=100&q=80"
                        alt="Customer Sophia">

                    <div>
                        <strong>Sophia Brown</strong><br>
                        <small>Verified Buyer</small>
                    </div>
                </div>

            </div>

        </div>

    </div>

</section>


<!-- NEWSLETTER -->

<section class="section">

    <div class="container">

        <div class="newsletter">

            <h2>Stay Updated</h2>

            <p>
                Get exclusive offers, product updates and special deals.
            </p>

            <form class="newsletter-form"
                  id="newsletterForm">

                <input
                    type="email"
                    id="newsletterEmail"
                    placeholder="Enter your email address"
                    required>

                <button class="btn btn-primary"
                        type="submit">
                    Subscribe
                </button>

            </form>

        </div>

    </div>

</section>
```

</main>

<!-- FOOTER -->

<footer>

```
<div class="container">

    <div class="footer-grid">

        <div>

            <h2>NexusShop</h2>

            <p>
                A simple and modern shopping experience designed to help
                customers discover products quickly and easily.
            </p>

            <div class="socials">

                <a href="#" aria-label="Facebook">
                    <i class="fab fa-facebook-f"></i>
                </a>

                <a href="#" aria-label="Instagram">
                    <i class="fab fa-instagram"></i>
                </a>

                <a href="#" aria-label="Twitter">
                    <i class="fab fa-x-twitter"></i>
                </a>

            </div>

        </div>


        <div>

            <h3>Company</h3>

            <div class="footer-links">
                <a href="#">About Us</a>
                <a href="#">Careers</a>
                <a href="#">Press</a>
            </div>

        </div>


        <div>

            <h3>Support</h3>

            <div class="footer-links">
                <a href="#">Help Center</a>
                <a href="#">Shipping</a>
                <a href="#">Returns</a>
                <a href="#">Contact</a>
            </div>

        </div>

    </div>


    <div class="copyright">
        © <span id="year"></span> NexusShop. All rights reserved.
    </div>

</div>
```

</footer>

<!-- CART -->

<div class="cart-overlay" id="cartOverlay">

```
<div class="cart-panel">

    <div class="cart-header">

        <h2>Your Cart</h2>

        <button class="icon-button"
                id="closeCart"
                aria-label="Close cart">
            <i class="fas fa-xmark"></i>
        </button>

    </div>


    <div class="cart-items" id="cartItems"></div>


    <div class="cart-footer">

        <div class="cart-total">
            <span>Total</span>
            <span id="cartTotal">$0</span>
        </div>

        <button class="btn btn-primary"
                style="width:100%">
            Proceed to Checkout
        </button>

    </div>

</div>
```

</div>

<!-- TOAST -->

<div class="toast" id="toast"></div>

<script>

    /* ================= DATA ================= */

    const CATEGORIES = [
        {
            id: "phones",
            name: "Smartphones",
            icon: "fa-mobile-screen"
        },
        {
            id: "laptops",
            name: "Laptops",
            icon: "fa-laptop"
        },
        {
            id: "clothing",
            name: "Clothing",
            icon: "fa-shirt"
        },
        {
            id: "gadgets",
            name: "Gadgets",
            icon: "fa-headphones"
        },
        {
            id: "footwear",
            name: "Footwear",
            icon: "fa-shoe-prints"
        },
        {
            id: "accessories",
            name: "Accessories",
            icon: "fa-watch"
        }
    ];


    const PRODUCTS = [

        {
            id: 1,
            title: "iPhone 14 Pro Max",
            price: 1099,
            oldPrice: 1199,
            rating: 5,
            reviews: 128,
            badge: "New",
            category: "phones",
            img: "https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80"
        },

        {
            id: 2,
            title: "MacBook Pro 14",
            price: 1999,
            rating: 4,
            reviews: 86,
            category: "laptops",
            img: "https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80"
        },

        {
            id: 3,
            title: "Apple Watch Series 8",
            price: 349,
            oldPrice: 399,
            rating: 5,
            reviews: 214,
            badge: "-13%",
            category: "accessories",
            img: "https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80"
        },

        {
            id: 4,
            title: "Nike Air Max 270",
            price: 150,
            rating: 4,
            reviews: 53,
            category: "footwear",
            img: "https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80"
        },

        {
            id: 5,
            title: "Sony A7 IV Camera",
            price: 2499,
            rating: 5,
            reviews: 42,
            category: "gadgets",
            img: "https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80"
        },

        {
            id: 6,
            title: "Chanel No. 5",
            price: 120,
            rating: 5,
            reviews: 189,
            category: "accessories",
            img: "https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80"
        },

        {
            id: 7,
            title: "Travel Backpack",
            price: 79,
            oldPrice: 99,
            rating: 4,
            reviews: 67,
            category: "accessories",
            img: "https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80"
        },

        {
            id: 8,
            title: "Sony WH-1000XM5",
            price: 399,
            rating: 5,
            reviews: 156,
            category: "gadgets",
            img: "https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80"
        }

    ];


    /* ================= STATE ================= */

    let cart = [];
    let wishlist = [];
    let activeCategory = "";
    let searchQuery = "";


    /* ================= ELEMENTS ================= */

    const categoriesGrid =
        document.getElementById("categoriesGrid");

    const productsGrid =
        document.getElementById("productsGrid");

    const productCount =
        document.getElementById("productCount");

    const searchInput =
        document.getElementById("searchInput");

    const cartCount =
        document.getElementById("cartCount");

    const cartItems =
        document.getElementById("cartItems");

    const cartTotal =
        document.getElementById("cartTotal");

    const cartOverlay =
        document.getElementById("cartOverlay");

    const toast =
        document.getElementById("toast");

    const clearFilter =
        document.getElementById("clearFilter");


    /* ================= UTILITIES ================= */

    function escapeHtml(text) {

        return String(text).replace(/[&<>"']/g, character => {

            const characters = {
                "&": "&amp;",
                "<": "&lt;",
                ">": "&gt;",
                '"': "&quot;",
                "'": "&#039;"
            };

            return characters[character];

        });

    }


    function showToast(message) {

        toast.textContent = message;

        toast.classList.add("show");

        setTimeout(() => {

            toast.classList.remove("show");

        }, 2500);

    }


    function formatPrice(price) {

        return "$" + price.toLocaleString();

    }


    /* ================= CATEGORIES ================= */

    function renderCategories() {

        categoriesGrid.innerHTML = "";

        CATEGORIES.forEach(category => {

            const card =
                document.createElement("div");

            card.className =
                "category-card" +
                (activeCategory === category.id
                    ? " active"
                    : "");

            card.innerHTML = `

                <div class="category-icon">

                    <i class="fas ${category.icon}"></i>

                </div>

                <h4>
                    ${escapeHtml(category.name)}
                </h4>

            `;


            card.addEventListener("click", () => {

                if (activeCategory === category.id) {

                    activeCategory = "";

                } else {

                    activeCategory = category.id;

                }

                renderCategories();
                renderProducts();

                document
                    .getElementById("products")
                    .scrollIntoView({
                        behavior: "smooth"
                    });

            });


            categoriesGrid.appendChild(card);

        });

    }


    /* ================= PRODUCTS ================= */

    function getFilteredProducts() {

        return PRODUCTS.filter(product => {

            const categoryMatch =
                !activeCategory ||
                product.category === activeCategory;

            const searchMatch =
                !searchQuery ||
                product.title
                    .toLowerCase()
                    .includes(
                        searchQuery.toLowerCase()
                    ) ||
                product.category
                    .toLowerCase()
                    .includes(
                        searchQuery.toLowerCase()
                    );

            return categoryMatch &&
                searchMatch;

        });

    }


    function renderProducts() {

        const filteredProducts =
            getFilteredProducts();

        productsGrid.innerHTML = "";

        productCount.textContent =
            filteredProducts.length;


        if (
            activeCategory ||
            searchQuery
        ) {

            clearFilter.classList.add("show");

        } else {

            clearFilter.classList.remove("show");

        }


        if (
            filteredProducts.length === 0
        ) {

            productsGrid.innerHTML = `

                <div class="no-results">

                    <i class="fas fa-box-open"
                       style="font-size:42px;margin-bottom:15px">
                    </i>

                    <h3>
                        No products found
                    </h3>

                    <p>
                        Try searching for something else.
                    </p>

                </div>

            `;

            return;

        }


        filteredProducts.forEach(product => {

            const card =
                document.createElement("article");

            card.className =
                "product-card";


            const isWishlisted =
                wishlist.includes(product.id);


            const badgeClass =
                product.badge &&
                product.badge.startsWith("-")
                    ? "sale"
                    : "new";


            card.innerHTML = `

                ${
                    product.badge
                    ? `
                        <span class="badge ${badgeClass}">
                            ${product.badge}
                        </span>
                    `
                    : ""
                }


                <button
                    class="wishlist-btn ${
                        isWishlisted
                        ? "active"
                        : ""
                    }"
                    data-id="${product.id}"
                    aria-label="Add to wishlist">

                    <i class="${
                        isWishlisted
                        ? "fas"
                        : "far"
                    } fa-heart"></i>

                </button>


                <div class="product-image">

                    <img
                        src="${product.img}"
                        alt="${escapeHtml(product.title)}">

                </div>


                <div class="product-body">

                    <div class="product-category">

                        ${escapeHtml(product.category)}

                    </div>


                    <h3 class="product-title">

                        ${escapeHtml(product.title)}

                    </h3>


                    <div class="rating">

                        ${"★".repeat(product.rating)}

                        <span class="review-count">

                            (${product.reviews})

                        </span>

                    </div>


                    <div class="product-bottom">

                        <div class="price-row">

                            <div class="price">

                                ${formatPrice(product.price)}

                            </div>


                            ${
                                product.oldPrice
                                ? `
                                    <div class="old-price">

                                        ${formatPrice(
                                            product.oldPrice
                                        )}

                                    </div>
                                `
                                : ""
                            }

                        </div>


                        <button
                            class="add-cart"
                            data-id="${product.id}">

                            <i class="fas fa-cart-plus"></i>

                            Add to Cart

                        </button>

                    </div>

                </div>

            `;


            productsGrid.appendChild(card);

        });


        document
            .querySelectorAll(".add-cart")
            .forEach(button => {

                button.addEventListener(
                    "click",
                    () => {

                        addToCart(
                            Number(
                                button.dataset.id
                            )
                        );

                    }
                );

            });


        document
            .querySelectorAll(".wishlist-btn")
            .forEach(button => {

                button.addEventListener(
                    "click",
                    () => {

                        toggleWishlist(
                            Number(
                                button.dataset.id
                            )
                        );

                    }
                );

            });

    }


    /* ================= WISHLIST ================= */

    function toggleWishlist(productId) {

        if (
            wishlist.includes(productId)
        ) {

            wishlist =
                wishlist.filter(
                    id => id !== productId
                );

            showToast(
                "Removed from wishlist"
            );

        } else {

            wishlist.push(productId);

            showToast(
                "Added to wishlist ❤️"
            );

        }

        renderProducts();

    }


    /* ================= CART ================= */

    function addToCart(productId) {

        const existingItem =
            cart.find(
                item =>
                    item.id === productId
            );


        if (existingItem) {

            existingItem.quantity++;

        } else {

            const product =
                PRODUCTS.find(
                    product =>
                        product.id === productId
                );

            if (!product) return;

            cart.push({

                ...product,

                quantity: 1

            });

        }


        updateCart();

        showToast(
            "Product added to cart 🛒"
        );

    }


    function updateCart() {

        const totalQuantity =
            cart.reduce(
                (total, item) =>
                    total + item.quantity,
                0
            );


        cartCount.textContent =
            totalQuantity;


        if (
            cart.length === 0
        ) {

            cartItems.innerHTML = `

                <div class="empty-cart">

                    <i class="fas fa-shopping-cart"
                       style="font-size:42px">
                    </i>

                    <h3>
                        Your cart is empty
                    </h3>

                    <p>
                        Add some products to get started.
                    </p>

                </div>

            `;

            cartTotal.textContent =
                "$0";

            return;

        }


        cartItems.innerHTML =
            cart.map(item => `

                <div class="cart-item">

                    <img
                        src="${item.img}"
                        alt="${escapeHtml(item.title)}">


                    <div class="cart-item-info">

                        <h4>
                            ${escapeHtml(item.title)}
                        </h4>

                        <div>

                            ${formatPrice(item.price)}

                        </div>

                        <small>

                            Quantity:
                            ${item.quantity}

                        </small>

                    </div>


                    <button
                        class="icon-button remove-cart"
                        data-id="${item.id}"
                        aria-label="Remove item">

                        <i class="fas fa-trash"></i>

                    </button>

                </div>

            `).join("");


        const total =
            cart.reduce(
                (sum, item) =>
                    sum +
                    (
                        item.price *
                        item.quantity
                    ),
                0
            );


        cartTotal.textContent =
            formatPrice(total);


        document
            .querySelectorAll(".remove-cart")
            .forEach(button => {

                button.addEventListener(
                    "click",
                    () => {

                        removeFromCart(
                            Number(
                                button.dataset.id
                            )
                        );

                    }
                );

            });

    }


    function removeFromCart(productId) {

        cart =
            cart.filter(
                item =>
                    item.id !== productId
            );

        updateCart();

        showToast(
            "Item removed from cart"
        );

    }


    /* ================= SEARCH ================= */

    searchInput.addEventListener(
        "input",
        event => {

            searchQuery =
                event.target.value
                    .trim();

            renderProducts();

        }
    );


    clearFilter.addEventListener(
        "click",
        () => {

            activeCategory = "";
            searchQuery = "";

            searchInput.value = "";

            renderCategories();
            renderProducts();

        }
    );


    /* ================= CART PANEL ================= */

    document
        .getElementById("cartButton")
        .addEventListener(
            "click",
            () => {

                cartOverlay
                    .classList
                    .add("show");

            }
        );


    document
        .getElementById("closeCart")
        .addEventListener(
            "click",
            () => {

                cartOverlay
                    .classList
                    .remove("show");

            }
        );


    cartOverlay.addEventListener(
        "click",
        event => {

            if (
                event.target === cartOverlay
            ) {

                cartOverlay
                    .classList
                    .remove("show");

            }

        }
    );


    /* ================= MOBILE MENU ================= */

    document
        .getElementById("mobileToggle")
        .addEventListener(
            "click",
            () => {

                document
                    .getElementById("mobileMenu")
                    .classList
                    .toggle("active");

            }
        );


    /* ================= HERO BUTTONS ================= */

    document
        .getElementById("shopNow")
        .addEventListener(
            "click",
            () => {

                document
                    .getElementById("products")
                    .scrollIntoView({
                        behavior: "smooth"
                    });

            }
        );


    document
        .getElementById("exploreDeals")
        .addEventListener(
            "click",
            () => {

                document
                    .getElementById("deals")
                    .scrollIntoView({
                        behavior: "smooth"
                    });

            }
        );


    /* ================= DEAL ================= */

    document
        .getElementById("buyDeal")
        .addEventListener(
            "click",
            () => {

                const dealProduct = {

                    id: 999,

                    title:
                        "MacBook Air M2",

                    price: 999,

                    img:
                        "https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=85",

                    quantity: 1

                };


                const existing =
                    cart.find(
                        item =>
                            item.id === 999
                    );


                if (existing) {

                    existing.quantity++;

                } else {

                    cart.push(
                        dealProduct
                    );

                }


                updateCart();

                showToast(
                    "Flash deal added to cart ⚡"
                );

            }
        );


    /* ================= NEWSLETTER ================= */

    document
        .getElementById("newsletterForm")
        .addEventListener(
            "submit",
            event => {

                event.preventDefault();

                const email =
                    document
                        .getElementById(
                            "newsletterEmail"
                        )
                        .value;


                if (!email) return;


                document
                    .getElementById(
                        "newsletterEmail"
                    )
                    .value = "";


                showToast(
                    "Thanks for subscribing! 🎉"
                );

            }
        );


    /* ================= COUNTDOWN ================= */

    const targetDate =
        new Date(
            Date.now() +
            24 * 60 * 60 * 1000
        );


    function updateTimer() {

        const difference =
            targetDate -
            new Date();


        if (
            difference <= 0
        ) return;


        const days =
            Math.floor(
                difference /
                (
                    1000 *
                    60 *
                    60 *
                    24
                )
            );


        const hours =
            Math.floor(
                (
                    difference %
                    (
                        1000 *
                        60 *
                        60 *
                        24
                    )
                ) /
                (
                    1000 *
                    60 *
                    60
                )
            );


        const minutes =
            Math.floor(
                (
                    difference %
                    (
                        1000 *
                        60 *
                        60
                    )
                ) /
                (
                    1000 *
                    60
                )
            );


        const seconds =
            Math.floor(
                (
                    difference %
                    (
                        1000 *
                        60
                    )
                ) /
                1000
            );


        document
            .getElementById(
                "dealDays"
            )
            .textContent =
                String(days)
                    .padStart(2, "0");


        document
            .getElementById(
                "dealHours"
            )
            .textContent =
                String(hours)
                    .padStart(2, "0");


        document
            .getElementById(
                "dealMinutes"
            )
            .textContent =
                String(minutes)
                    .padStart(2, "0");


        document
            .getElementById(
                "dealSeconds"
            )
            .textContent =
                String(seconds)
                    .padStart(2, "0");

    }


    updateTimer();

    setInterval(
        updateTimer,
        1000
    );


    /* ================= INITIALIZATION ================= */

    renderCategories();

    renderProducts();

    updateCart();

    document
        .getElementById("year")
        .textContent =
            new Date()
                .getFullYear();

</script>

</body>
</html>
