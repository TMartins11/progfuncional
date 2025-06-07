{-Considere a função escrita na linguagem C que calcula o máximo denominador comum entre
dois números:
    int mdc(int m, int n) {
        while ((m \% n) != 0) {
            int aux = m;
            m = n;
            n = aux \% n ;
        }
        return n ;
    }
-}

