# Chamber action

Get your secrets from AWS SSM ParameterStore to your GitHub Actions workspace safely.

## Usage

```
jobs:
  your-job:
    steps:
      - uses: cmygray/chamber-action@master
        id: chamber
        env:
          AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
          AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
        with:
          service: your-parameter-store-service-name
        
      - name: write dotenv
        run: |
          echo ${{ steps.chamber.outputs.secrets }} > .env
```
