import { useState } from 'react'
import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import './App.css'
import json from '../model/divisiones/abilities.json';

function App() {
  const [count, setCount] = useState(0)
  const abilis = JSON.parse(json.abilities);
  const ability = (ability:any) => { 
    return <p>{ ability }</p>;
  }

  return (
    <div className="App">
      {abilities.map}
    </div>
  )
}

export default App
