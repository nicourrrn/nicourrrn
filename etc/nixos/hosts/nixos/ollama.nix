{ flake-packages, pkgs, ...}:
{
  # services.ollama = {
  #   enable = true;
  #   loadModels = ["gemma3:4b" "llama3.1:8b" "qwen3-vl:8b"];
  #   package = flake-packages.nixified-ai.packages.${pkgs.system}.ollama-cuda;
  # };

  # services.open-webui ={
  #   enable = true;
  #   environment = {
  #     OLLAMA_API_BASE_URL = "http://127.0.0.1:11434/api";
  #     OLLAMA_BASE_URL = "http://127.0.0.1:11434";
  #   };
  # };
}
