<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>ShopEasy - E-Commerce</title>

    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: Arial, sans-serif;
            background: #e5e7eb;
            color: #222;
        }

        header {
            background: #1f2937;
            color: white;
            padding: 18px 7%;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .logo {
            font-size: 25px;
            font-weight: bold;
        }

        nav a {
            color: white;
            text-decoration: none;
            margin-left: 25px;
        }

        nav a:hover {
            color: #fbbf24;
        }

        .hero {
            background: white;
            padding: 70px 7%;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 30px;
        }

        .hero-text {
            max-width: 550px;
        }

        .hero h1 {
            font-size: 45px;
            margin-bottom: 20px;
        }

        .hero p {
            font-size: 18px;
            color: #555;
            margin-bottom: 25px;
        }

        .btn {
            display: inline-block;
            background: #2563eb;
            color: white;
            padding: 13px 25px;
            border-radius: 6px;
            text-decoration: none;
            border: none;
            cursor: pointer;
            font-size: 16px;
        }

        .btn:hover {
            background: #1d4ed8;
        }

        .hero-image {
            font-size: 120px;
        }

        .section {
            padding: 45px 7%;
        }

        .section h2 {
            text-align: center;
            margin-bottom: 30px;
            font-size: 30px;
        }

        .products {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 25px;
        }

        .product {
            background: white;
            border-radius: 10px;
            padding: 20px;
            text-align: center;
            box-shadow: 0 3px 10px rgba(0,0,0,0.08);
        }

        .product-image {
            height: 150px;
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 75px;
            margin-bottom: 15px;
        }

        .product h3 {
            margin-bottom: 10px;
        }

        .price {
            color: #2563eb;
            font-size: 20px;
            font-weight: bold;
            margin-bottom: 15px;
        }

        .cart {
            position: fixed;
            right: 25px;
            bottom: 25px;
            background: #2563eb;
            color: white;
            width: 60px;
            height: 60px;
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 25px;
            cursor: pointer;
        }

        footer {
            background: #1f2937;
            color: white;
            text-align: center;
            padding: 25px;
            margin-top: 20px;
        }

        @media (max-width: 900px) {
            .products {
                grid-template-columns: repeat(2, 1fr);
            }

            .hero {
                flex-direction: column;
                text-align: center;
            }
        }

        @media (max-width: 600px) {
            header {
                flex-direction: column;
                gap: 15px;
            }

            nav a {
                margin: 0 8px;
            }

            .products {
                grid-template-columns: 1fr;
            }

            .hero h1 {
                font-size: 32px;
            }
        }
    </style>
</head>

<body>

<header>
    <div class="logo">🛍️ ShopEasy</div>

    <nav>
        <a href="#">Home</a>
        <a href="#products">Products</a>
        <a href="#about">About</a>
        <a href="#contact">Contact</a>
    </nav>
</header>

<section class="hero">
    <div class="hero-text">
        <h1>Everything You Need, All in One Place</h1>

        <p>
            Discover quality products at affordable prices.
            Shop easily and enjoy a simple online shopping experience.
        </p>

        <a href="#products" class="btn">Shop Now</a>
    </div>

    <div class="hero-image">
        🛒
    </div>
</section>

<section class="section" id="products">

    <h2>Featured Products</h2>

    <div class="products">

        <div class="product">
            <div class="product-image">📱</div>
            <h3>Smart Phone</h3>
            <p class="price">₹24,999</p>
            <button class="btn" onclick="addToCart('Smart Phone')">
                Add to Cart
            </button>
        </div>

        <div class="product">
            <div class="product-image">💻</div>
            <h3>Laptop</h3>
            <p class="price">₹59,999</p>
            <button class="btn" onclick="addToCart('Laptop')">
                Add to Cart
            </button>
        </div>

        <div class="product">
            <div class="product-image">🎧</div>
            <h3>Wireless Headphones</h3>
            <p class="price">₹2,999</p>
            <button class="btn" onclick="addToCart('Wireless Headphones')">
                Add to Cart
            </button>
        </div>

        <div class="product">
            <div class="product-image">⌚</div>
            <h3>Smart Watch</h3>
            <p class="price">₹4,999</p>
            <button class="btn" onclick="addToCart('Smart Watch')">
                Add to Cart
            </button>
        </div>

    </div>
</section>

<section class="section" id="about">
    <h2>Why ShopEasy?</h2>

    <div class="products">

        <div class="product">
            <div class="product-image">🚚</div>
            <h3>Fast Delivery</h3>
            <p>Quick and reliable delivery.</p>
        </div>

        <div class="product">
            <div class="product-image">🔒</div>
            <h3>Secure Shopping</h3>
            <p>Your shopping experience is secure.</p>
        </div>

        <div class="product">
            <div class="product-image">💰</div>
            <h3>Best Prices</h3>
            <p>Great products at affordable prices.</p>
        </div>

        <div class="product">
            <div class="product-image">⭐</div>
            <h3>Quality Products</h3>
            <p>Products selected with quality in mind.</p>
        </div>

    </div>
</section>

<footer id="contact">
    <p>© 2026 ShopEasy. All rights reserved.</p>
</footer>

<div class="cart" onclick="showCart()">
    🛒
    <span id="cartCount">0</span>
</div>

<script>
    let cartCount = 0;

    function addToCart(product) {
        cartCount++;

        document.getElementById("cartCount").innerText = cartCount;

        alert(product + " added to cart!");
    }

    function showCart() {
        if (cartCount === 0) {
            alert("Your cart is empty.");
        } else {
            alert("You have " + cartCount + " item(s) in your cart.");
        }
    }
</script>

</body>
</html>
