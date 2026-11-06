
programa {
    funcao inicio() {
        inteiro pilha[20]
        inteiro topo = -1
        inteiro opcao, valor, i

        faca {
            escreva("\n===== MENU DA PILHA =====\n")
            escreva("1 - Empilhar\n")
            escreva("2 - Desempilhar\n")
            escreva("3 - Limpar pilha\n")
            escreva("4 - Listar elementos\n")
            escreva("5 - Verificar se esta vazia\n")
            escreva("6 - Sair\n")
            escreva("Escolha uma opcao: ")
            leia(opcao)

            escolha (opcao) {

                caso 1:
                    se (topo < 19) {
                        escreva("Digite o valor: ")
                        leia(valor)

                        topo = topo + 1
                        pilha[topo] = valor

                        escreva("Elemento empilhado!\n")
                    } senao {
                        escreva("Pilha cheia!\n")
                    }
                    pare

                caso 2:
                    se (topo >= 0) {
                        valor = pilha[topo]
                        topo = topo - 1

                        escreva("Elemento removido: ", valor, "\n")
                    } senao {
                        escreva("Pilha vazia!\n")
                    }
                    pare

                caso 3:
                    topo = -1
                    escreva("Pilha limpa!\n")
                    pare

                caso 4:
                    se (topo == -1) {
                        escreva("Pilha vazia!\n")
                    } senao {
                        escreva("Elementos do topo para a base:\n")

                        para (i = topo; i >= 0; i = i - 1) {
                            escreva(pilha[i], "\n")
                        }
                    }
                    pare

                caso 5:
                    se (topo == -1) {
                        escreva("A pilha esta vazia.\n")
                    } senao {
                        escreva("A pilha nao esta vazia.\n")
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
