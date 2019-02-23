import React, { Component } from 'react';

class Search extends Component {

    constructor(props) {
        super(props);
        this.state = {
            keyword: ''
        }
    }

    onChange = (e) => {
        const target = e.target;
		const inputName = target.name;
		const inputValue = target.value;
        this.props.onFilter(inputValue) ;
		this.setState({
			[inputName]: inputValue
        });
        console.log(this.state)
    }
    render() {
        var {keyword} = this.state
        return (
            <div className="filter-list">
                <form className="control">
                    <fieldset className="form-group">
                        <input
                            type="text"
                            className="form-control form-control-lg"
                            placeholder="Search"
                            name="keyword"
                            value={keyword}
                            onChange={this.onChange} />
                    </fieldset>
                </form>
            </div>
        );
    }
}

export default Search;
