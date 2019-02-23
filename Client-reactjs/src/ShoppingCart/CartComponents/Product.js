import React, { Component } from 'react';
import * as Message from '../constants/Message';
import { Link } from 'react-router-dom'
import '../../components/Signin.css'
import { getImage } from '../../util/APIUtils';
class Product extends Component {
    constructor(props) {
        super(props);
        this.state = {
            image: null
        }
    }
    // componentWillMount() {
    //     console.log('willmout');

    //     var pro = this.props.product;
    //     console.log(pro);

    //     fetch(`http://localhost:8080/api/auth/image/${pro.id}`, {
    //         method: 'GET',
    //     }).then(response => response.blob())
    //         .then(images => {
    //             // Then create a local URL for that image and print it 
    //             var outside = URL.createObjectURL(images)
    //             console.log(outside)
    //             this.setState({
    //                 image: outside
    //             })
    //         })

    // }

    render() {
        var { product } = this.props;
        return (
           
                <div className="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                    <div className="card text-center card-cascade narrower mt-100">
                        <div className="view overlay hm-white-slight z-depth-1" >
                            <Link to={`/detail/${product.id}`} >
                                <img src={`http://localhost/uploads/product-images/${product.id}/${product.id}` + '.jpg'}
                                    className="img-thumbnail" alt="Cinque Terre" width="200" height="200"
                                    alt={`http://localhost/uploads/product-images/${product.id}/${product.id}` + '.jpg'}
                                />
                            </Link>

                        </div>
                        <div className="card-body">
                            <h4 className="card-title">
                                <strong>
                                    {/*<a>*/}
                                    {product.name}
                                    {/*  </a>*/}
                                </strong>
                            </h4>

                            {/* <p className="card-text">
                                {product.description}
                            </p> */}
                            <div className="card-footer">
                                <span className="left"><b>{product.price}$ </b></span>
                                <span className="right">
                                    <Link to={`/detail/${product.id}`}><button type="button" className="btn btn-info">Detail</button> </Link>
                                </span>
                                <span className="right">
                                    <a className="btn-floating blue-gradient"
                                        data-toggle="tooltip" data-placement="top"
                                        title=""
                                        data-original-title="Add to Cart"
                                        onClick={() => this.onAddToCart(product)}
                                    >
                                        <button type="button" className="btn btn-danger">Add To cart</button>
                                        {/* <i className="fa fa-shopping-cart"></i> */}
                                    </a>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
        
            //     <div class="row mt-100">

            //     <div class="col-md-4">Content Goes Here</div>
            //     <div class="col-md-4">Content Goes Here</div>
            //     <div class="col-md-4">Content Goes Here</div>

            // </div>

        );
    }
    onAddToCart = (product) => {
        this.props.onAddToCart(product);
        this.props.onChangeMessage(Message.MSG_ADD_TO_CART_SUCCESS);
    }

}

export default Product;
