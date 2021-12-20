import React, { useState, useEffect, Fragment } from 'react'
import axios from 'axios'
import Place from './Place'

const Places = () => {
  const [places, setPlaces] = useState([])

  useEffect(() => {
    //get all places from api
    axios.get('/api/v1/places.json')
    .then( resp => {
      setPlaces(resp.data)
    })
    .catch( resp => console.log(resp))

    //update places in state
  }, [places.length])

  const list = places.map( place => {
    return (
    <Place 
      key={place.address} 
      data={place}
    />)
  })

  return (
    <Fragment>
      <h1>Ouais gros c'est fatal bazooka</h1>
      <ul>{list}</ul>
    </Fragment>
  )
}

export default Places