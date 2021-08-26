const LocalStorageService = (function () {
    var _service; function _getService() {
        if (!_service) {
            _service = this;
            return _service
        } return _service
    } function _init() {
        localStorage.setItem('access_token', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJodHRwczovL2xvY2FsaG9zdDo0NDMwMCIsInN1YiI6InNwdi1DSUZWVyIsImFjYyI6IlVzZXIiLCJhdWQiOiJQcm90ZWN0ZWRBcGkiLCJzY29wZSI6InByb3RlY3RlZC5yZWFkIiwidXNlci5yb2xlIjoic3VwZXJ2aXNvciIsIm5iZiI6MTYyNjg3MDI1MiwiZXhwIjoxNjU4NDA2MjUyLCJpYXQiOjE2MjY4OTU0NTJ9.oeWhrm-lt8mWAkSNhhFN7ywRCu4Wv8-N1KPMekDGQ2c');
        localStorage.setItem('refresh_token', 'n+EMpZETHBybat0qvG8v8T6m42te8WmllR/rj9I0vbE=');
    } function _setToken(tokenObj) {
        localStorage.setItem('access_token', tokenObj.access_token);
        localStorage.setItem('refresh_token', tokenObj.refresh_token);
    } function _getAccessToken() {
        return localStorage.getItem('access_token');
    } function _getRefreshToken() {
        return localStorage.getItem('refresh_token');
    } function _clearToken() {
        localStorage.removeItem('access_token');
        localStorage.removeItem('refresh_token');
    } return {
        getService: _getService,
        setToken: _setToken,
        getAccessToken: _getAccessToken,
        getRefreshToken: _getRefreshToken,
        clearToken: _clearToken,
        init: _init
    }
})();

Data = {};
Data.Input = {}

$(document).ready(function () {
    debugger;
    LocalStorageService.init();
});

var Form = {
    ClientCall: function () {
        Form.CreateAxiosResponseInterceptor();

        axios.get('https://localhost:44310/api/protected/Company/1')
            .then(function (response) {
                debugger;
                var result = response.data;

                if (result.isSuccess) {
                    alert(result.Name);
                }
                else {
                    location.reload();
                }
            })
            .catch(function (error) {
                debugger;
                console.log(error);
            })
            .then(function () {
            });
    },
    CreateAxiosResponseInterceptor() {
        // LocalstorageService
        const localStorageService = LocalStorageService.getService();
        LocalStorageService.init();
        const params = new URLSearchParams();
        params.append('grant_type', 'refresh_token');
        params.append('refresh_token', localStorageService.getRefreshToken());
        debugger;
        axios.post('https://localhost:44310/api/connect/token', params)
            .then(res => {
                debugger;
                if (res.status === 200) {
                    localStorageService.setToken(res.data);
                    axios.defaults.headers.common['Authorization'] = 'Bearer ' + localStorageService.getAccessToken();
                    return axios(originalRequest);
                }
            })

        // Add a request interceptor
        axios.interceptors.request.use(
            config => {
                const token = localStorageService.getAccessToken();
                if (token) {
                    config.headers['Authorization'] = 'Bearer ' + token;
                }

                return config;
            },
            error => {
                Promise.reject(error)
            });

        //Add a response interceptor
        axios.interceptors.response.use((response) => {
            return response
        }, function (error) {
            debugger;
            const originalRequest = error.config;

            if (error.response.status === 401 && originalRequest.url === 'https://localhost:44310/api/connect/token') {
                router.push('/login');
                return Promise.reject(error);
            }

            if (error.response.status === 401 && !originalRequest._retry) {
                originalRequest._retry = true;
                const refreshToken = localStorageService.getRefreshToken();
                return axios.post('https://localhost:44310/api/connect/token',
                    {
                        "refresh_token": refreshToken
                    })
                    .then(res => {
                        if (res.status === 200) {
                            localStorageService.setToken(res.data);
                            axios.defaults.headers.common['Authorization'] = 'Bearer ' + localStorageService.getAccessToken();
                            return axios(originalRequest);
                        }
                    })
            }

            return Promise.reject(error);
        });
    }
}