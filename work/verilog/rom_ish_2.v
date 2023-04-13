/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module rom_ish_2 (
    input [7:0] state,
    output reg [247:0] out
  );
  
  
  
  always @* begin
    
    case (state)
      8'h00: begin
        out = 248'h606062636465666768696a6b6c6d6e6f707172737475767778797a7b7c7d7e;
      end
      8'h01: begin
        out = 248'h606062636465666768696a6b6c6d6e6f707172737475767778797a7b7c7d60;
      end
      8'h02: begin
        out = 248'h606062636465666768696a6b6c6d6e6f707172737475767778797a7b7c60fe;
      end
      8'h03: begin
        out = 248'h606062636465666768696a6b6c6d6e6f707172737475767778797a7b60fd60;
      end
      8'h04: begin
        out = 248'h606062636465666768696a6b6c6d6e6f707172737475767778797a60fc6060;
      end
      8'h05: begin
        out = 248'h606062636465666768696a6b6c6d6e6f7071727374757677787960fb606060;
      end
      8'h06: begin
        out = 248'h606062636465666768696a6b6c6d6e6f70717273747576777860fa60606060;
      end
      8'h07: begin
        out = 248'h606062636465666768696a6b6c6d6e6f707172737475767760f96060606060;
      end
      8'h08: begin
        out = 248'h606062636465666768696a6b6c6d6e6f7071727374757660f8606060606060;
      end
      8'h09: begin
        out = 248'h606062636465666768696a6b6c6d6e6f70717273747560f7606060606060fe;
      end
      8'h0a: begin
        out = 248'h606062636465666768696a6b6c6d6e6f707172737460f6606060606060fdfe;
      end
      8'h0b: begin
        out = 248'h606062636465666768696a6b6c6d6e6f7071727360f5606060606060fcfd7e;
      end
      8'h0c: begin
        out = 248'h606062636465666768696a6b6c6d6e6f70717260f4606060606060fbfc7d60;
      end
      8'h0d: begin
        out = 248'h606062636465666768696a6b6c6d6e6f707160f3606060606060fafb7c60fe;
      end
      8'h0e: begin
        out = 248'h606062636465666768696a6b6c6d6e6f7060f2606060606060f9fa7b60fd60;
      end
      8'h0f: begin
        out = 248'h606062636465666768696a6b6c6d6e6f60f1606060606060f8f97a60fc60fe;
      end
      8'h10: begin
        out = 248'h606062636465666768696a6b6c6d6e60f0606060606060f7f87960fb60fd60;
      end
      8'h11: begin
        out = 248'h606062636465666768696a6b6c6d60ef606060606060f6f77860fa60fc6060;
      end
      8'h12: begin
        out = 248'h606062636465666768696a6b6c60ee606060606060f5f67760f960fb606060;
      end
      8'h13: begin
        out = 248'h606062636465666768696a6b60ed606060606060f4f57660f860fa60606060;
      end
      8'h14: begin
        out = 248'h606062636465666768696a60ec606060606060f3f47560f760f9606060607e;
      end
      8'h15: begin
        out = 248'h6060626364656667686960eb606060606060f2f37460f660f8606060607dfe;
      end
      8'h16: begin
        out = 248'h60606263646566676860ea606060606060f1f27360f560f7606060607cfd7e;
      end
      8'h17: begin
        out = 248'h606062636465666760e9606060606060f0f17260f460f6606060607bfc7d60;
      end
      8'h18: begin
        out = 248'h6060626364656660e8606060606060eff07160f360f5606060607afb7c6060;
      end
      8'h19: begin
        out = 248'h60606263646560e7606060606060eeef7060f260f46060606079fa7b606060;
      end
      8'h1a: begin
        out = 248'h606062636460e6606060606060edee6f60f160f36060606078f97a60606060;
      end
      8'h1b: begin
        out = 248'h6060626360e5606060606060eced6e60f060f26060606077f879606060607e;
      end
      8'h1c: begin
        out = 248'h60606260e4606060606060ebec6d60ef60f16060606076f778606060607d60;
      end
      8'h1d: begin
        out = 248'h606160e3606060606060eaeb6c60ee60f06060606075f677606060607c60fe;
      end
      8'h1e: begin
        out = 248'h6060e2606060606060e9ea6b60ed60ef6060606074f576606060607b60fd60;
      end
      8'h1f: begin
        out = 248'h60e1606060606060e8e96a60ec60ee6060606073f475606060607a60fc60fe;
      end
      8'h20: begin
        out = 248'he0606060606060e7e86960eb60ed6060606072f374606060607960fb60fd60;
      end
      8'h21: begin
        out = 248'h606060606060e6e76860ea60ec6060606071f273606060607860fa60fc607e;
      end
      8'h22: begin
        out = 248'h6060606060e5e66760e960eb6060606070f172606060607760f960fb607d60;
      end
      8'h23: begin
        out = 248'h60606060e4e56660e860ea606060606ff071606060607660f860fa607c607e;
      end
      8'h24: begin
        out = 248'h606060e3e46560e760e9606060606eef70606060607560f760f9607b607d60;
      end
      8'h25: begin
        out = 248'h6060e2e36460e660e8606060606dee6f606060607460f660f8607a607c607e;
      end
      8'h26: begin
        out = 248'h60e1e26360e560e7606060606ced6e606060607360f560f76079607b607dfe;
      end
      8'h27: begin
        out = 248'he0e16260e460e6606060606bec6d606060607260f460f66078607a607cfd60;
      end
      8'h28: begin
        out = 248'he06160e360e5606060606aeb6c606060607160f360f560776079607bfc60fe;
      end
      8'h29: begin
        out = 248'h6060e260e46060606069ea6b606060607060f260f460766078607afb60fd7e;
      end
      8'h2a: begin
        out = 248'h60e160e36060606068e96a606060606f60f160f3607560776079fa60fc7d60;
      end
      8'h2b: begin
        out = 248'he060e26060606067e869606060606e60f060f2607460766078f960fb7c6060;
      end
      8'h2c: begin
        out = 248'h60e16060606066e768606060606d60ef60f1607360756077f860fa7b60607e;
      end
      8'h2d: begin
        out = 248'he06060606065e667606060606c60ee60f0607260746076f760f97a60607d7e;
      end
      8'h2e: begin
        out = 248'h6060606064e566606060606b60ed60ef607160736075f660f87960607c7d60;
      end
      8'h2f: begin
        out = 248'h60606063e465606060606a60ec60ee607060726074f560f77860607b7c6060;
      end
      8'h30: begin
        out = 248'h606062e364606060606960eb60ed606f60716073f460f67760607a7b60607e;
      end
      8'h31: begin
        out = 248'h6061e263606060606860ea60ec606e60706072f360f5766060797a60607dfe;
      end
      8'h32: begin
        out = 248'h60e162606060606760e960eb606d606f6071f260f4756060787960607cfd7e;
      end
      8'h33: begin
        out = 248'he061606060606660e860ea606c606e6070f160f3746060777860607bfc7dfe;
      end
      8'h34: begin
        out = 248'h60606060606560e760e9606b606d606ff060f2736060767760607afb7cfd7e;
      end
      8'h35: begin
        out = 248'h606060606460e660e8606a606c606eef60f17260607576606079fa7bfc7d7e;
      end
      8'h36: begin
        out = 248'h6060606360e560e76069606b606dee60f07160607475606078f97afb7c7d60;
      end
      8'h37: begin
        out = 248'h60606260e460e66068606a606ced60ef7060607374606077f879fa7b7c6060;
      end
      8'h38: begin
        out = 248'h606160e360e560676069606bec60ee6f60607273606076f778f97a7b606060;
      end
      8'h39: begin
        out = 248'h6060e260e460666068606aeb60ed6e60607172606075f677f8797a606060fe;
      end
      8'h3a: begin
        out = 248'h60e160e3606560676069ea60ec6d60607071606074f576f77879606060fd60;
      end
      8'h3b: begin
        out = 248'he060e2606460666068e960eb6c60606f70606073f475f67778606060fc607e;
      end
      8'h3c: begin
        out = 248'h60e1606360656067e860ea6b60606e6f606072f374f57677606060fb607d60;
      end
      8'h3d: begin
        out = 248'he0606260646066e760e96a60606d6e606071f273f47576606060fa607c6060;
      end
      8'h3e: begin
        out = 248'h606160636065e660e86960606c6d606070f172f37475606060f9607b60607e;
      end
      8'h3f: begin
        out = 248'h6060626064e560e76860606b6c60606ff071f27374606060f8607a60607d7e;
      end
      8'h40: begin
        out = 248'h60616063e460e66760606a6b60606eef70f17273606060f7607960607c7d60;
      end
      8'h41: begin
        out = 248'h606062e360e5666060696a60606dee6ff07172606060f6607860607b7c6060;
      end
      8'h42: begin
        out = 248'h6061e260e4656060686960606ced6eef7071606060f5607760607a7b606060;
      end
      8'h43: begin
        out = 248'h60e160e3646060676860606bec6dee6f70606060f460766060797a606060fe;
      end
      8'h44: begin
        out = 248'he060e2636060666760606aeb6ced6e6f606060f3607560607879606060fdfe;
      end
      8'h45: begin
        out = 248'h60e16260606566606069ea6bec6d6e606060f2607460607778606060fcfd60;
      end
      8'h46: begin
        out = 248'he06160606465606068e96aeb6c6d606060f1607360607677606060fbfc6060;
      end
      8'h47: begin
        out = 248'h6060606364606067e869ea6b6c606060f0607260607576606060fafb6060fe;
      end
      8'h48: begin
        out = 248'h60606263606066e768e96a6b606060ef607160607475606060f9fa6060fd60;
      end
      8'h49: begin
        out = 248'h606162606065e667e8696a606060ee607060607374606060f8f96060fc6060;
      end
      8'h4a: begin
        out = 248'h6061606064e566e76869606060ed606f60607273606060f7f86060fb60607e;
      end
      8'h4b: begin
        out = 248'h60606063e465e66768606060ec606e60607172606060f6f76060fa60607d60;
      end
      8'h4c: begin
        out = 248'h606062e364e56667606060eb606d60607071606060f5f66060f960607c607e;
      end
      8'h4d: begin
        out = 248'h6061e263e46566606060ea606c60606f70606060f4f56060f860607b607dfe;
      end
      8'h4e: begin
        out = 248'h60e162e36465606060e9606b60606e6f606060f3f46060f760607a607cfd7e;
      end
      8'h4f: begin
        out = 248'he061e26364606060e8606a60606d6e606060f2f36060f6606079607bfc7d60;
      end
      8'h50: begin
        out = 248'h60e16263606060e7606960606c6d606060f1f26060f5606078607afb7c6060;
      end
      8'h51: begin
        out = 248'he06162606060e6606860606b6c606060f0f16060f46060776079fa7b6060fe;
      end
      8'h52: begin
        out = 248'h6061606060e5606760606a6b606060eff06060f36060766078f97a6060fdfe;
      end
      8'h53: begin
        out = 248'h60606060e460666060696a606060eeef6060f26060756077f8796060fcfd7e;
      end
      8'h54: begin
        out = 248'h606060e3606560606869606060edee6060f16060746076f7786060fbfc7d60;
      end
      8'h55: begin
        out = 248'h6060e2606460606768606060eced6060f06060736075f6776060fafb7c6060;
      end
      8'h56: begin
        out = 248'h60e1606360606667606060ebec6060ef6060726074f5766060f9fa7b606060;
      end
      8'h57: begin
        out = 248'he0606260606566606060eaeb6060ee6060716073f4756060f8f97a6060607e;
      end
      8'h58: begin
        out = 248'h606160606465606060e9ea6060ed6060706072f3746060f7f8796060607dfe;
      end
      8'h59: begin
        out = 248'h6060606364606060e8e96060ec60606f6071f2736060f6f7786060607cfd60;
      end
      8'h5a: begin
        out = 248'h60606263606060e7e86060eb60606e6070f1726060f5f6776060607bfc60fe;
      end
      8'h5b: begin
        out = 248'h606162606060e6e76060ea60606d606ff0716060f4f5766060607afb60fdfe;
      end
      8'h5c: begin
        out = 248'h6061606060e5e66060e960606c606eef706060f3f47560606079fa60fcfd7e;
      end
      8'h5d: begin
        out = 248'h60606060e4e56060e860606b606dee6f6060f2f37460606078f960fbfc7dfe;
      end
      8'h5e: begin
        out = 248'h606060e3e46060e760606a606ced6e6060f1f27360606077f860fafb7cfd7e;
      end
      8'h5f: begin
        out = 248'h6060e2e36060e6606069606bec6d6060f0f17260606076f760f9fa7bfc7dfe;
      end
      8'h60: begin
        out = 248'h60e1e26060e5606068606aeb6c6060eff07160606075f660f8f97afb7cfd60;
      end
      8'h61: begin
        out = 248'he0e16060e46060676069ea6b6060eeef7060606074f560f7f879fa7bfc607e;
      end
      8'h62: begin
        out = 248'he06060e36060666068e96a6060edee6f60606073f460f6f778f97afb607d60;
      end
      8'h63: begin
        out = 248'h6060e26060656067e8696060eced6e60606072f360f5f677f879fa607c6060;
      end
      default: begin
        out = 248'h00000000000000000000000000000000000000000000000000000000000000;
      end
    endcase
  end
endmodule
