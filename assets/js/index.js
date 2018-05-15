import React, {Component } from 'react'
import ReactDOM from 'react-dom'
import Home from './components/Home';

export default class App extends Component {
  render() {
    return (
      <div>
        <h1> Hi there! </h1>
        <Home />
      </div>

      )
    }
  }
  ReactDOM.render(<App />, document.getElementById('mount'))
