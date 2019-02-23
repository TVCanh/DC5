import React, { Component } from 'react';
import { Link } from 'react-router-dom';

class ProductItem extends Component {

    onDelete = (id) => {
        //console.log(id);
        if (confirm('Are you sure delete this Product?')) { //eslint-disable-line
            this.props.onDelete(id);
        }
    }

    render() {
        var { product, index } = this.props;
        return (
            <tr>
                <td>{product.id}</td>
                <td>{product.name}</td>
                <td>
                        <a href={`http://localhost/uploads/product-images/${product.id}/${product.id}` + '.jpg'}>
                                <img src={`http://localhost/uploads/product-images/${product.id}/${product.id}` + '.jpg'} className="img-thumbnail"width="50" height="50"/>
                        </a>
                   
                </td>
                <td>{product.price}</td>
                <td>{product.quantity}</td>
                <td>{product.type}</td>
                <td>{product.createdBy}</td>
                <td>
                    <Link
                        to={`/product/${product.id}/edit`}
                        className="btn btn-success mr-10"
                    >
                        Edit
                    </Link>
                    <button
                        type="button"
                        className="btn btn-danger"
                        onClick={() => this.onDelete(product.id)}
                    >
                        Delete
                    </button>
                </td>
            </tr>
        );
    }
}

export default ProductItem;
