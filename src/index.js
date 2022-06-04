import express from 'express';
import ip from 'ip';
import dotenv from 'dotenv';
import cors from 'cors';

dotenv.config();

const PORT = process.env.SERVER_PORT || 3000;
const app = express();
app.use(cors({origin: '*'}));
app.use(express.json());

app.get('/', (req, res) => { res.send({message: 'Server is UP'}) });
console.log(process.env);
app.listen(PORT, () => console.log(`Server running on: ${ip.address()}:${PORT}`));
