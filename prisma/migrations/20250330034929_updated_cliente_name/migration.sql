/*
  Warnings:

  - Added the required column `nome` to the `cliente` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "cliente" ADD COLUMN     "nome" TEXT NOT NULL;
