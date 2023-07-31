import axios, { AxiosError, AxiosResponse, Method } from 'axios';

const apiClient = axios.create({
  baseURL: 'http://localhost:8000',
  timeout: 10000,
});

export async function ApiRequest(method: Method, url: string, data: any = null, headers: any = null): Promise<[AxiosError | Error | null, any]> {
  try {
    const response: AxiosResponse = await apiClient({
      method,
      url,
      data,
      headers,
    });
    return [null, response.data];
  } catch (error) {
    if (axios.isAxiosError(error)) {
      if (error.response) {
        return [error, null];
      }
      if (error.request) {
        return [error, null];
      }
    }
    return [new Error(error as string), null];
  }
}
