<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Ecommerce Web Application -  Management System</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="StyleSheet/indexStyle.css">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Serif:ital,wght@0,100..900;1,100..900&family=Playwrite+GB+S:ital,wght@0,100..400;1,100..400&family=Playwrite+IN:wght@100..400&display=swap" rel="stylesheet">
</head>
<body>
<%--Header section--%>
<header>

    <input type="checkbox" name="" id="toggler">
    <label for="toggler" class="fas fa-bars"></label>

    <a href="#" class="logo"> <span>F</span>orever<span>F</span>loral <span>...</span></a>

    <nav class="navbar">
        <a href="#home">home</a>
        <a href="#about">about</a>
        <a href="#products">product</a>
        <a href="#review">review</a>
        <a href="#contact">contact</a>
    </nav>

    <div class="icon">
        <a href="#" class="fas fa-heart" title="Heart"></a>
        <a href="#" class="fas fa-shopping-cart" title="Add Cart"></a>
        <a href="#" class="fas fa-user" title="My Account"></a>
        <a href="login.jsp" class="login-link" title="Sign In">Login</a>
        <a href="adminDashBoard.jsp" class="register-link">Register</a>
    </div>

</header>

<%--Home Section--%>
<section class="home" id="home">
    <div class="content">
        <h3>Fresh Flowers</h3>
        <span>Natural & Beautiful Flowers</span>
        <p>
            Brighten any moment with the freshest flowers from BloomCart. Handpicked blooms, easy ordering, and fast delivery-bringing joy, one bouquet at a time!
            <br>
            🌹🌹🌹🌹🌹🌹
        </p>
        <a href="#" class="btn">Shop Now</a>
    </div>
</section>

<%--About Section--%>
<section class="about" id="about">
    <h1 class="heading"><span> About </span> Us </h1>
    <div class="row">
        <div class="video-container">
            <video src="videos/about.mp4" loop autoplay muted></video>
            <h3>best flower sellers</h3>
        </div>

        <div class="content">
            <h3>Why Choose Us?</h3>
            <p>                         At ForeverFloral, we go the extra mile to ensure every bouquet is crafted with care and delivered fresh to your doorstep. Our commitment to quality, reliable delivery, and exceptional customer service makes us the trusted choice for all your floral needs. Experience the difference with BloomCart—where every petal matters!</p>
            <a href="#" class="btn">learn more</a>
        </div>
    </div>
</section>

<%--icons section--%>
<section class="icons-container">
    <div class="icons">
        <img src="images/icon1.png" alt="">
        <div class="info">
            <h3>Free Delivery</h3>
            <span>On All Orders</span>
        </div>
    </div>
    <div class="icons">
        <img src="images/icon2.png" alt="">
        <div class="info">
            <h3>10 Days Returns</h3>
            <span>Moneyback Guarantee</span>
        </div>
    </div>
    <div class="icons">
        <img src="images/icon3.png" alt="">
        <div class="info">
            <h3>Offer & Gifts</h3>
            <span>On All Orders</span>
        </div>
    </div>
    <div class="icons">
        <img src="images/icon4.png" alt="">
        <div class="info">
            <h3>Secure Payment</h3>
            <span>Protected by Paypal</span>
        </div>
    </div>
</section>

<%--product section--%>
<section class="products" id="products">
    <h1 class="heading">
        <div class="box-container">
            <div class="box">
                <span class="discount">-10%</span>
                <div class="image">
                    <img src="images/flowerPot.png" alt="">
                    <div class="icons">
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="cart-btn">Add to Cart</a>
                        <a href="#" class="fas fa-share"></a>
                    </div>
                </div>
                <div class="content">
                    <h3>Flower Pot</h3>
                    <div class="price"> $12.99 <span>$15.99</span> </div>
                </div>
            </div>

            <div class="box">
                <span class="discount">-15%</span>
                <div class="image">
                    <img src="images/folwerPot1.png" alt="">
                    <div class="icons">
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="cart-btn">Add to Cart</a>
                        <a href="#" class="fas fa-share"></a>
                    </div>
                </div>
                <div class="content">
                    <h3>Flower Pot</h3>
                    <div class="price"> $12.99 <span>$15.99</span> </div>
                </div>
            </div>

            <div class="box">
                <span class="discount">-10%</span>
                <div class="image">
                    <img src="images/flowerPot2.png" alt="">
                    <div class="icons">
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="cart-btn">Add to Cart</a>
                        <a href="#" class="fas fa-share"></a>
                    </div>
                </div>
                <div class="content">
                    <h3>Flower Pot</h3>
                    <div class="price"> $12.99 <span>$15.99</span> </div>
                </div>
            </div>

            <div class="box">
                <span class="discount">-20%</span>
                <div class="image">
                    <img src="images/flowerPot3.png" alt="">
                    <div class="icons">
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="cart-btn">Add to Cart</a>
                        <a href="#" class="fas fa-share"></a>
                    </div>
                </div>
                <div class="content">
                    <h3>Flower Pot</h3>
                    <div class="price"> $12.99 <span>$15.99</span> </div>
                </div>
            </div>

            <div class="box">
                <span class="discount">-10%</span>
                <div class="image">
                    <img src="images/flowerPot4.png" alt="">
                    <div class="icons">
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="cart-btn">Add to Cart</a>
                        <a href="#" class="fas fa-share"></a>
                    </div>
                </div>
                <div class="content">
                    <h3>Flower Pot</h3>
                    <div class="price"> $12.99 <span>$15.99</span> </div>
                </div>
            </div>

            <div class="box">
                <span class="discount">-17%</span>
                <div class="image">
                    <img src="images/fowerPot5.png" alt="">
                    <div class="icons">
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="cart-btn">Add to Cart</a>
                        <a href="#" class="fas fa-share"></a>
                    </div>
                </div>
                <div class="content">
                    <h3>Flower Pot</h3>
                    <div class="price"> $12.99 <span>$15.99</span> </div>
                </div>
            </div>

            <div class="box">
                <span class="discount">-17%</span>
                <div class="image">
                    <img src="images/flowerPot6.png" alt="">
                    <div class="icons">
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="cart-btn">Add to Cart</a>
                        <a href="#" class="fas fa-share"></a>
                    </div>
                </div>
                <div class="content">
                    <h3>Flower Pot</h3>
                    <div class="price"> $12.99 <span>$15.99</span> </div>
                </div>
            </div>

            <div class="box">
                <span class="discount">-17%</span>
                <div class="image">
                    <img src="images/flowerPot7.png" alt="">
                    <div class="icons">
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="cart-btn">Add to Cart</a>
                        <a href="#" class="fas fa-share"></a>
                    </div>
                </div>
                <div class="content">
                    <h3>Flower Pot</h3>
                    <div class="price"> $12.99 <span>$15.99</span> </div>
                </div>
            </div>

        </div>
    </h1>
</section>

<%--review section--%>
<section class="review" id="review">
    <h1 class="heading">Customers' <span>Review</span>..</h1>
    <div class="box-container">
        <div class="box">
            <biv class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
            </biv>
            <p>
                The floral arrangements were absolutely breathtaking! Every petal was fresh and perfectly arranged, showcasing incredible attention to detail. The flowers brightened up my entire week and lasted longer than I expected. The delivery was timely, and the service was exceptional. This is now my favorite place for all things flowers!
            </p>
            <div class="user">
                <img src="images/user/user1.png" alt="">
                <div class="user-info">
                    <h3>Sarah Thompson</h3>
                    <span>Happy Customer</span>
                </div>
            </div>
            <span class="fas fa-quote-right"></span>
        </div>

        <div class="box">
            <biv class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
            </biv>
            <p>
                I couldn’t be happier with the bouquet I ordered! The flowers were vibrant, beautifully fragrant, and expertly arranged. It felt like a piece of nature was delivered right to my doorstep. The team went above and beyond to accommodate my requests. I’ll definitely return for more of their gorgeous creations!            </p>
            <div class="user">
                <img src="images/user/user2.png" alt="">
                <div class="user-info">
                    <h3>James Miller</h3>
                    <span>Happy Customer</span>
                </div>
            </div>
            <span class="fas fa-quote-right"></span>
        </div>

        <div class="box">
            <biv class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
            </biv>
            <p>
                Amazing experience from start to finish! The website was easy to use, the staff was incredibly helpful, and the flowers arrived fresh and stunning. The colors were vivid, and the bouquet looked even better in person than online. This store truly knows how to make any occasion extra special!            </p>
            <div class="user">
                <img src="images/user/user3.png" alt="">
                <div class="user-info">
                    <h3>Emily Carter</h3>
                    <span>Happy Customer</span>
                </div>
            </div>
            <span class="fas fa-quote-right"></span>
        </div>

    </div>
</section>

<%--contact section--%>
<section class="contact" id="contact">
    <h1 class="heading"> <span> Contact </span> us </h1>
    <div class="row">
        <form action="">

            <div>
                <label class="label" for="name">Name:</label>
                <input type="text" id="name" placeholder="Name" class="box">
            </div>
            <div>
                <label class="label" for="email">Email:</label>
                <input type="email" id="email" placeholder="Email" class="box">
            </div>
            <div>
                <label class="label" for="number">Number:</label>
                <input type="number" id="number" placeholder="Number" class="box">
            </div>
            <div>
                <label class="label" for="message">Message:</label>
                <textarea id="message" cols="30" rows="10" class="box" placeholder="Message"></textarea>
            </div>

            <input type="submit" value="send message" class="btn">
        </form>

        <div class="image">
            <img src="images/contact.png" alt="">
        </div>
    </div>
</section>

<%--footer section--%>
<section class="footer">
    <div class="box-container">

        <div class="box">
            <h3>Quick Links</h3>
            <a href="#home">Home</a>
            <a href="#about">About</a>
            <a href="#products">Product</a>
            <a href="#review">Review</a>
            <a href="#contact">Contact</a>
        </div>

        <div class="box">
            <h3>Extra Links</h3>
            <a href="#">My Account</a>
            <a href="#">My Orders</a>
        </div>

        <div class="box">
            <h3>Locations</h3>
            <a href="#">Kurunegala</a>
            <a href="#">Panadura</a>
            <a href="#">Colombo</a>
            <a href="#">Galle</a>
            <a href="#">Kandy</a>
        </div>

        <div class="box">
            <h3>Contact Information</h3>
            <a href="#">+94-74-2548578</a>
            <a href="#">foreverFloral@gmail.com</a>
            <a href="#">No:197,Kandy Road,Kurunegala</a>
            <img src="images/payment.png" alt="">
        </div>

    </div>

    <div class="credit">Created By <span> Paboda Hitigama </span> |All Rights Reserved </div>
</section>



</body>
</html>