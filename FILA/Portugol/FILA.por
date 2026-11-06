
programa {
    funcao inicio() {
        inteiro fila[25]
        inteiro quantidade = 0
        inteiro opcao, valor, i

        faca {
            escreva("\n===== MENU DA FILA =====\n")
            escreva("1 - Adicionar\n")
            escreva("2 - Remover\n")
            escreva("3 - Limpar fila\n")
            escreva("4 - Listar elementos\n")
            escreva("5 - Verificar se esta vazia\n")
            escreva("6 - Sair\n")
            escreva("Escolha uma opcao: ")
            leia(opcao)

            escolha (opcao) {

                caso 1:
                    se (quantidade < 25) {
                        escreva("Digite o valor: ")
                        leia(valor)

                        fila[quantidade] = valor
                        quantidade = quantidade + 1

                        escreva("Elemento adicionado ao final da fila!\n")
                    } senao {
                        escreva("Fila cheia! Nao e possivel adicionar.\n")
                    }
                    pare

                caso 2:
                    se (quantidade > 0) {
                        valor = fila[0]
                        escreva("Elemento removido: ", valor, "\n")

                        para (i = 0; i < quantidade - 1; i++) {
                            fila[i] = fila[i + 1]
                        }

                        quantidade = quantidade - 1
                    } senao {
                        escreva("Fila vazia! Nada para remover.\n")
                    }
                    pare

                caso 3:
                    quantidade = 0
                    escreva("Fila limpa!\n")
                    pare

                caso 4:
                    se (quantidade == 0) {
                        escreva("Fila vazia!\n")
                    } senao {
                        escreva("Elementos do inicio para o final:\n")

                        para (i = 0; i < quantidade; i++) {
                            escreva(fila[i], "\n")
                        }
                    }
                    pare

                caso 5:
                    se (quantidade == 0) {
                        escreva("A fila esta vazia.\n")
                    } senao {
                        escreva("A fila nao esta vazia.\n")
                    }
                    pare

                caso 6:
                    escreva("Encerrando o programa...\n")
                    pare

                caso contrario:
                    escreva("Opcao invalida!\n")
                    pare
            }

        } enquanto (opcao != 6)
    }
}
