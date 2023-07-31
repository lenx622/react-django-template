import React from 'react';
import ReactDOM from 'react-dom/client';
import { BrowserRouter, Route, Routes } from 'react-router-dom';

import Example from './views/example';
import NotFound from './views/not-found';

const root = ReactDOM.createRoot(document.getElementById('root') as Element | DocumentFragment);
root.render(
  <React.StrictMode>
    <BrowserRouter>
    <Routes>
      <Route index element={<Example />} />

      <Route path='*' element={<NotFound />} />
    </Routes>
    </BrowserRouter>
  </React.StrictMode>
);
