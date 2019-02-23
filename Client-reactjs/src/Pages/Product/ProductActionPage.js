import React, { Component } from 'react';
import { createProduct, getOneProduct, updateProduct } from '../../util/APIUtils';
import './ProductActionPage.css';
import { NavLink } from 'react-router-dom';
class ProductActionPage extends Component {
    constructor(props) {
        super(props);
        this.state = {
            id: '',
            name: '',
            quantity: '',
            price: '',
            unit: '',
            type: '',
            createdBy: '',
            imgava: null
        };
    }

    componentDidMount() {
        var { match } = this.props;
        if (match) {
            var id = match.params.id;
            console.log(id);
            getOneProduct(id).then(res => {
                console.log(res);
                this.setState({
                    id: res.id,
                    name: res.name,
                    quantity: res.quantity,
                    price: res.price,
                    unit: res.unit,
                    type: res.type,
                    createdBy: res.createdBy,
                    
                });
            });
        }


    }

    onChange = (e) => {
        var target = e.target;
        var name = target.name;
        var value = target.value;
        this.setState({
            [name]: value
        })
    }
    handleFile = (e) => {
        // console.log(e.target.files[0], '$$$$');
        let file = e.target.files[0]
        this.setState({
            imgava: file
        })
    }

    onSave = (e) => {
        e.preventDefault();
        // console.log(this.state);

        // formData.append('age', 20);
        var { id, name, quantity, price, unit, type, createdBy } = this.state;
        const productRequest = {
            name: name,
            quantity: quantity,
            price: price,
            unit: unit,
            type: type,
            createdBy: createdBy
        };
        if (id) {
            updateProduct(id, productRequest)
                .then(res => {
                    console.log(res);
                    // let file = this.state.imgava
                    // let formData = new FormData();    //formdata object
                    // formData.append('file', file);
                    // // formData.append('id', res.id);
                    // fetch(`http://localhost:8080/api/auth/${id}/uploadimage`, {
                    //     method: 'POST',
                    //     body: formData,
                    //     //headers: { 'content-type': 'multipart/form-data' }
                    // })
                    //     .then(response => response.json())
                    //     .catch(error => console.error('Error:', error))
                    //     .then(response => console.log('Success:', JSON.stringify(response)))
                        
                }).catch(err => {
                    console.log(err);
                });
            alert("Updated product!");
            this.props.history.push("/products");
        } else {

            createProduct(productRequest)
                .then(res => {
                    let file = this.state.imgava
                    let formData = new FormData();    //formdata object
                    formData.append('file', file);
                    // formData.append('id', res.id);
                    fetch(`http://localhost:8080/api/auth/${res.id}/uploadimage`, {
                        method: 'POST',
                        body: formData,
                        //headers: { 'content-type': 'multipart/form-data' }
                    })
                        .then(response => response.json())
                        .catch(error => console.error('Error:', error))
                        .then(response => console.log('Success:', JSON.stringify(response)));
                    console.log(res.id);
                }).catch(err => {
                    console.log(err);
                });
            alert("Created product!");
            this.props.history.push("/products");
        }
        console.log(this.state);

    }
    render() {
        var { name, quantity, price, unit, type, createdBy, image } = this.state;
        return (
            <div className="wrapper">
                <div className="form-wrapper">
                <h2 align="center">Create a product</h2>
                    <form onSubmit={this.onSave} >
                        <div className="form-group ">
                            <label><b>Name</b></label>
                            <input
                                type="text"
                                className="form-control"
                                name="name"
                                value={name}
                                onChange={this.onChange}
                            />
                        </div>
                        <div className="form-group">
                            <label><b>Quantity</b></label>
                            <input
                                type="number"
                                className="form-control"
                                name="quantity"
                                value={quantity}
                                onChange={this.onChange}
                            />
                        </div>
                        <div className="form-group">
                            <label><b>Price</b></label>
                            <input
                                type="number"
                                className="form-control"
                                name="price"
                                value={price}
                                onChange={this.onChange}
                            />
                        </div>
                        <div className="form-group">
                            <label><b>Unit</b></label>
                            <input
                                type="text"
                                className="form-control"
                                name="unit"
                                value={unit}
                                onChange={this.onChange}
                            />
                        </div>
                        <div className="form-group">
                            <label><b>Type</b></label>
                            <input
                                type="text"
                                className="form-control"
                                name="type"
                                value={type}
                                onChange={this.onChange}
                            />
                        </div>
                        <div className="form-group">
                            <label><b>Create By</b></label>
                            <input
                                type="text"
                                className="form-control"
                                name="createdBy"
                                value={createdBy}
                                onChange={this.onChange}
                            />
                        </div>
                        <div className="form-group">
                            <label><b>Choose Image</b></label>
                            <input
                                type="file"
                                className="form-control"
                                name="image"
                                value={image}
                                onChange={this.handleFile}
                            />
                        </div>
                        <NavLink to="/products" className="btn btn-danger mr-20">Back</NavLink>
                        <button type="submit" className="btn btn-primary">Save</button>
                    </form>
                </div>
            </div>
        );
    }
}


export default ProductActionPage;
