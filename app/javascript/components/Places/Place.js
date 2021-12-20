import React from 'react'
import { Wrapper, Image, Infos, Title, Address} from './Place.styles'

const Place = (props) => {
  return (
    <Wrapper>
      <Image src={props.data.image_url} />
      <Infos>
        <Address>
          <Title>{props.data.address}</Title>
          <Title>{props.data.city}</Title>
        </Address>
      </Infos>
    </Wrapper>
  )
}

export default Place