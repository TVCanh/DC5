import React, { Component } from 'react';
import { getOneOrder } from '../../util/APIUtils';
import OrderDetailItem from '../../components/OrderDetailItem/OrderDetailItem';
import Detail from '../../components/Detail/Detail' ;

class OrderDetailPage extends Component {

    constructor(props) {
        super(props);
        this.state = {
            items: []
        };
    }

    componentDidMount() {
        var {match} =this.props
        var idRequest = match.params.idOrder;
     //   debugger
        getOneOrder(idRequest)
            .then(res => {
                console.log(res);
                this.setState({
                    items: res.items
                });
            }).catch(err => {
                console.log(err);
            })
    }

    render() {
        //var { products } = this.props;
        var { items } = this.state;
        console.log(this.state);
        console.log(items);
        
        return (
            <div className="col-xs-12 col-sm-12 col-md-12 col-lg-12 mt-100">
                
                <Detail>
                    {this.showOrder(items)}
                </Detail>
            </div>
        );
    }

    showOrder(items) {
        var result = null;
        if (items.length > 0) {
            result = items.map((item, index) => {
                console.log(items);
                
                return (
                    <OrderDetailItem
                        key={index}
                        item={item}
                        index={index}
                       // onDelete={this.onDelete}
                    />
                );
            });
        }
        return result;
    }
}

export default OrderDetailPage;
