{...}:
{
  services.ollama = {
    enable = true;
    acceleration = "cuda";
    loadModels = ["gemma3:4b" "llama3.1:8b"];
  };

  # services.open-webui ={
  #   enable = true;
  #   environment = {
  #     OLLAMA_API_BASE_URL = "http://127.0.0.1:11434/api";
  #     OLLAMA_BASE_URL = "http://127.0.0.1:11434";
  #   };
  # };
}
