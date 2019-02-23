import React, { Component } from 'react';
import ReceiptItem from '../../components/Receipt/ReceiptItem';
import ReceiptList from '../../components/Receipt/ReceiptList';

class OrderInfo extends Component {
                                       
   render() {
         var Product = this.props.items ;
         return (
            <div>
                <div className="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <ReceiptList>
                        {this.showProducts(Product)}
                        {this.props.total}
                    </ReceiptList>

                </div>

            </div>
        );
    }

    showProducts(Product) {
        var result = null;
        if (Product.length > 0) {
            result = Product.map((items, index) => {
                return (
                    <ReceiptItem
                        key={index}
                        order={items}
                        index={items}
                    />
                );
            });
        }
        return result;
    }
    
}

export default OrderInfo;
