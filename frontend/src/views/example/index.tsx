import React, { useState, useEffect } from 'react';
import { ApiRequest } from '../../common/api-request';

const Example: React.FC = () => {
  const [message, setMessage] = useState('');

  const fetchData = async () => {
    const [error, data] = await ApiRequest('get', '/example/hello');

    if (error) {
      console.error('Error fetching data', error);
      return;
    }

    setMessage(data.message);
  }

  useEffect(() => {
    fetchData();
  }, []);

  return (
    <>
      <h1>{message}</h1>
    </>
  );
}

export default Example;
