import React, { Component } from 'react';
import { NavLink } from 'react-router-dom';
import OrderInfo from '../../Pages/Order/OrderInfo';
import { createOrder } from '../../util/APIUtils';
import PayPalExpressCheckOut from '../../components/Payment/PayPalExpressCheckOut'
class checkout extends Component {
    constructor(props) {
        super(props);
        this.state = {
            id: '',
            name: '',
            address: '',
            phone: 0,
            totalPrice: 0,
            payCheck: false,
            items: []
        };
    }

    onChange = (e) => {
        var strProducts = localStorage.getItem('CART');
        var arrProducts = JSON.parse(strProducts)
        var totalPrice = localStorage.getItem('total');
        var target = e.target;
        var inName = target.name;
        var inValue = target.type === 'checkbox' ? target.checked : target.value;

        this.setState({
            [inName]: inValue,
            totalPrice: totalPrice,
            items: arrProducts
        })

    }

    onSave = (e) => {
        e.preventDefault();
        const infoRequest = {
            name: this.state.name,
            address: this.state.address,
            phone: this.state.phone,
            totalPrice: this.state.totalPrice,
            items: this.state.items
        };
        // console.log(infoRequest)
        // console.log(this.state.payCheck)
        if (this.state.payCheck === true) {
            //  console.log(this.state.items);
            let idProduct = this.state.items.map(e => { return e.product.id });
            let quantityProduct = this.state.items.map(e => { return e.product.quantity });
            //  console.log(idProduct);
            //  console.log(quantityProduct);

            let quantity = this.state.items.map(e => { return e.quantity });
            for (var i = 0; i < quantityProduct.length; i++) {
                for (var j = i; j <= i; j++) {
                    console.log(quantityProduct[i], quantity[j]);
                    console.log('OK');
                    createOrder(infoRequest)
                        .then(res => {
                            console.log(res);
                        }).catch(err => {
                            console.log(err)
                        })
                    for (i = 0; i < idProduct.length; i++) {
                        for (j = i; j <= i; j++) {
                            console.log(idProduct[i], quantity[j]);
                            fetch(`http://localhost:8080/api/auth/updatequantity/${idProduct[i]}`, {
                                method: 'PUT',
                                body: JSON.stringify({ quantity: quantity[j] }),
                                headers: {
                                    "Content-Type": "application/json"
                                }
                            }).then(res => {
                                console.log(res);

                            }).catch(err => {
                                console.log(err);

                            })

                        }
                    }
                }
            }
            this.props.history.push("/");
            alert("Order sucessfully !");
        } else {
            alert("Order failed ! Please choose a payment method ! ")
        }

    }
    render() {
        //  debugger;
        var { name, address, phone, totalPrice, items } = this.state;
        return (
            <div className="wrapper">

                <form className="form-wrapper" onSubmit={this.onSave}>
                    <h2 align="center">Order Information</h2>
                    <div className="name">
                        <label><b>Name</b></label>
                        <input
                            type="text"
                            className="form-control"
                            name="name"
                            placeholder="Your Name"
                            value={name}
                            onChange={this.onChange}
                        />
                    </div>
                    <div className="form-group">
                        <label><b>Address</b></label>
                        <input
                            type="text"
                            className="form-control"
                            name="address"
                            placeholder="Your address"
                            value={address}
                            onChange={this.onChange}
                        />
                    </div>
                    <div className="form-group">
                        <label><b>Phone number</b></label>
                        <input
                            type="number"
                            className="form-control"
                            name="phone"
                            value={phone}
                            onChange={this.onChange}
                        />
                    </div>
                    <div className="form-group">
                        <label><b>Total Amount</b></label>
                        <input
                            type="number"
                            className="form-control"
                            name="totalPrice"
                            value={totalPrice}
                            onChange={this.onChange}
                        />
                    </div>
                    <div><OrderInfo name={name} address={address} phone={phone} total={totalPrice} items={items} /></div>
                    <div> <h3>Chosee payment method: </h3>  <PayPalExpressCheckOut /> </div>
                    <div className="checkbox">
                        <label>
                            <input
                                type="checkbox"
                                name="payCheck"
                                value={true}
                                onChange={this.onChange}
                                checked={this.state.payCheck === true}
                            />
                            <strong>Payment on delivery</strong>
                        </label>
                    </div>
                    <NavLink to="/" className="btn btn-danger">Back</NavLink> <br />
                    <button type="submit" className="btn btn-primary">Order</button>
                </form>

            </div>
        );
    }
}


export default checkout;
