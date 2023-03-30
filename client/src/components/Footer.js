import React, { Component } from 'react'
import './Footer.css'


export default class Footer extends Component {
    render() {
        return (
            <div id="footer-top">
                <div className="main-menu">
                    <div className="container">
                        <div className="head-nav">
                            <span className="menu"> </span>
                            <ul>
                                <li></li>
                                <li></li>
                                <div className="clearfix"> </div>
                            </ul>
                        </div>
                    </div>
                </div>



                <div className="footer">
                    <div className="container">
                        <div className="footer-top">
                            <div className="col-md-3 location">
                                <h4>location</h4>
                                <p>Ngong road, Prestige</p>
                                <h4>hours</h4>
                                <p>Weekdays 7 a.m.-7 p.m.</p>
                                <p>Weekends 8 a.m.-7 p.m.</p>
                                <p>Call for Holidays Hours.</p>
                            </div>
                            <div className="col-md-3 customer">
                                <h4>customer service</h4>
                                <p>To place an order, start by finding the cake you want to purchase and clicking on the “Add to Cart” button. Next, review the cake/items in your shopping cart. Proceed to the checkout page by clicking on the “Checkout” button and fill out the required billing and shipping information. Choose a payment method and enter any necessary payment information. Finally, complete the transaction by clicking on the “Place Order” button.. </p>
                                <h4>phone</h4>
                                <h6>1(234)567-8910</h6>
                                <h4>contact us</h4>
                                <h6>contact us page.</h6>
                            </div>
                            <div className="col-md-3 social">
                                <h4>get social</h4>
                                <div className="face-b">
    <img className="small-icon" src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Facebook_Logo_%282019%29.png/600px-Facebook_Logo_%282019%29.png?20190503112358" title="name" alt="foot" />
    <a href="/"><i className="fb"> </i></a>
</div>
                                <div className="twet">
                                    <img className="small-icon" src="https://png.pngtree.com/png-vector/20221018/ourmid/pngtree-twitter-social-media-round-icon-png-image_6315985.png" title="name" alt="foot" />
                                    <a href="/"><i className="twt"> </i></a>
                                </div>
                            </div>
                            <div className="col-md-3 sign">
                                <h4>sign up for news later</h4>
                                <form>
                                    <input type="text" className="text" value="YOUR EMAIL" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'YOUR EMAIL ';}" />
                                </form>
                            </div>
                            <div className="clearfix"> </div>
                        </div>
                        <div className="footer-bottom">
                        </div>
                    </div>
                </div>
            </div>
        )
    }
}