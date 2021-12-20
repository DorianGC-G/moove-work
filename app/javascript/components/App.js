import React from "react";
import { Route, Routes, Switch } from "react-router-dom"

// Components
import Places from './Places/Places'
import Place from './Place/Place'
import Home from './Home/Home'

const App = () => {
  return (
    <Routes>
      <Route exact path="/" element={<Home />}/>
      <Route path="/places" element={<Places />}/>
      <Route exact path="/places/:id" element={<Place />}/>
    </Routes>
  )
}

export default App