curl --location 'https://api.openai.com/v1/chat/completions' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer $OPENAI_API_KEY' \
--header 'Cookie: __cf_bm=rDPSoanYc3F7JCykSRBn0MyV4oYjPy6OkyB9euT.Joc-1783863675.86373-1.0.1.1-dGHrKv3.N5jiTC9qaxsf.IPQGfH5x.Zrck5h7441XVntZic3hPHCibuOvh545PomdGPDlgxXZXSI1k7I_qrEjoQKNnjrQqbsacYla5RKGnxPsDlF_M4JoDzMw476iBep' \
--data '{
  "model": "gpt-5.6-luna",
  "messages": [
    {
      "role": "system",
      "content": "You are an expert B2B sales research assistant for Yellow House Systems."
    },
    {
      "role": "user",
      "content": "Provide a brief 2-sentence summary of what the company '\''Stripe'\'' does and their primary target audience."
    }
  ]
}'