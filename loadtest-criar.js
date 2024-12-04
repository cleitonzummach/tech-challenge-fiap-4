import http from 'k6/http';
import faker from "k6/x/faker";

export const options = {
    vus: 10, // Número de usuários virtuais (virtual users)
    duration: '30s', // Duração do teste
    //stages: [
    //    { duration: '10s', target: 10 }, // Rampa para 10 usuários em 10 segundos
    //    { duration: '20s', target: 100 }, // Rampa para 100 usuários em 20 segundos
    //],
    thresholds: {
        http_req_failed: ['rate<0.01'], // http errors should be less than 1%
        http_req_duration: ['p(95)<200'], // 95% of requests should be below 200ms
    }
};

export default function () {
    //let data = {
    //    "nome": "Nome",
    //    "ddd": "51",
    //    "telefone": "913170414",
    //    "email": "email@teste.com.br"
    //};

    let data = {
        "nome": faker.person.nome(),
        "ddd": faker.person.ddd(),
        "telefone": faker.person.telefone(),
        "email": faker.person.email()
    };

    http.post('http://localhost:5131/CriarContato', JSON.stringify(data), {
        headers: { 'Content-Type': 'application/json' }
    });
}