import logo from './logo.svg';
import './App.css';
import HelloCls from './components/HelloCls';
import HelloFun from './components/HelloFun';
import ComplexCls from './components/ComplexCls';
import ComplexFun from './components/ComplexFun';
import { One, Three, Two }  from './components/multiplecomp';
import PropsCls from './components/PropsCls';
import PropsFun from './components/PropsFun';
import CompStyleCls from './components/CompStyleCls';
import StateCls from './components/StateCls';
import StateFn from './components/StateFn';
import ModifyStyle from './components/ModifyStyle';
import ToggleImage from './components/ToggleImage';
import ArrayAddition from './components/ArrayAddition';
import EmpForm from './components/EmpForm';
import { Link, Route, Routes } from 'react-router-dom';
import HomeComp from './components/HomeComp';
import WrongUrl from './components/WrongUrl';
import MountingPhase from './components/MountingPhase';
import UpdatingPhase from './components/UpdatingPhase';
import UsingEffectComp from './components/UsingEffectComp';
import GetEmps from './components/GetEmps';
import FormValidation from './components/FormValidation';

function App() {
  return (
    <div>
      <header>
        {/* <img src={logo} className="App-logo" alt="logo" /> 
        <p>
          Edit <code>src/App.js</code> and save to reload.
        </p>
        <a
          className="App-link"
          href="https://reactjs.org"
          target="_blank"
          rel="noopener noreferrer"
        >
          Learn React
        </a>  
        <h1> Welcome to React App </h1>
        <HelloCls />
        <HelloFun  /> 
        <ComplexCls />
        <ComplexFun /> 
        <One /> 
        <Two /> 
        <Three /> 
        <PropsCls nm="Amit" age="uuu" />
        <PropsFun  /> 
        <CompStyleCls /> 
        <StateCls />
        <StateFn />
        <ModifyStyle /> 
        <ToggleImage /> 
        <ArrayAddition /> 
        <EmpForm /> */}

        <ul className="nav navbar">
            <li className="nav-item">              
                <Link to="/hello" className="nav-link">Hello</Link>
            </li>
            <li className="nav-item">
                <Link to="/complex" className="nav-link">Complex</Link>               
            </li>
            <li className="nav-item">
                <Link to="/modifyStyle" className="nav-link">Modify Style</Link>
            </li>
            <li className="nav-item">
                <Link to="/empform" className="nav-link">Emp form</Link>
            </li>
            <li className="nav-item">
                <Link to="/lifecycle" className="nav-link">Life cycle</Link>
            </li>
        </ul>
        <Routes>
          <Route path="/" element={ <HomeComp/> }  />
          <Route path="/hello" element={ <HelloCls /> } />
          <Route path="/complex" element={<ComplexFun /> } />
          <Route path="/modifyStyle" element={ <ModifyStyle/>} />
          <Route path="/empform" element={<FormValidation />} />
          <Route path="/lifecycle" element={ <UsingEffectComp />  } />
          <Route path="/array" element={<ArrayAddition/>} />
          <Route path="*" element={ <WrongUrl/> } />
        </Routes>
      </header>
    </div>
  );
}

export default App;
