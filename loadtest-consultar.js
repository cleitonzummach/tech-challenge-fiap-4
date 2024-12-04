import http from 'k6/http';

export const options = {
    vus: 1000,
    duration: '30s',
    thresholds: {
        http_req_failed: ['rate<0.01'],
        http_req_duration: ['p(95)<200'],
    }
};

export default function () {
    for (let i = 0; i < 5; i++) {
        const res = http.get('http://localhost:5132/ConsultarContato?ddd=51');
        console.log(JSON.stringify(res.body));
    }
}