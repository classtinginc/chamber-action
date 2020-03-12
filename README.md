# Chamber action

Get your secrets safely from AWS SystemsManager ParameterStore to your GitHub Actions workspace.

## Usage

```
jobs:
  your-job:
    steps:
      - uses: classtinginc/chamber-action@master
        id: chamber
        env:
          AWS_DEFAULT_REGION: ${{ secrets.AWS_DEFAULT_REGION }}
          AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
          AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
        with:
          args: export --format dotenv --output-file .env YOUR_SERVICE_NAME
```

more usages: https://github.com/segmentio/chamber#usage
