import React, { Component } from 'react';
import {Link} from 'react-router-dom'
import './DetailProduct.css'
import { getOneProduct} from '../../util/APIUtils';

class DetailProduct extends Component {
    constructor(props) {
        super(props);
        this.state = {
            image: null,
            product: ''
        }
    }

    componentDidMount() {
        var { match } = this.props;
        var id = match.params.idProduct;
        getOneProduct(id)
            .then(res => {
                console.log(res);
                this.setState({
                    product: res
                });
            }).catch(err => {
                console.log(err);

            })


        // fetch(`http://localhost:8080/api/auth/image/${id}`, {
        //     method: 'GET',
        // }).then(response => response.blob())
        //     .then(images => {
        //         // Then create a local URL for that image and print it 
        //         var outside = URL.createObjectURL(images)
        //         console.log(outside)
        //         this.setState({
        //             image: outside
        //         })
        //     })

    }

    render() {
        console.log(this.state);
        console.log(this.state.product.name);
        var {product} = this.state;
        return (

            <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 mt-100">
                    <img src={`http://localhost/uploads/product-images/${product.id}/${product.id}`+'.jpg'} 
                    className="img-thumbnail" alt="Cinque Terre" width="300" height="300"
                    />

                <div className="detail">
                    name: <strong>{product.name} </strong> <br/>
                    Price: <strong>{product.price} </strong> <br/>
                    Type: <strong>{product.type} </strong> <br/>
                    Unit: <strong>{product.unit} </strong><br/>
                    <Link to="/" >Buy now</Link>
                </div>

            </div>

        );
    }
}

export default DetailProduct;
