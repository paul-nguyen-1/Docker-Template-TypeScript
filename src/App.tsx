import './App.scss';
import Captcha from './components/Captcha';
import Input from './components/Input';

function App() {
  return (
    <div className="App">
      <Input />
      <Captcha/>
      <button>Click to Send</button>
    </div>
  );
}

export default App;
