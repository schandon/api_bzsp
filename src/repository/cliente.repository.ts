import { PrismaClient } from '@prisma/client';
import { ICliente } from '../dto/cliente.dto';

const prisma = new PrismaClient();

export class ClienteRepository {
  async findAll(): Promise<ICliente[]> {
    return await prisma.cliente.findMany();
  }

  async findById(id: string): Promise<ICliente['id'] | null> {
    return await prisma.cliente.findUnique({
      where: { id },
    });
  }

  async save(data: ICliente): Promise<ICliente> {
    return await prisma.cliente.create({
      data: {
        id: data.id,
        nome: data.nome,
        data_nascimento: data.data_nascimento,
        cpf: data.cpf,
        cep: data.cep,
        endereco: data.endereco,
        bairro: data.bairro,
        cidade: data.cidade,
        estado: data.estado,
        telefone: data.telefone,
        celular: data.celular,
      },
    });
  }

  async delete(id: string): Promise<void> {
    return await prisma.cliente.delete({ where: { id } });
  }

  async update(id: string, data: ICliente): Promise<ICliente> {
    return await prisma.cliente.update({ where: { id }, data });
  }
}
