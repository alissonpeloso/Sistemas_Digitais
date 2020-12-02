


module testbench;

reg signed [7:0] x;
reg signed [15:0] a;
reg signed [15:0] b;
reg signed [15:0] c;
wire signed [15:0] y;
reg signed [15:0] expected;

reg clock = 0, enable = 0, reset = 0;

wire valid, ready;


/* este modulo eh falso, precisa substituir pelo trabalho final */
fake fake1(clock, x, a, b, c, enable, reset, y, ready, valid);

always #1 clock <= ~clock;

integer file, test, r;

/*
  Este always captura os valores de x, a, b e c 
  do arquivo 'input.txt' e passa para os registradores
  correspondentes, que alimentam o modulo do trabalho final.

  Ele executa quando o sinal 'enable' passa de 0 para 1.
*/
always @(posedge enable) begin
    r = $fscanf(file, "%d %d %d %d", x, a, b, c);
end


/*
  Este always captura o valor de saida do modulo, 
  e compara com o valor esperado, obtido do arquivo 'output.txt'
  
  Ele executa quando o sinal 'valid' passa de 0 para 1.
*/
always @(posedge valid) begin
    r = $fscanf(test, "%d", expected);
    if (expected !== y) begin
        $display("Erro: esperava %d, recebi %d.", expected, y);
        $finish;
    end
end

/*

   Este initial se encarrega de:
   
   1. A atribuicao do sinal de reset.
   2. Abertura dos arquivos de teste.
   3. Atribuicao do sinal de controle 'enable'.
   4. Espera pelo sinal de controle 'valid'.
   5. Espera pelo sinal de controle 'ready'.

*/
initial begin
    $dumpvars;
    
    reset <= 1;

    #10;

    reset <= 0;

    file = $fopenr("input.txt");
    test = $fopenr("output.txt");

    while (!$feof(file)) begin 

        #10;

        enable <= 1;

        #2;

        enable <= 0;

        while(!valid)  #1;
        while(!ready)  #1;

    end
    $display("Resultado nota 10.");
    $finish;
end



endmodule