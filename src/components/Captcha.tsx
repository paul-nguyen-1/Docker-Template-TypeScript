import React from 'react'
import './Captcha.scss'

function Captcha() {
  //Map out arr of images to store in grid
  const captchaImages: string[] = new Array(9)
    .fill(null)
    .map((value, index) => {
      return `/api/captcha-image?index=${index}.png`;
    });

  return (
    <div className="captchaContainer">
      <h2>Select All the Dogs:</h2>
      <div className="captchaImages">
        {captchaImages.map((image, index) => (
          <React.Fragment key={index}>
            <div>
              <img src={image} alt="Captcha Image" />
            </div>
          </React.Fragment>
        ))}
      </div>
    </div>
  );
}

export default Captcha