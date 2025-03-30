export interface ICliente {
  id: string;
  nome: string;
  data_nascimento?: Date;
  cpf: string;
  cep: string;
  endereco: string;
  bairro: string;
  cidade: string;
  estado: string;
  telefone?: string;
  celular?: string;
  updated_at?: Date;
  created_at?: Date;
}
