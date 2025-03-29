-- AlterTable
ALTER TABLE "produto" ALTER COLUMN "quantidade_estoque" SET DATA TYPE DOUBLE PRECISION;

-- CreateTable
CREATE TABLE "devolucao" (
    "id" TEXT NOT NULL,
    "fk_venda" TEXT NOT NULL,
    "fk_produto" INTEGER NOT NULL,
    "quantidade" DOUBLE PRECISION NOT NULL,
    "motivo" TEXT,
    "data_devolucao" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "devolucao_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "devolucao" ADD CONSTRAINT "devolucao_fk_venda_fkey" FOREIGN KEY ("fk_venda") REFERENCES "venda"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "devolucao" ADD CONSTRAINT "devolucao_fk_produto_fkey" FOREIGN KEY ("fk_produto") REFERENCES "produto"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
